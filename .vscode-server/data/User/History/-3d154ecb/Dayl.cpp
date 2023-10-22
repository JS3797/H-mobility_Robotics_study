#include <iostream>
#include <vector>

using namespace std;
using matrix = vector<vector<double>>;

matrix multiply(matrix A, matrix B)
{
    matrix C(A.size(), vector<double>(B[0].size(),0));
    for (int i = 0; i< A.size(); i++)
    {
        for (int j = 0; j < B[0].size(); j++)
        {
            for (int k = 0; k < A[0].size(); k++)
            {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    return C;
}