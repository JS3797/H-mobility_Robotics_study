#include <iostream>
#include "dh.hpp"

using namespace std;

int main(int argc, char* argv[]){
    int num_inputs = 6;
    if (argc != (num_inputs +1))
    {
        cout << "Invalid number of arguments. expected " << num_inputs << endl;
        return -1;
    }

    vector<double> theta;
    for (int i=1; i<=num_inputs; i++)
        theta.push_back(atof(argv[i]));

    double a2 = 1;
    double a3 = 1;
    double d3 = 0.2;
    double d4 = 0.2;

    Eigen::Matrix4d T06 =
        DH(0, 0, 0, theta1); *  // T01
        DH(0, L, 0, theta2);
        DH(0, L, 0, theta3);
        DH(EIGEN_PI, 0, d, 0);

    std::cout << T04 << std::endl;
    return 0;

}