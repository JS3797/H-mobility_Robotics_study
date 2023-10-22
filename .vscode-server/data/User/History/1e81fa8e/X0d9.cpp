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
    
    ( 뒤에 작성할 내용 )

    Eigen::Matrix4d T03 = ( 뒤에 작성할 내용 );
    std::cout << T03 << std::endl;
    return 0;
}