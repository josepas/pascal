(*
 * NumeroPrimo
 * 
 * Programa que verifica si un numero N es
 * primo verificando el invariante 
 * y la funcion de Cota
 *
 * Autor:   Jose Pascarella
 *
 * Ultima modificacion: 15 / 02 / 2013
 *)

program NumeroPrimo;

var
    n        : integer; // Numero a verificar
    co       : integer; // Variable Contador
    topPrimo : integer; // Tope de la Iteracion
    primo    : boolean;	// Booleano para la verificacion
    cotaAct  : integer; // Verificacion de Cota
    cotaPre  : integer; // Verificacion de Cota

begin
    writeln;

    (* Lectura de Datos *)
    write('Ingrese un numero primo: ');
    read(n);
    
    (* Inicializacion de varriables *)
    co := 3;
    topPrimo := (n div 2) + 1;

    {Precondicion:
	n > 0
    }

    (* Verificacion de Datos *)
    while (n <= 0) do
    begin
	writeln;
	writeln('Numero invalido!');
	write('Intente de nuevo: ');
	read(n);
    end;
    
    primo := true;
    if (n mod 2 = 0) then
    begin
	primo := false;
    end
    else
    begin
	{Invariante:
	    n > 0
	    /\ primo == (% forall x : 2 <= x < n: (n MOD x) != 0)
	}
	writeln('Numero = ', n,  ' Divisor: ', co, ' Tope de Iteracion = ', topPrimo, ' Boolean primo = ', primo);
	
	{Cota: 
	    topPrimo + 1 - co
	}
	cotaAct := topPrimo + 1 - co;

	while ((co < topPrimo) and primo) do
	begin
	    primo := (n mod co <> 0);
	    co := co + 2;

	    (* Chequeo de la funcion de cota *)
	    cotaPre := cotaAct;
	    cotaAct := topPrimo + 1 - co;
	    if ((cotaAct < 0) or (cotaAct >= cotaPre)) then 
	    begin
		writeln('ERROR AL VERIFICAR LA FUNCION DE COTA.');
		writeln('POSIBILIDAD DE CICLO INFINITO.');
		halt;
	    end;

	    (* Visualizacion del Invariante *)
	    writeln('Numero = ', n,  '  Divisor: ', co, '  Tope de Iteracion = ', topPrimo, '  Boolean primo = ', primo);
	end; // wHILE
    end; // IF
    
    if (n = 2) then
    begin
	primo := true;
    end;

    {Postcondicion:
	primo == (% forall x : 2 <= x < n: (n MOD x) != 0) 
    }
    
    (* Escritura de Resultados *)
    if primo then
    begin
	writeln('El numero ingresado es primo! :)')
    end
    else
    begin
	writeln('EL numero ingresado NO es primo!')
    end;
end.