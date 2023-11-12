#include "vector_utils.h"

parser::Vec3i operator+(const parser::Vec3i &rhs, const parser::Vec3i &lhs) {
    return {rhs.x + lhs.x, rhs.y + lhs.y, rhs.z + lhs.z};
}

parser::Vec3i operator-(const parser::Vec3i &rhs, const parser::Vec3i &lhs) {
    return {rhs.x - lhs.x, rhs.y - lhs.y, rhs.z - lhs.z};
}

parser::Vec3f operator+(const parser::Vec3f &rhs, const parser::Vec3f &lhs) {
    return {rhs.x + lhs.x, rhs.y + lhs.y, rhs.z + lhs.z};
}

parser::Vec3f operator-(const parser::Vec3f &rhs, const parser::Vec3f &lhs) {
    return {rhs.x - lhs.x, rhs.y - lhs.y, rhs.z - lhs.z};
}

parser::Vec3f operator-(const parser::Vec3f &opr) {
    return {-opr.x, -opr.y, -opr.z};
}

float operator*(const parser::Vec3f &rhs, const parser::Vec3f &lhs) {
    return rhs.x * lhs.x + rhs.y * lhs.y + rhs.z * lhs.z;
}

parser::Vec3f operator*(float a, const parser::Vec3f &lhs) {
    return {a * lhs.x, a * lhs.y, a * lhs.z};
}

parser::Vec3f operator*(const parser::Vec3f &rhs, float a) {
    return {rhs.x * a, rhs.y * a, rhs.z * a};
}

parser::Vec3f operator/(const parser::Vec3f &rhs, float a) {
    return {rhs.x / a, rhs.y / a, rhs.z / a};
}

bool operator==(const parser::Vec3f &rhs, const parser::Vec3f &lhs) {
    return rhs.x == lhs.x && rhs.y == lhs.y && rhs.z == lhs.z;
}

parser::Vec3f cross_product(const parser::Vec3f &vec1, const parser::Vec3f &vec2){
    return {vec1.y*vec2.z - vec1.z*vec2.y, vec1.z*vec2.x - vec1.x*vec2.z, vec1.x*vec2.y - vec1.y*vec2.x};
}

parser::Vec3f hadamard_product(const parser::Vec3f &vec1, const parser::Vec3f &vec2) {
    return {vec1.x*vec2.x, vec1.y*vec2.y, vec1.z*vec2.z};
}

parser::Vec3i from_vec3f(const parser::Vec3f &v) {
    return {(int) v.x, (int) v.y, (int) v.z};
}

parser::Vec3f from_vec3i(const parser::Vec3i &v) {
    return {(float) v.x, (float) v.y, (float) v.z};
}

float mag(const parser::Vec3f &v) {
    return sqrt(v*v);
}

parser::Vec3f norm(const parser::Vec3f &v) {
    return v / mag(v);
}

Matrix3f::Matrix3f() {

}

Matrix3f::Matrix3f(const parser::Vec3f &c1, const parser::Vec3f &c2, const parser::Vec3f &c3) {
    a = c1.x; b = c1.y; c = c1.z;
    d = c2.x; e = c2.y; f = c2.z;
    g = c3.x; h = c3.y; i = c3.z;
}

float Matrix3f::det() {
    return a*(e*i - h*f) + b*(g*f - d*i) + c*(d*h - e*g);  
}
