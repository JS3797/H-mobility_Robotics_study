/* #include <iostream>
#include <cstdlib>
#include "mysquare.h"

int main(){
	std::cout << "Hello World" << std::endl;
	return 0;
}
*/

#include <iostream>
#include <cstdlib>
#include "mysquare.h"
#include "mysqrt.h"

int main (int argc, char *argv[])
[
	if (argc < 2)
	{
		std::cout << "Usage: " << argv[0] << " number" << std::endl;
		return 1;
	}
	double inputVal =atof(argv[1]);
	std::cout << "The squre of " << inputVal " is " << mysquare(inputVal)
			  << ", and its square root is " << mysqrt(inputVal) << std::endl;
	return 0;
]