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
    ( 뒤에 작성할 내용 )

    Eigen::Matrix4d T03 = ( 뒤에 작성할 내용 );
    std::cout << T03 << std::endl;
    return 0;
}