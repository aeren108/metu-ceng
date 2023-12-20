#include <fstream>
#include <cstdio>
#include <cstdlib>
#include <iomanip>
#include <cstring>
#include <string>
#include <vector>
#include <cmath>
#include <iostream>

#include "tinyxml2.h"
#include "Triangle.h"
#include "Helpers.h"
#include "Scene.h"

using namespace tinyxml2;
using namespace std;

#define MIN(x, y) ((x < y) ? (x) : (y))
#define MAX(x, y) ((x > y) ? (x) : (y))


/*
	Parses XML file
*/
Scene::Scene(const char *xmlPath) {
	const char *str;
	XMLDocument xmlDoc;
	XMLElement *xmlElement;

	xmlDoc.LoadFile(xmlPath);

	XMLNode *rootNode = xmlDoc.FirstChild();

	// read background color
	xmlElement = rootNode->FirstChildElement("BackgroundColor");
	str = xmlElement->GetText();
	sscanf(str, "%lf %lf %lf", &backgroundColor.r, &backgroundColor.g, &backgroundColor.b);

	// read culling
	xmlElement = rootNode->FirstChildElement("Culling");
	if (xmlElement != NULL) {
		str = xmlElement->GetText();

		if (strcmp(str, "enabled") == 0) {
			this->cullingEnabled = true;
		} else {
			this->cullingEnabled = false;
		}
	}

	// read cameras
	xmlElement = rootNode->FirstChildElement("Cameras");
	XMLElement *camElement = xmlElement->FirstChildElement("Camera");
	XMLElement *camFieldElement;
	while (camElement != NULL) {
		Camera *camera = new Camera();

		camElement->QueryIntAttribute("id", &camera->cameraId);

		// read projection type
		str = camElement->Attribute("type");

		if (strcmp(str, "orthographic") == 0) {
			camera->projectionType = ORTOGRAPHIC_PROJECTION;
		} else {
			camera->projectionType = PERSPECTIVE_PROJECTION;
		}

		camFieldElement = camElement->FirstChildElement("Position");
		str = camFieldElement->GetText();
		sscanf(str, "%lf %lf %lf", &camera->position.x, &camera->position.y, &camera->position.z);

		camFieldElement = camElement->FirstChildElement("Gaze");
		str = camFieldElement->GetText();
		sscanf(str, "%lf %lf %lf", &camera->gaze.x, &camera->gaze.y, &camera->gaze.z);

		camFieldElement = camElement->FirstChildElement("Up");
		str = camFieldElement->GetText();
		sscanf(str, "%lf %lf %lf", &camera->v.x, &camera->v.y, &camera->v.z);

		camera->gaze = normalizeVec3(camera->gaze);
		camera->u = crossProductVec3(camera->gaze, camera->v);
		camera->u = normalizeVec3(camera->u);

		camera->w = inverseVec3(camera->gaze);
		camera->v = crossProductVec3(camera->u, camera->gaze);
		camera->v = normalizeVec3(camera->v);

		camFieldElement = camElement->FirstChildElement("ImagePlane");
		str = camFieldElement->GetText();
		sscanf(str, "%lf %lf %lf %lf %lf %lf %d %d",
			   &camera->left, &camera->right, &camera->bottom, &camera->top,
			   &camera->near, &camera->far, &camera->horRes, &camera->verRes);

		camFieldElement = camElement->FirstChildElement("OutputName");
		str = camFieldElement->GetText();
		camera->outputFilename = string(str);

		this->cameras.push_back(camera);

		camElement = camElement->NextSiblingElement("Camera");
	}

	// read vertices
	xmlElement = rootNode->FirstChildElement("Vertices");
	XMLElement *vertexElement = xmlElement->FirstChildElement("Vertex");
	int vertexId = 1;

	while (vertexElement != NULL) {
		Vec3 *vertex = new Vec3();
		Color *color = new Color();

		vertex->colorId = vertexId;

		str = vertexElement->Attribute("position");
		sscanf(str, "%lf %lf %lf", &vertex->x, &vertex->y, &vertex->z);

		str = vertexElement->Attribute("color");
		sscanf(str, "%lf %lf %lf", &color->r, &color->g, &color->b);

		this->vertices.push_back(vertex);
		this->colorsOfVertices.push_back(color);

		vertexElement = vertexElement->NextSiblingElement("Vertex");

		vertexId++;
	}

	// read translations
	xmlElement = rootNode->FirstChildElement("Translations");
	XMLElement *translationElement = xmlElement->FirstChildElement("Translation");
	while (translationElement != NULL) {
		Translation *translation = new Translation();

		translationElement->QueryIntAttribute("id", &translation->translationId);

		str = translationElement->Attribute("value");
		sscanf(str, "%lf %lf %lf", &translation->tx, &translation->ty, &translation->tz);

		this->translations.push_back(translation);

		translationElement = translationElement->NextSiblingElement("Translation");
	}

	// read scalings
	xmlElement = rootNode->FirstChildElement("Scalings");
	XMLElement *scalingElement = xmlElement->FirstChildElement("Scaling");
	while (scalingElement != NULL) {
		Scaling *scaling = new Scaling();

		scalingElement->QueryIntAttribute("id", &scaling->scalingId);
		str = scalingElement->Attribute("value");
		sscanf(str, "%lf %lf %lf", &scaling->sx, &scaling->sy, &scaling->sz);

		this->scalings.push_back(scaling);

		scalingElement = scalingElement->NextSiblingElement("Scaling");
	}

	// read rotations
	xmlElement = rootNode->FirstChildElement("Rotations");
	XMLElement *rotationElement = xmlElement->FirstChildElement("Rotation");
	while (rotationElement != NULL) {
		Rotation *rotation = new Rotation();

		rotationElement->QueryIntAttribute("id", &rotation->rotationId);
		str = rotationElement->Attribute("value");
		sscanf(str, "%lf %lf %lf %lf", &rotation->angle, &rotation->ux, &rotation->uy, &rotation->uz);

		this->rotations.push_back(rotation);

		rotationElement = rotationElement->NextSiblingElement("Rotation");
	}

	// read meshes
	xmlElement = rootNode->FirstChildElement("Meshes");

	XMLElement *meshElement = xmlElement->FirstChildElement("Mesh");
	while (meshElement != NULL) {
		Mesh *mesh = new Mesh();

		meshElement->QueryIntAttribute("id", &mesh->meshId);

		// read projection type
		str = meshElement->Attribute("type");

		if (strcmp(str, "wireframe") == 0) {
			mesh->type = WIREFRAME_MESH;
		} else {
			mesh->type = SOLID_MESH;
		}

		// read mesh transformations
		XMLElement *meshTransformationsElement = meshElement->FirstChildElement("Transformations");
		XMLElement *meshTransformationElement = meshTransformationsElement->FirstChildElement("Transformation");

		while (meshTransformationElement != NULL) {
			char transformationType;
			int transformationId;

			str = meshTransformationElement->GetText();
			sscanf(str, "%c %d", &transformationType, &transformationId);

			mesh->transformationTypes.push_back(transformationType);
			mesh->transformationIds.push_back(transformationId);

			meshTransformationElement = meshTransformationElement->NextSiblingElement("Transformation");
		}

		mesh->numberOfTransformations = mesh->transformationIds.size();

		// read mesh faces
		char *row;
		char *cloneStr;
		int v1, v2, v3;
		XMLElement *meshFacesElement = meshElement->FirstChildElement("Faces");
		str = meshFacesElement->GetText();
		cloneStr = strdup(str);

		row = strtok(cloneStr, "\n");
		while (row != NULL) {
			int result = sscanf(row, "%d %d %d", &v1, &v2, &v3);

			if (result != EOF)
				mesh->triangles.push_back(Triangle(v1, v2, v3));
			
			row = strtok(NULL, "\n");
		}
		mesh->numberOfTriangles = mesh->triangles.size();
		this->meshes.push_back(mesh);

		meshElement = meshElement->NextSiblingElement("Mesh");
	}
}

void Scene::assignColorToPixel(int i, int j, Color c) {
	this->image[i][j].r = c.r;
	this->image[i][j].g = c.g;
	this->image[i][j].b = c.b;
}

/*
	Initializes image with background color
*/
void Scene::initializeImage(Camera *camera) {
	if (this->image.empty()) {
		for (int i = 0; i < camera->horRes; i++) {
			vector<Color> rowOfColors;
			vector<double> rowOfDepths;

			for (int j = 0; j < camera->verRes; j++) {
				rowOfColors.push_back(this->backgroundColor);
				rowOfDepths.push_back(1.01);
			}

			this->image.push_back(rowOfColors);
			this->depth.push_back(rowOfDepths);
		}
	} else {
		for (int i = 0; i < camera->horRes; i++) {
			for (int j = 0; j < camera->verRes; j++) {
				assignColorToPixel(i, j, this->backgroundColor);
				this->depth[i][j] = 1.01;
				this->depth[i][j] = 1.01;
				this->depth[i][j] = 1.01;
			}
		}
	}
}

/*
	If given value is less than 0, converts value to 0.
	If given value is more than 255, converts value to 255.
	Otherwise returns value itself.
*/
int Scene::makeBetweenZeroAnd255(double value) {
	if (value >= 255.0)
		return 255;
	if (value <= 0.0)
		return 0;
	return (int)(value);
}

/*
	Writes contents of image (Color**) into a PPM file.
*/
void Scene::writeImageToPPMFile(Camera *camera) {
	ofstream fout;

	fout.open(camera->outputFilename.c_str());

	fout << "P3" << endl;
	fout << "# " << camera->outputFilename << endl;
	fout << camera->horRes << " " << camera->verRes << endl;
	fout << "255" << endl;

	for (int j = camera->verRes - 1; j >= 0; j--)
	{
		for (int i = 0; i < camera->horRes; i++)
		{
			fout << makeBetweenZeroAnd255(this->image[i][j].r) << " "
				 << makeBetweenZeroAnd255(this->image[i][j].g) << " "
				 << makeBetweenZeroAnd255(this->image[i][j].b) << " ";
		}
		fout << endl;
	}
	fout.close();
}

/*
	Converts PPM image in given path to PNG file, by calling ImageMagick's 'convert' command.
*/
void Scene::convertPPMToPNG(string ppmFileName) {
	string command;

	// TODO: Change implementation if necessary.
	command = "magick convert " + ppmFileName + " " + ppmFileName + ".png";
	system(command.c_str());
}

//v0, v1, v2 are in the canonical view volume
bool shouldCull(const Vec4& p0, const Vec4& p1, const Vec4& p2) {
	Vec3 u(p1.x - p0.x, p1.y - p0.y, p1.z - p0.z);
	Vec3 v(p2.x - p0.x, p2.y - p0.y, p2.z - p0.z);
	Vec3 n = normalizeVec3(crossProductVec3(u, v));

	return dotProductVec3(Vec3(p0.x, p0.y, p0.z, 1), n) < 0;
}

Matrix4 Scene::meshTransform(const Camera& camera, const Mesh& mesh) {
	Matrix4 mesh_t = getIdentityMatrix();
	for (int i = 0; i < mesh.numberOfTransformations; ++i) {
		if (mesh.transformationTypes[i] == 't') {
			Translation t = *translations[mesh.transformationIds[i]-1];
			mesh_t = multiplyMatrixWithMatrix(createTransform(t), mesh_t);
		} else if (mesh.transformationTypes[i] == 's') {
			Scaling s = *scalings[mesh.transformationIds[i]-1];
			mesh_t = multiplyMatrixWithMatrix(createTransform(s), mesh_t);
		} else if (mesh.transformationTypes[i] == 'r'){
			Rotation r = *rotations[mesh.transformationIds[i]-1];
			mesh_t = multiplyMatrixWithMatrix(createTransform(r), mesh_t);
		}
	}

	return mesh_t;
}

double fLine(Vec4 p, Vec4 v0, Vec4 v1) {
	return p.x * (v0.y - v1.y) + p.y * (v1.x - v0.x) + v0.x * v1.y - v0.y * v1.x;
}

/*

While rasterazing check if z value is less than the current pixel's depth value
if it is less then then proceed and update the depth value with the new z valye, 
if not then do not update the color and continue with the other pixels

*/

void Scene::rasterizeTriangle(Vec4 v0, Color c0, Vec4 v1, Color c1, Vec4 v2, Color c2, const Camera& camera) {
	int min_x = MIN(MIN(v0.x, v1.x), v2.x);
	int min_y = MIN(MIN(v0.y, v1.y), v2.y);
	int max_x = MAX(MAX(v0.x, v1.x), v2.x);
	int max_y = MAX(MAX(v0.y, v1.y), v2.y);

	min_x = min_x < 0 ? 0 : min_x;
	min_y = min_y < 0 ? 0 : min_y;
	min_x = min_x >= camera.horRes ? camera.horRes - 1 : min_x;
	min_y = min_y >= camera.verRes ? camera.verRes - 1 : min_y;

	max_x = max_x < 0 ? 0 : max_x;
	max_y = max_y < 0 ? 0 : max_y;
	max_x = max_x >= camera.horRes ? camera.horRes - 1 : max_x;
	max_y = max_y >= camera.verRes ? camera.verRes - 1 : max_y;

	for (int y = min_y; y <= max_y; ++y) {
		for (int x = min_x; x <= max_x; ++x) {
			Vec4 p(x, y, 0, 0);
			
			double alpha = fLine(p, v1, v2) / fLine(v0, v1, v2);
			double beta = fLine(p, v2, v0) / fLine(v1, v2, v0);
			double gamma = fLine(p, v0, v1) / fLine(v2, v0, v1);
			double z = alpha * v0.z + beta * v1.z + gamma * v2.z;

			if (alpha >= 0 && beta >= 0 && gamma >= 0 && depth[x][y] > z) {
				Color c = c0 * alpha + c1 * beta + c2 * gamma;
				assignColorToPixel(x, y, c);
				depth[x][y] = z;
			}
		}
	}
}

void Scene::rasterizeLine(Vec4 v0, Color c0, Vec4 v1, Color c1) {
	double m = (v1.y - v0.y) / (v1.x - v0.x);
	double z = v1.z < v0.z ? v1.z : v0.z;
	int incr = 1, x, y, d;
	Color dc, c;
	
	if (std::abs(m) <= 1) { //midpoint algorithm
		if (v1.x < v0.x) {
			Vec4 tmpv = v0;
			Color tmpc = c0;

			v0 = v1;
			v1 = tmpv;

			c0 = c1;
			c1 = tmpc;
		}

		if (v1.y < v0.y) incr = -1;

		y = v0.y; c = c0;
		dc = (c1 - c0) / (v1.x - v0.x);
		d = (v0.y - v1.y) + (incr * 0.5 * (v1.x - v0.x));
		for (x = v0.x; x < v1.x; ++x) {
			//Depth check
			if (depth[x][y] > z) {
				assignColorToPixel(x, y, c);
				depth[x][y] = z;
			}

			if (d * incr < 0) { // choose NE
                y += incr;
                d += (v0.y - v1.y) + (incr * (v1.x - v0.x));
            } else // choose E
                d += (v0.y - v1.y);

			c = c + dc;
		} 
	} else {
		if (v1.y < v0.y) {
			Vec4 tmpv = v0;
			Color tmpc = c0;

			v0 = v1;
			v1 = tmpv;

			c0 = c1;
			c1 = tmpc;
		}

		if (v1.x < v0.x) incr = -1;

		x = v0.x;
		c = c0;
        d = (v1.x - v0.x) + (incr * 0.5 * (v0.y - v1.y));
        dc = (c1 - c0) / (v1.y - v0.y);

		for (y = v0.y; y <= v1.y; y++) {
            //Depth check
			if (depth[x][y] > z) {
				assignColorToPixel(x, y, c);
				depth[x][y] = z;
			}

            if (d * incr > 0) {
                x += incr;
                d += (v1.x - v0.x) + (incr * (v0.y - v1.y));
            }
            else
                d += (v1.x - v0.x);
            c = c + dc;
        }
	}
}

bool isVisible(double denom, double numer, double &t_enter, double &t_leave){

	if (denom > 0) { // Potentially entering
		double t = numer / denom;
		
		if (t > t_leave) return false;
		else if (t > t_enter) t_enter = t;
	}

	else if (denom < 0) { // Potentially leaving
		double t = numer / denom;
		
		if (t < t_enter) return false;
		else if (t < t_leave) t_leave = t;
	}

	else if (numer > 0) { // Orthogonal to axis and outside scene
		return false;
	}

	return true;
}

bool clipLine(Vec4& v0, Color& c0, Vec4& v1, Color& c1) {
	// Derivatives over major axes
	double dx = v1.x - v0.x;
	double dy = v1.y - v0.y;
	double dz = v1.z - v0.z;

	double t_enter = 0;
	double t_leave = 1;
	bool visible = false;

	// Check if line passes through scene
	if (isVisible(dx, -1 - v0.x, t_enter, t_leave)){// Left
		if (isVisible(-dx, v0.x - 1, t_enter, t_leave)){// Right
			if (isVisible(dy, -1 - v0.y, t_enter, t_leave)){// Bottom
				if (isVisible(-dy, v0.y - 1, t_enter, t_leave)){// Top
					if (isVisible(dz, -1 - v0.z, t_enter, t_leave)){// Near
						if (isVisible(-dz, v0.z - 1, t_enter, t_leave)){// Far

							visible = true;

							if (t_leave < 1){// v1 is outside, set v1 on edge
								Vec4 tempV = v1;
								Color tempColor;
								v1.x = v0.x + dx*t_leave; v1.y = v0.y + dy*t_leave; v1.z = v0.z + dz*t_leave;

								double dist0 = sqrt((pow(v0.x - v1.x, 2)) + (pow(v0.y - v1.y, 2)) + (pow(v0.z - v1.z, 2)));
								double dist1 = sqrt((pow(tempV.x - v1.x, 2)) + (pow(tempV.y - v1.y, 2)) + (pow(tempV.z - v1.z, 2)));

								tempColor.r = (c0.r*dist1 + c1.r*dist0) / (dist0 + dist1);
								tempColor.g = (c0.g*dist1 + c1.g*dist0) / (dist0 + dist1);
								tempColor.b = (c0.b*dist1 + c1.b*dist0) / (dist0 + dist1);

								c1 = tempColor;
							}

							if (t_enter > 0){// v0 is outside, set v0 on edge
								Vec4 tempV = v0;
								Color tempColor;

								v0.x = v0.x + dx*t_enter; v0.y = v0.y  + dy*t_enter; v0.z = v0.z + dz*t_enter;

								double dist1 = sqrt((pow(v1.x - v0.x, 2)) + (pow(v1.y - v0.y, 2)) + (pow(v1.z - v0.z, 2)));
								double dist0 = sqrt((pow(tempV.x - v0.x, 2)) + (pow(tempV.y - v0.y, 2)) + (pow(tempV.z - v0.z, 2)));

								tempColor.r = (c0.r*dist1 + c1.r*dist0) / (dist0 + dist1);
								tempColor.g = (c0.g*dist1 + c1.g*dist0) / (dist0 + dist1);
								tempColor.b = (c0.b*dist1 + c1.b*dist0) / (dist0 + dist1);

								c0 = tempColor;
							}
						}
					}
				}
			}
		}
	}

	return visible;
}

void Scene::forwardRenderingPipeline(Camera *camera) {
	camera->setTransform();

	for (Mesh* mesh_ptr : meshes) {
		Mesh& mesh = *mesh_ptr;
		Matrix4 mesh_t = meshTransform(*camera, mesh);
		Matrix4 camera_t = multiplyMatrixWithMatrix(camera->cameraTransform, mesh_t);
		Matrix4 projection_t = multiplyMatrixWithMatrix(camera->projectionTransform, camera_t);

		for (Triangle& t : mesh.triangles) {
			const Vec3* v0 = vertices[t.vertexIds[0] - 1];
            const Vec3* v1 = vertices[t.vertexIds[1] - 1];
            const Vec3* v2 = vertices[t.vertexIds[2] - 1];
            Color c0 = *colorsOfVertices[v0->colorId - 1];
            Color c1 = *colorsOfVertices[v1->colorId - 1];
            Color c2 = *colorsOfVertices[v2->colorId - 1];

			//Project into canonical view
			Vec4 vt0 = multiplyMatrixWithVec4(projection_t, Vec4(v0->x, v0->y, v0->z, 1, v0->colorId));
			Vec4 vt1 = multiplyMatrixWithVec4(projection_t, Vec4(v1->x, v1->y, v1->z, 1, v1->colorId));
			Vec4 vt2 = multiplyMatrixWithVec4(projection_t, Vec4(v2->x, v2->y, v2->z, 1, v2->colorId));

			//If culling enabled do not process backward looking faces
			if (cullingEnabled && shouldCull(vt0, vt1, vt2)) continue;
			
			//Apply projection division
			vt0 /= vt0.t;
			vt1 /= vt1.t;
			vt2 /= vt2.t;

			//Check mesh mode (solid or wireframe)
			if (mesh.type) { // Solid
				//Apply viewport transformation
				vt0 = multiplyMatrixWithVec4(camera->viewportTransform, vt0);
				vt1 = multiplyMatrixWithVec4(camera->viewportTransform, vt1);
				vt2 = multiplyMatrixWithVec4(camera->viewportTransform, vt2);

				//std::cout << "v0: " << vt0 << " v1: " << vt1 << " v2: " << vt2 << std::endl;

				//Rasterize the triangle
				rasterizeTriangle(vt0, c0, vt1, c1, vt2, c2, *camera);
				
			} else { // Wireframe
				//TODO apply line clipping for each line in the triangle

				//Line 1
				Vec4 l1v0 = vt0; Color l1c0 = c0;
				Vec4 l1v1 = vt1; Color l1c1 = c1;

				//Line2
				Vec4 l2v0 = vt1; Color l2c0 = c1;
				Vec4 l2v1 = vt2; Color l2c1 = c2;

				//Line3
				Vec4 l3v0 = vt2; Color l3c0 = c2;
				Vec4 l3v1 = vt0; Color l3c1 = c0;

				bool l1inside = clipLine(l1v0, l1c0, l1v1, l1c1);
				bool l2inside = clipLine(l2v0, l2c0, l2v1, l2c1);
				bool l3inside = clipLine(l3v0, l3c0, l3v1, l3c1);

				//Apply viewport transformation to each vertex after clipping
				if (l1inside) {
					l1v0 = multiplyMatrixWithVec4(camera->viewportTransform, l1v0);
					l1v1 = multiplyMatrixWithVec4(camera->viewportTransform, l1v1);

					rasterizeLine(l1v0, l1c0, l1v1, l1c1);
				}

				if (l2inside) {
					l2v0 = multiplyMatrixWithVec4(camera->viewportTransform, l2v0);
					l2v1 = multiplyMatrixWithVec4(camera->viewportTransform, l2v1);

					rasterizeLine(l2v0, l2c0, l2v1, l2c1);
				}

				if (l3inside) {
					l3v0 = multiplyMatrixWithVec4(camera->viewportTransform, l3v0);
					l3v1 = multiplyMatrixWithVec4(camera->viewportTransform, l3v1);

					rasterizeLine(l3v0, l3c0, l3v1, l3c1);
				}
			}
		}
	}
}
