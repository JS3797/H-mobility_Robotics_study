#include <iostream>
#include <eigen3/Eigen/Dense>

using namespace std;

int main()
{
    Eigen::Matrix3d matA;
    matA << 1, 2, 3,
            4, 5, 6,
            7, 8, 9;
    Eigen::Matrix3d matB;
    matB << 1, 2, 3,
            1, 2, 3,
            1, 2, 3;
    Eigen::Matrix3d matC = matA * matB;
    /* Result:
        6 12 18
        15 30 45
        24 48 72
    */

    std::cout << matC << "\n";
    
}