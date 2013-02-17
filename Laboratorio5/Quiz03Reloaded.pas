(*
 * Quiz03
 * 
 * Programa que calcula el aproximado de e^x
 * con precision maxima de 20 terminos
 * verificando el invariante 
 * y la funcion de Cota
 *
 * Modificado:   Jose Pascarella
 *
 * Ultima modificacion: 15 / 02 / 2013
 *)


program Quiz03;

type
    itera = 1..20;
var
    n      : itera;       // Entrada: Número de iteraciones deseadas
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
    
    (* Inicializacion de variables *)
    term := 1;
    eAprox := 1;
    i := 0;

    {Precondicion:
	n > 0 /\ n < 21
    }
	
    {Invariante:
	i <= n
	/\ eAprox = (%sigma i: 1<=i<=n: (%pi j:1<=j<=i:x)/(%pi j:1<=j<=i:i))
    }
    writeln('Numero de iteraciones = ', n, '  Iteracion: ', i, '  Aproximado = ', eAprox:0:15);
    writeln;

    (* Calculos*)
    for i := 1 to n do
    begin
	term := term * (x / i);
	eAprox := eAprox + term;

	(* Verificacion del Invariante *)
	writeln('Numero de iteraciones = ', n, '  Iteracion: ', i, '  Aproximado = ', eAprox:0:15);
    end;

    {Postcondicion:
	eAprox = (%sigma i: 1<=i<=n: (%pi j:1<=j<=i:x)/(%pi j:1<=j<=i:i))
    }

    (* Salida de Resultados *)

    writeln;
    writeln('El valor aproximado es: ',eAprox:0:15);
    writeln;

end.