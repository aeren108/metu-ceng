#include <iostream>
#include <cmath>
#include "Helpers.h"


/*
 * Calculate cross product of vec3 a, vec3 b and return resulting vec3.
 */
Vec3 crossProductVec3(Vec3 a, Vec3 b)
{
    return Vec3(a.y * b.z - b.y * a.z, b.x * a.z - a.x * b.z, a.x * b.y - b.x * a.y);
}

/*
 * Calculate dot product of vec3 a, vec3 b and return resulting value.
 */
double dotProductVec3(Vec3 a, Vec3 b)
{
    return a.x * b.x + a.y * b.y + a.z * b.z;
}

/*
 * Find length (|v|) of vec3 v.
 */
double magnitudeOfVec3(Vec3 v)
{
    return sqrt(v.x * v.x + v.y * v.y + v.z * v.z);
}

/*
 * Normalize the vec3 to make it unit vec3.
 */
Vec3 normalizeVec3(Vec3 v)
{
    double d = magnitudeOfVec3(v);
    return Vec3(v.x / d, v.y / d, v.z / d);
}

/*
 * Return -v (inverse of vec3 v)
 */
Vec3 inverseVec3(Vec3 v)
{
    return Vec3(-v.x, -v.y, -v.z);
}

/*
 * Add vec3 a to vec3 b and return resulting vec3 (a+b).
 */
Vec3 addVec3(Vec3 a, Vec3 b)
{
    return Vec3(a.x + b.x, a.y + b.y, a.z + b.z);
}

/*
 * Subtract vec3 b from vec3 a and return resulting vec3 (a-b).
 */
Vec3 subtractVec3(Vec3 a, Vec3 b)
{
    return Vec3(a.x - b.x, a.y - b.y, a.z - b.z);
}

/*
 * Multiply each element of vec3 with scalar.
 */
Vec3 multiplyVec3WithScalar(Vec3 v, double c)
{
    return Vec3(v.x * c, v.y * c, v.z * c);
}

/*
 * Prints elements in a vec3. Can be used for debugging purposes.
 */
void printVec3(Vec3 v)
{
    std::cout << "(" << v.x << "," << v.y << "," << v.z << ")" << std::endl;
}

/*
 * Check whether vec3 a and vec3 b are equal.
 * In case of equality, returns 1.
 * Otherwise, returns 0.
 */
int areEqualVec3(Vec3 a, Vec3 b)
{

    /* if x difference, y difference and z difference is smaller than threshold, then they are equal */
    if ((ABS((a.x - b.x)) < EPSILON) && (ABS((a.y - b.y)) < EPSILON) && (ABS((a.z - b.z)) < EPSILON))
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

/*
 * Returns an identity matrix (values on the diagonal are 1, others are 0).
 */
Matrix4 getIdentityMatrix()
{
    Matrix4 result;

    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            if (i == j)
            {
                result.values[i][j] = 1.0;
            }
            else
            {
                result.values[i][j] = 0.0;
            }
        }
    }

    return result;
}

/*
 * Multiply matrices m1 (Matrix4) and m2 (Matrix4) and return the result matrix r (Matrix4).
 */
Matrix4 multiplyMatrixWithMatrix(Matrix4 m1, Matrix4 m2)
{
    Matrix4 result;
    double total;

    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            total = 0;
            for (int k = 0; k < 4; k++)
            {
                total += m1.values[i][k] * m2.values[k][j];
            }

            result.values[i][j] = total;
        }
    }

    return result;
}

/*
 * Multiply matrix m (Matrix4) with vector v (vec4) and store the result in vector r (vec4).
 */
Vec4 multiplyMatrixWithVec4(Matrix4 m, Vec4 v)
{
    double values[4];
    double total;

    for (int i = 0; i < 4; i++)
    {
        total = 0;
        for (int j = 0; j < 4; j++)
        {
            total += m.values[i][j] * v.getNthComponent(j);
        }
        values[i] = total;
    }

    return Vec4(values[0], values[1], values[2], values[3], v.colorId);
}

Matrix4 createTransform(const Translation& t) {
    double translate[4][4] = {
        {1.0, 0., 0., t.tx},
        {0., 1.0, 0., t.ty},
        {0., 0., 1.0, t.tz},
        {0., 0., 0., 1.0}
    };

    return Matrix4(translate);
}

Matrix4 createTransform(const Scaling& s) {
    double scale[4][4] = {
        {s.sx, 0., 0., 0.},
        {0., s.sy, 0., 0.},
        {0., 0., s.sz, 0.},
        {0., 0., 0., 1.0}
    };

    return Matrix4(scale);
}

Matrix4 createTransform(const Rotation& r) {
    Vec3 u(r.ux, r.uy, r.uz), v, w;
    u = normalizeVec3(u);

    if (u.x <= u.y && u.x <= u.z) {
        v.x = 0;
        v.y = -u.z;
        v.z = u.y;
    } else if (u.y <= u.x && u.y <= u.z){
        v.y = 0;
        v.x = u.z;
        v.z = -u.x;
    } else {
        v.z = 0;
        v.x = -u.y;
        v.y = u.x;
    }

    w = crossProductVec3(u, v);
    v = normalizeVec3(v);
    w = normalizeVec3(w);

    double m_vals[4][4] = {
        {u.x, u.y, u.z, 0.},
        {v.x, v.y, v.z, 0.},
        {w.x, w.y, w.z, 0.},
        {0., 0., 0., 1.0}
    };
    double m_inv_vals[4][4] = {
        {u.x, v.x, w.x, 0.},
        {u.y, v.y, w.y, 0.},
        {u.z, v.z, w.z, 0.},
        {0., 0., 0., 1.0}
    };
    double rotate_vals[4][4] = {
        {1.0, 0., 0., 0.},
        {0., cos(r.angle * PI/180.0), -sin(r.angle * PI/180.0), 0.},
        {0., sin(r.angle * PI/180.0), cos(r.angle * PI/180.0), 0.},
        {0., 0., 0., 1.0}
    };

    Matrix4 M(m_vals);
    Matrix4 M_inv(m_inv_vals);
    Matrix4 R(rotate_vals);

    Matrix4 r_m = multiplyMatrixWithMatrix(R, M);
    Matrix4 m_inv_rm = multiplyMatrixWithMatrix(M_inv, r_m);

    return m_inv_rm;
}

Vec3 translateVec3(Vec3 vertex, Translation translation) {
    double mat_vals[4][4] = {
        {1.0, 0., 0., translation.tx},
        {0., 1.0, 0., translation.ty},
        {0., 0., 1.0, translation.tz},
        {0., 0., 0., 1.0}
    };

    Matrix4 tran_matrix(mat_vals);
    Vec4 homogeneous(vertex.x, vertex.y, vertex.z, 1);

    homogeneous = multiplyMatrixWithVec4(tran_matrix, homogeneous);
    Vec3 result(homogeneous.x, homogeneous.y, homogeneous.z, vertex.colorId);

    return result;
}


Vec3 scaleVec3(Vec3 vertex, Scaling scale) {
    double mat_vals[4][4] = {
        {scale.sx, 0., 0., 0.},
        {0., scale.sy, 0., 0.},
        {0., 0., scale.sz, 0.},
        {0., 0., 0., 1.0}
    };

    Matrix4 scale_matrix(mat_vals);
    Vec4 homogeneous(vertex.x, vertex.y, vertex.z, 1);

    homogeneous = multiplyMatrixWithVec4(scale_matrix, homogeneous);
    Vec3 result(homogeneous.x, homogeneous.y, homogeneous.z, vertex.colorId);

    return result;
}


Vec3 rotateVec3(Vec3 vertex, Rotation rotation) {
    Vec3 u(normalizeVec3(vertex));
    Vec3 v, w;
    Vec4 homogeneous(vertex.x, vertex.y, vertex.z, 1.0);
    Vec4 temp;

    if (u.x < u.y && u.x < u.z){
        v.x = 0;
        v.y = -u.z;
        v.z = u.y;
    } else if (u.y < u.x && u.y < u.z){
        v.y = 0;
        v.x = u.z;
        v.z = -u.x;
    } else if (u.z < u.y && u.z < u.x){
        v.z = 0;
        v.x = -u.y;
        v.y = u.x;
    }

    w = crossProductVec3(u, v);
    v = normalizeVec3(v);
    w = normalizeVec3(w);


    double m_vals[4][4] = {
        {u.x, u.y, u.z, 0.},
        {v.x, v.y, v.z, 0.},
        {w.x, w.y, w.z, 0.},
        {0., 0., 0., 1.0}
    };
    double m_inv_vals[4][4] = {
        {u.x, v.x, w.x, 0.},
        {u.y, v.y, w.y, 0.},
        {u.z, v.z, w.z, 0.},
        {0., 0., 0., 1.0}
    };
    double rotate_vals[4][4] = {
        {1.0, 0., 0., 0.},
        {0., cos(rotation.angle * PI/180.0), -sin(rotation.angle * PI/180.0), 0.},
        {0., sin(rotation.angle * PI/180.0), cos(rotation.angle * PI/180.0), 0.},
        {0., 0., 0., 1.0}
    };

    Matrix4 M(m_vals);
    Matrix4 M_inv(m_inv_vals);
    Matrix4 R(rotate_vals);

    temp = multiplyMatrixWithVec4(M, homogeneous);
    temp = multiplyMatrixWithVec4(R, temp);
    temp = multiplyMatrixWithVec4(M_inv, temp);

    Vec3 result(temp.x, temp.y, temp.z, vertex.colorId);

    return result;
}