#include <iostream>                                              
#include <cctype>
#include "credit_function.h"
using namespace std;
 

int main(int argc, char* argv[])
{
    if(argc != 5){
        cout << "usage: " << argv[0] << " {M} {N} {i} {m}" << "\n";
        return 1;
    }
    
    cout << credit(argv[1], argv[2], argv[3], argv[4]) << "\n";
    return 0;
}