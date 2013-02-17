# include <iostream>
using namespace std;

    int main () {
	float a, b = 0;
	float rst = 0;
    
	cout << "Ingrese a y b (a b) \n";
	cin >> a >> b;
	rst = a / b;
	cout << a << "/" << b << "= " << rst << "\n";
	
	return 0;
    }