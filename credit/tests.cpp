#include <iostream>                                              
#include <cctype>
#include <stdexcept>
#include <cassert>
#include <cmath>
#include "credit_function.h"
using namespace std;

void testCreditFunction()
{
    // Test case 1
    float result1 = credit("150000", "12", "20", "1");
    assert(fabs(result1 - 2762500.0) < 1e-6);

    // Test case 2
    int result2 = credit("abc", "10", "5", "2");
    assert(result2 == -2);

    // Test case 3
    int result3 = credit("1000", "-10", "5", "2");
    assert(result3 == -3);
}

int main()
{
    // Run the test cases
    testCreditFunction();
    
    std::cout << "All tests passed!" << std::endl;

    return 0;
}
