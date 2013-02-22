# include <iostream>
using namespace std;
    
    int* pigmem;
    int valor[50], peso[50];
    
    
    int MenorPeso (int n) {
	if (n == 0) {
	    return 0;
	}
	if (n > ) {
	    return 100000000;
	}
	
	
    }
    
    int main() {
	int F,E, = 0;
	short Types = 0;
	
	cout << "Ingrese el peso del cochino sin y con las monedas (S C) \n";
	cin >> F >> E;
	int pigmem[F-E];
	pigmem = new int[F-E];
	for (int x=0; x < F-E+1; x++) {
	    pigmem[x] = -1;
	}
	
	cout << "Ingrese el Numero de monedas distintas que existen \n";
	cin >> Types;

	for (short x=0; x < types; x++) {
	    cin >> valor[x] >> peso[x];
	}
	return 0;
    }
    