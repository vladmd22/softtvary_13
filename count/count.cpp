#include<iostream> 
using namespace std;
int credit(float M, float n, float i, float m)
{
//ждем назначенные переменные
//M-сумма кредита, n-кол-во платежей, i-% в долях единицы
//, m-кол-во произведенных платежей
 float PV, I, V;
 PV=M/n;
 I=(M-PV*m)*i; //V-величина платежа,PV-величина платежа тела кредита, I-%
 V=PV+I;
 return V;
}

int main(int argc, char* argv[])
{
    
    if(argc != 5){
        return 1;
    }
    
    double a = strtod(argv[1], NULL);
    double b = strtod(argv[2], NULL);
    double c = strtod(argv[3], NULL);
    double d = strtod(argv[4], NULL);
    
    cout << credit(a, b, c, d);
    return 0;
}