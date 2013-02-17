(*
 * Fibonacci
 * 
 * Programa que calcula el Fibonacci de un numero
 * N verificando el invariante 
 * y la Funcion de Cota
 *
 * Autor:   Jose Pascarella
 *
 * Ultima modificacion: 15 / 02 / 2013
 *)

program Fibonacci;

var 
    a0  : longint; // Terminos de fibonacci 
    a1  : longint;
    tmp : longint;
    co  : integer; 
    n   : integer; 

begin
    writeln;
    (* Lectura de Datos *)
    write('Ingrese el termino de Fibonacci a calcular: ');
    read(n);
    
    (* Inicializacion de Variables *)
    co := 2;
    a0 := 0;
    a1 := 1;
    tmp := 1;

    {Precondicion:
	n >= 0
    }

    (* Verificacion de Datos *)
    while (n < 0) do
    begin
	writeln;
	writeln('No procesamos numeros negativos!');
	write('Intente de nuevo: ');
	read(n);
    end;

    (* Calculos *)
    case n of
	0 : begin
		a1 := 0;
	    end;

	1 : begin
		a1 := 1;
	    end;
	else
	begin
	   
	    {Invariante:
		n >= 0
		/\ co <= n
		/\ f(n) = f(n-1) + f(n -2)
	    }
	    writeln;
	    writeln('contador = ', co, '  a0 = ', a0, '  a1 = ', a1);
	    writeln;

	    for co := 2 to n do
	    begin
		tmp := a0 + a1;

		(* Verificacion del Invariante *)
		writeln('F(', co, ')= ', tmp,'  F(', co, '-1)= ', a1,'  F(', co, '-2)= ', a0);
		
		(* Swap de las variables *)
		a0  := a1;
		a1  := tmp;
		
	    end;
	end; // Else del Case 
    end; // Case
	
    {Postcondicion:
	f(n) = f(n-1) + f(n -2)
    }

    (* Escritura de Datos *)
    writeln('El termino F(', n, ') = ', a1);
    writeln;

end.
