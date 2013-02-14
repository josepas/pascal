program Quiz03;


var
    n      : integer;     // Entrada: Número de iteraciones deseadas
    i      : integer;     // Número de la iteracióna Actual
    x      : double;      // Entrada: Valor de x
    term   : double;      // Termino actual de la serie
    eAprox : double;      // Salida: Valor aproximado de e^x

begin

    (* Entrada de Datos *)

    writeln;
    writeln('CALCULO DEL VALOR APROXIMADO DE e^x:');
    writeln;

    write('Introduzca el numero de iteraciones deseadas: ');
    readln(n);

    write('Introduzca el valor de x: ');
    readln(x);

    term := 1;
    eAprox := 1;

    {Precondicion:
	n > 0 /\ n < 21
    }
	
    {Invariante:
	i <= n
	eAprox = (%sigma i: 1<=i<=n: (%pi j:1<=j<=i:x)/(%pi j:1<=j<=i:i))
    }
    writeln('Numero de iteraciones = ', n, ''
    
    (* Calculos*)

    

    for i := 1 to n do
    begin
	term := term * (x / i);
	eAprox := eAprox + term;
    end;

    {Postcondicion:
	eAprox = (%sigma i: 1<=i<=n: (%pi j:1<=j<=i:x)/(%pi j:1<=j<=i:i))
    }

    (* Salida de Resultados *)

    writeln;
    writeln('El valor aproximado es: ',eAprox:0:15);
    writeln;

end.