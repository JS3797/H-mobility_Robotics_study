# /MyMathLib/CmakeLists.txt

# static library
add_library(MyMath mysqrt.cpp mysquare.cpp)

# Compile option
target_compile_options(MyMath PRIVATE -Wall -Werror)