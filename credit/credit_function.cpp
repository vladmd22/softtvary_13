#include <iostream>                                              
#include <cctype>
#include <cmath>
using namespace std;
 
int credit(std::string MM, std::string nn, std::string ii, std::string mm) {
  int M, n, i, m;
  try {
      M = std::stoi(MM);
      n = std::stoi(nn);
      i = std::stoi(ii);
      m = std::stoi(mm);
  } catch (const std::invalid_argument) {
        return -2; //"Please, type only numbers. I can't make calculations with such type of input..."
  }

  if ( (M < 0) || (n < 0) || (i < 0) || (m < 0)) {
      return -3; //"Please, type only numbers which are > 0. Now it contradicts the logic..."
  }
  int PV = M / n; 
  int I = (M - PV * m) * i;
  int V = PV + I;
  return V;
} 