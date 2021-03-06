(*
 * Factorial
 * 
 * Programa que calcula el factorial
 * de un numero n verificando el invariante 
 * y la Funcion de Cota
 *
 * Autor:   Jose Pascarella
 *
 * Ultima modificacion: 15 / 02 / 2013
 *)

Program Factorial;

var
    fact    : integer; // Numero de factorial a calcular
    a	    : integer; // Contador para los calculos
    rst     : longint; // Resultado del factorial
    cotaPre : integer; // Verificacion de Cota
    cotaAct : integer; // Verificacion de Cota


begin
    
    writeln;
    (* Lectura de Datos *)
    writeln('Este programa calcula el factorial de un numero');
    write('Ingrese un numero: ');
    read(fact);

    (* Inicializacion de Variables *)
    a   := 0;
    rst := 1;
    writeln;

    {Precondicion:
	fact >= 0
    }
     
    (* Verificacion de Datos *)
    while (fact < 0) do
    begin
	writeln('No procesamos numeros negativos!');
	write('Intente de nuevo: ');
	read(fact);
	writeln;
    end;
    
    {Invariante:
	fact >= 0
	/\ a <= fact
	/\ rst = (%pi \ 1 <= a <= fact : a)
    }
    writeln('Factorial = ', fact, ' contador = ', a, ' resultado parcial = ', rst);
    writeln;
    
    {Cota: 
	fact - a
    }
    cotaAct := fact - a;
	    
    while (a < fact) do
    begin
	a := a + 1;
	rst := rst * a;
			
	(* Chequeo de la Funcion de Cota *)
	cotaPre := cotaAct;
	cotaAct := fact - a;
	if ((cotaAct < 0) or (cotaAct >= cotaPre)) then 
	begin
	    writeln('ERROR AL VERIFICAR LA FUNCION DE COTA.');
	    writeln('POSIBILIDAD DE CICLO INFINITO.');
	    halt;
	end;
	
	(* Chequeo del Invariante *)
	writeln('Factorial = ', fact, ' contador = ', a, ' resultado parcial = ', rst);
			
    end;
    
    {Postcondicion:
	rst = (%pi \ 1 <= a <= fact : a)
    }
	    
    (* Escritura de Resultados *)
    writeln(fact, '! = ', rst);
    writeln;

end.