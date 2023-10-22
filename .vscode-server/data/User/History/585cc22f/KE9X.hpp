#include <eigen3/Eigen/Dense>

using namespace Eigen;

namespace Exponential
{
    // 3x3 skew-symmetric matrix of cross product
    Matrix3d cross_product_matrix(Vector3d w) { ... }

    // Rotation matrix via Rodrigues' formula
    Matrix3d rotation_matrix(Vector3d Sw, double theta) { ... }

    // 3x1 translation vector
    Vector3d translation_vector( Vector3d Sw, Vector3d Sv, double theta)

    // Transformation matrix from matrix exponential
    Matrix4d matrix_form(Vector3d Sw, Vector3d Sv, double theta) { ... }
}