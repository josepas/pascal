#include <iostream>
using namespace std;

    long long int* fmem;
    
    long long int fibonacci(long long int n) {
	
	if (n == 0) {
	    return 0;
	}
	if (n == 1) {
	    return 1;
	}
	if (fmem[n] != -1) {
	    return fmem[n];
	}
	fmem[n-1] = fibonacci(n-1);
	fmem[n-2] = fibonacci(n-2);
	return fmem[n-1] + fmem[n-2];
    }

    int main() {
	long long int n, h;
	n = 40;
	fmem = new long long int[n+1];
	for (long long int i = 0; i <= n; i++) {
	    fmem[i] = -1;
	}
	h = fibonacci(n);
	return 0;
    }
    