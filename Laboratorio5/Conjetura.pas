(*
 * Conjetura
 * 
 * Programa que convierte un numero en el numero 4
 * mediante operaciones matematicas
 *
 * Autor:   Jose Pascarella
 *
 * Ultima modificacion: 18 / 02 / 2013
 *)
 
program Conjetura;

var
    n       : longint; // Numero Introducido
    pasos   : integer; // Pasos que tomo tranformar el numero en 4
    cotaAct : longint; // Verificacion de Cota
    cotaPre : longint; // Verificacion de Cota

begin
    writeln;
    
    (* Inicializacion de variables *)
    pasos := 0;
    
    (* Lectura de Datos *)
    write('Introduzca un numero natural: ');
    read(n);
    writeln;
    
    (* Verificacion de datos *)
    while (n < 1) do
    begin
	writeln('Solo procesamos numeros naturales!');
	write('Intente de nuevo: ');
	read(n);
	writeln;
    end;
	
    {Precondicion:
	n > 0
    }
	
    {Invariante:
	n >= 4
	/\ (n mod i = 0) ==> n := n div 2
	/\ (n mod i <> 0) ==> n := (n * 3 + 1)
	/\ pasos >= 0
    }
    writeln('Paso = ', pasos, '    N = ', n);
    writeln;
    
    {Cota: 
	2,147,487 - pasos
    }
    cotaAct := 2147487 - pasos;
    
    (* Calculos *)
    while (n <> 4) do
    begin
	if (n mod 2 = 0) then
	begin
	    n := n div 2;
	end
	else
	begin
	    n := n * 3 + 1;
	end;
	pasos := pasos + 1;
	
	(* Chequeo de la Funcion de Cota *)
	cotaPre := cotaAct;
	cotaAct := 2147487 - pasos;
	if ((cotaAct < 0) or (cotaAct >= cotaPre)) then 
	begin
	    writeln('ERROR AL VERIFICAR LA FUNCION DE COTA.');
	    writeln('POSIBILIDAD DE CICLO INFINITO.');
	    halt;
	end;
	
	(* Visualizacion del Invariante *)
	writeln('Paso = ', pasos, '   N = ', n);
    end;
    
    {Postcondicion:
	n = 4
    }
    
    writeln;
    (* Escritura de Datos *)
    writeln('Convertir el numero en 4 tomo ', pasos, ' pasos.');
    
    writeln;
end.