(*
 * NumeroPerfecto
 *
 * Programa que verifica si un numero N
 * es un Natural Perfecto
 *
 * Autor:   Jose Pascarella
 *
 * Ultima modificacion: 18 / 02 / 2013
 *)
 
program NumeroPerfecto;

var
    n         : integer; // Numero Ingresado por el Usuario
    i         : integer; // Variable contador
    topeItera : integer; // Tope para las iteraciones
    nPerfecto : integer; // Suma parcial de los divisores de N
    perfecto  : boolean; // TRUE si el numero N es Perfecto

begin
    writeln;
    
    (* Lectura de Datos *)
    write('Introduzca un numero natural: ');
    read(n);
    writeln;
    
    (* Inicializacion de Variables *)
    i := 1;
    topeItera := (n div 2) + 1;
    nPerfecto := 1;
    perfecto := false;
    
    (* Verificacion de datos *)
    while (n < 1) do
    begin
	writeln('Solo procesamos numeros naturales!');
	write('Intente de nuevo: ');
	read(n);
	topeItera := (n div 2) + 1;
	writeln;
    end;
    
    {Precondicion:
	n > 0
    }
    
    {Invariante:
	n > 0
	/\ (2 <= i) /\ i <= (n / 2 + 1)
	/\ nPerfecto = (*sigma i | 1 <= i <= (n / 2 + 1) : (n mod i = 0)) + 1
    }
    writeln('Tope= ', topeItera, '   N= ', n, '   Contador= ', i, '   Suma parcial= ', nPerfecto);
    writeln;
    
    (* Calculos *)
    for i := 2 to topeItera do
    begin
	if (n mod i = 0) then
	begin
	    nPerfecto := nPerfecto + i;
	end;
	
	(* Verificacion del Invariante *)
	writeln('Tope= ', topeItera, '   N= ', n, '   Contador= ', i, '   Suma parcial= ', nPerfecto);
    end;
    
    if nPerfecto = n then
    begin
	perfecto := true;
    end;
    
    {Postcondicion:
	nPerfecto = (*sigma i | 1 <= i <= (n / 2 + 1) : (n mod i = 0)) + 1
	/\ perfecto == (nPerfecto = n)
    }
    
    (* Escritura de Datos *)
    writeln;
    if perfecto then
    begin
	writeln('El numero introdcido (', n, ') es perfecto! :)');
    end
    else
    begin
	writeln('El numero introdcido (', n, ') NO es perfecto! ToT');
    end;
    
    writeln;
end.