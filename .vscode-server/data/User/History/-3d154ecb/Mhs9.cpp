#include <iostream>
#include <vector>

using namespace std;
using matrix = vector<vector<double>>;

matrix multiply(matrix A, matrix B)
{
    matrix C(A.size(), vector<double>(B[0].size(),0));
}