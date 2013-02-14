program Quiz03;


var
    n      : integer;     // Entrada: Número de iteraciones deseadas
    x      : double;      // Entrada: Valor de x
    i      : integer;     // Número de la iteracióna ctual
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



    (* Calculos*)

    term := 1;
    eAprox := 1;

    for i := 1 to n do
    begin
	term := term * (x / i);
	eAprox := eAprox + term;
    end;

    {post:
	    eAprox = (%sigma i: 1<=i<=n: (%pi j:1<=j<=i:x)/(%pi j:1<=j<=i:i))
    }

    (* Salida de Resultados *)

    writeln;
    writeln('El valor aproximado es: ',eAprox:0:15);
    writeln;

end.