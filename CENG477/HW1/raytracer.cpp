#include <iostream>
#include <cmath>
#include <thread>

#include "parser.h"
#include "ppm.h"
#include "vector_utils.h"

#define PV(v, name) std::cout << name << ": " << v.x << ", " << v.y << ", " << v.z << " MAGNITUDE: " << mag(v) << std::endl

typedef unsigned char RGB[3];

const parser::Vec3f zero = {0.0, 0.0, 0.0};


parser::Vec3f compute_color(const parser::Vec3f &pos, const parser::Vec3f &normal, const parser::Vec3f &camera, const parser::Material &material, parser::Scene &scene, int max_recursion);

parser::Vec3f compute_face_normal(const parser::Face &face, parser::Scene &scene) {
    parser::Vec3f &v1 = scene.vertex_data[face.v0_id - 1];
    parser::Vec3f &v2 = scene.vertex_data[face.v1_id - 1];
    parser::Vec3f &v3 = scene.vertex_data[face.v2_id - 1];

    return cross_product(v1 - v3, v2 - v3);
}

float intersects(parser::Vec3f origin, parser::Vec3f dir, const parser::Sphere &sphere, const parser::Scene &scene) {
    parser::Vec3f center = scene.vertex_data[sphere.center_vertex_id - 1];

    float determinant = (pow(dir * (origin - center), 2) - (dir * dir) * ((origin - center) * (origin - center) - pow(sphere.radius, 2)));
    if (determinant < 0) return -1.0;

    float t1 = (-dir * (origin - center) + sqrt(determinant)) / (dir*dir);
    float t2 = (-dir * (origin - center) - sqrt(determinant)) / (dir*dir);

    if (t1 < t2) return t1;
    return t2;
}

float intersects(parser::Vec3f origin, parser::Vec3f dir, const parser::Face &face, const parser::Scene &scene) {
    parser::Vec3f a = scene.vertex_data[face.v0_id - 1];
    parser::Vec3f b = scene.vertex_data[face.v1_id - 1];
    parser::Vec3f c = scene.vertex_data[face.v2_id - 1];
    
    Matrix3f ma(a - b, a - c, dir);
    Matrix3f mb(a - origin, a - c, dir);
    Matrix3f my(a - b, a - origin, dir);
    Matrix3f mt(a - b, a - c, a - origin);

    float det_ma = ma.det();
    float det_mb = mb.det();
    float det_my = my.det();
    float det_mt = mt.det();

    float beta = det_mb / det_ma;
    float gama = det_my / det_ma;
    float t = det_mt / det_ma;

    if (beta + gama > 1 || beta < 0 || gama < 0) return -1.0;
    return t;
}

parser::Vec3f compute_color(const parser::Vec3f &pos, const parser::Vec3f &normal, const parser::Vec3f &camera, const parser::Material &material, parser::Scene &scene, int max_recursion) {
    if (max_recursion < 0) return {0, 0, 0};
    parser::Vec3f color;

    color = hadamard_product(material.ambient, scene.ambient_light); //ambient light

    for (parser::PointLight light : scene.point_lights) {
        parser::Vec3f w = light.position - pos;
        parser::Vec3f w_norm = norm(w);
        parser::Vec3f h = norm((norm(camera - pos) + w_norm));

        bool shadow = false;

        for (parser::Sphere sphere : scene.spheres) {
            float t = intersects(pos, w_norm, sphere, scene);
            if (t > scene.shadow_ray_epsilon && t < mag(w)) {shadow = true; break;}
        } if (shadow) continue;

        for (parser::Triangle tri : scene.triangles) {
            float t = intersects(pos, w_norm, tri.indices, scene);
            if (t > scene.shadow_ray_epsilon && t < mag(w)) {shadow = true; break;}
        } if (shadow) continue;

        for (parser::Mesh mesh : scene.meshes) {
            for (parser::Face face : mesh.faces) {
                float t = intersects(pos, w_norm, face, scene);
                if (t > scene.shadow_ray_epsilon && t < mag(w)) {shadow = true; break;}
            }
            if (shadow) break;
        } if (shadow) continue;
        
        float cos_theta = w_norm * norm(normal);
        cos_theta = cos_theta < 0 ? 0 : cos_theta;

        float cos_alpha = h * norm(normal);
        cos_alpha = cos_alpha < 0 ? 0 : cos_alpha;

        color = color + hadamard_product(material.diffuse, cos_theta * light.intensity / (w*w)); //diffuse shading
        color = color + hadamard_product(material.specular, pow(cos_alpha, material.phong_exponent) * light.intensity / (w*w)); //specular shading
    }

    if (material.is_mirror && max_recursion >= 0) {
        int material_id = -1;
        float t = -1.0;

        parser::Vec3f source_dir = norm(camera - pos);
        parser::Vec3f ref_dir = norm(2*normal*(normal*source_dir) - source_dir);
        parser::Vec3f ref_normal, ref_color;

        for (parser::Sphere sphere : scene.spheres) {
            float temp = intersects(pos, ref_dir, sphere, scene);
            if (temp > scene.shadow_ray_epsilon && ((t > scene.shadow_ray_epsilon && temp < t) || (t < scene.shadow_ray_epsilon) && temp > scene.shadow_ray_epsilon)) {
                t = temp;
                material_id = sphere.material_id;
                ref_normal = norm((pos + ref_dir * t) - scene.vertex_data[sphere.center_vertex_id - 1]);
            }
        }

        for (parser::Triangle tri : scene.triangles) {
            float temp = intersects(pos, ref_dir, tri.indices, scene);
            if (temp > scene.shadow_ray_epsilon && ((t > scene.shadow_ray_epsilon && temp < t) || (t < scene.shadow_ray_epsilon) && temp > scene.shadow_ray_epsilon)) {
                t = temp;
                material_id = tri.material_id;
                ref_normal = norm(compute_face_normal(tri.indices, scene));
            }
        }

        for (parser::Mesh mesh : scene.meshes) {
            for (parser::Face face : mesh.faces) {
                float temp = intersects(pos, ref_dir, face, scene);

                if (temp > scene.shadow_ray_epsilon && ((t > scene.shadow_ray_epsilon && temp < t) || (t < scene.shadow_ray_epsilon) && temp > scene.shadow_ray_epsilon)) {
                    t = temp;
                    material_id = mesh.material_id;
                    ref_normal = norm(compute_face_normal(face, scene));
                }
            }
        }

        if (t > scene.shadow_ray_epsilon) {
            ref_color = compute_color(pos + ref_dir * t, ref_normal, pos, scene.materials[material_id - 1], scene, max_recursion - 1);
        } else {
            ref_color = max_recursion == scene.max_recursion_depth ? from_vec3i(scene.background_color) : from_vec3i({0,0,0});
            
        }

        color = color + hadamard_product(material.mirror, ref_color);
    }

    if (color.x > 255) color.x = 255;
    if (color.y > 255) color.y = 255;
    if (color.z > 255) color.z = 255;

    return color;
}

void compute_area(int startx, int starty, int area_width, int area_height, const parser::Camera &camera, parser::Scene &scene, unsigned char* image) {
    parser::Vec3f corner, m, u, v, w, origin; // Image plane corner, intersection, directions and position. Calculate for every camera
    int width = camera.image_width;
    int height = camera.image_height;
    float plane_width = camera.near_plane.y - camera.near_plane.x;
    float plane_height = camera.near_plane.w - camera.near_plane.z;
    float pixel_width = (float) plane_width / width;
    float pixel_height = (float) plane_height / height;
    
    origin = camera.position;
    v = camera.up;
    w = -camera.gaze;
    u = cross_product(v, w);

    //Calculate intersection with image plane (m)
    m = camera.position - w*camera.near_distance;

    //Calculate corner coordinate of the image plane;
    corner = m - u * camera.near_plane.y + v * camera.near_plane.w;
    
    //PV(u, "U"); PV(v, "V"); PV(w, "W");
    
    //int ir = startx*3 + starty*(width*3), ig = ir+1, ib = ig+1;

    for (int y = starty; y < starty + area_height; y++) {
        for (int x = startx; x < startx + area_width; x++) {
            parser::Vec3f dir, pixel, normal;
            
            int ir = x*3 + y*width*3, ig = ir+1, ib = ig+1;
            
            int material_id = -1;
            float t = -1.0;
    
            pixel = corner + u * (0.5 + x) * pixel_width - v * (0.5 + y) * pixel_height;
            dir = (pixel - origin)/mag(pixel-origin);

            for (parser::Sphere sphere : scene.spheres) {
                float temp = intersects(origin, dir, sphere, scene);
                if (temp > 0 && ((t > 0 && temp < t) || (t < 0) && temp > 0)) {
                    t = temp;
                    material_id = sphere.material_id;
                    normal = (origin + dir * t) - scene.vertex_data[sphere.center_vertex_id - 1];
                    normal = normal/mag(normal);
                }
            }

            for (parser::Triangle tri : scene.triangles) {
                float temp = intersects(origin, dir, tri.indices, scene);
                if (temp > 0 && ((t > 0 && temp < t) || (t < 0) && temp > 0)) {
                    t = temp;
                    material_id = tri.material_id;
                    normal = compute_face_normal(tri.indices, scene);
                    normal = normal/mag(normal);
                }
            }

            for (parser::Mesh mesh : scene.meshes) {
                for (parser::Face face : mesh.faces) {
                    float temp = intersects(origin, dir, face, scene);
                    if (temp > 0 && ((t > 0 && temp < t) || (t < 0) && temp > 0)) {
                        t = temp;
                        material_id = mesh.material_id;
                        normal = compute_face_normal(face, scene);
                        normal = normal/mag(normal);
                    }
                }
            }

            if (t > 0) {
                parser::Vec3f color = compute_color(origin + dir*t, normal, origin, scene.materials[material_id - 1], scene, scene.max_recursion_depth);

                image[ir] = color.x + 0.5;
                image[ig] = color.y + 0.5;
                image[ib] = color.z + 0.5;
            } else {
                image[ir] = scene.background_color.x;
                image[ig] = scene.background_color.y;
                image[ib] = scene.background_color.z;
            }

            //ir += 3; ig += 3; ib += 3;
        }
    }
}

int main(int argc, char* argv[]) {
    parser::Scene scene;

    scene.loadFromXml(argv[1]);

    for (parser::Camera camera : scene.cameras) {
        parser::Vec3f corner, m, u, v, w, origin; // Image plane corner, intersection, directions and position. Calculate for every camera
        int width = camera.image_width;
        int height = camera.image_height;
        float plane_width = camera.near_plane.y - camera.near_plane.x;
        float plane_height = camera.near_plane.w - camera.near_plane.z;
        float pixel_width = (float) plane_width / width;
        float pixel_height = (float) plane_height / height;   

        unsigned char* image = new unsigned char[width * height * 3];

        std::vector<std::thread> threads;
        //compute_area(0, 0, width, height/2, std::ref(camera), std::ref(scene), image);
        //compute_area(0, height/2, width, height/2, camera, scene, image);

        for (int y = 0; y < 8; ++y) {

            std::thread t(compute_area, 0, height * y / 8, width, y == 7 ? height - height * 7 / 8 : height / 8, std::ref(camera), std::ref(scene), image);
            threads.push_back(std::move(t));
   
        }
        
        for (int i = 0; i < 8; ++i) threads[i].join();

        write_ppm(camera.image_name.c_str(), image, width, height);
    }


    //
    //      TEST
    //
    /*
    std::cout << "Left: " << scene.cameras[0].near_plane.x << "\n";
    std::cout << "Right: " << scene.cameras[0].near_plane.y << "\n";
    std::cout << "Bottom: " << scene.cameras[0].near_plane.z << "\n";
    std::cout << "Top: " << scene.cameras[0].near_plane.w << "\n";
    std::cout << "Position x: " << scene.cameras[0].position.x << "\n";
    std::cout << "Position y: " << scene.cameras[0].position.y << "\n";
    std::cout << "Position z: " << scene.cameras[0].position.z << "\n";
    std::cout << "Distance: " << scene.cameras[0].near_distance << "\n";
    std::cout << "Gaze x: " << scene.cameras[0].gaze.x << "\n";
    std::cout << "Gaze y: " << scene.cameras[0].gaze.y << "\n";
    std::cout << "Gaze z: " << scene.cameras[0].gaze.z << "\n";
    */
    //
    //      TEST
    //

}
