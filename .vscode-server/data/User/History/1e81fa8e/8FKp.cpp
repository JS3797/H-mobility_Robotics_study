#include <iostream>
#include "poe.hpp"

using namespace std;

int main(int argc, char* argv[]) {
    int num_inputs = 3;
    if (argc != (num_inputs + 1))
    {
        cout << "Invalid number of arguments. expected " << num_inputs << endl;
        return -1;
    }
    
    double theta1 = atof(argv[1]);
    double theta2 = atof(argv[2]);
    double theta3 = atof(argv[3]);
    double L1 = 1;
    double L2 = 1;
    
    // Step 1. Zero configuration
    Eigen::Matrix4d M;
    M << 1, 0, 0, L1+L2,
         0, 1, 0,     0,
         0, 0, 1,     0,
         0, 0, 0,     1;

    Eigen::Matrix4d T03 = ( 뒤에 작성할 내용 );
    std::cout << T03 << std::endl;
    return 0;
}