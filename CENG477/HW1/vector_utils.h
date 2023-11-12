#pragma once

#include <cmath>
#include "parser.h"

struct Matrix3f {
    float a, d, g, b, e, h, c, f, i;

    Matrix3f();
    Matrix3f(const parser::Vec3f &c1, const parser::Vec3f &c2, const parser::Vec3f &c3);

    float det();
};

parser::Vec3i operator+(const parser::Vec3i &rhs, const parser::Vec3i &lhs);
parser::Vec3i operator-(const parser::Vec3i &rhs, const parser::Vec3i &lhs);
parser::Vec3f operator+(const parser::Vec3f &rhs, const parser::Vec3f &lhs);
parser::Vec3f operator-(const parser::Vec3f &rhs, const parser::Vec3f &lhs);
parser::Vec3f operator-(const parser::Vec3f &opr);
float operator*(const parser::Vec3f &rhs, const parser::Vec3f &lhs); //dot product
parser::Vec3f operator*(float a, const parser::Vec3f &lhs);
parser::Vec3f operator*(const parser::Vec3f &rhs, float a);
parser::Vec3f operator/(const parser::Vec3f &rhs, float a);
bool operator==(const parser::Vec3f &rhs, const parser::Vec3f &lhs);

parser::Vec3f cross_product(const parser::Vec3f &vec1, const parser::Vec3f &vec2);
parser::Vec3f hadamard_product(const parser::Vec3f &vec1, const parser::Vec3f &vec2);
parser::Vec3f norm(const parser::Vec3f &v);
float mag(const parser::Vec3f &v);

parser::Vec3i from_vec3f(const parser::Vec3f &v);
parser::Vec3f from_vec3i(const parser::Vec3i &v);
float det(const Matrix3f &m);