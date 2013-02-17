(*
 * SumaEnterosFCerrada
 * 
 * Programa que suma los enteros hasta un numero N
 * verificando el invariante por Aserciones
 * y la funcion de Cota
 *
 * Autor:   Jose Pascarella
 *
 * Ultima modificacion: 15 / 02 / 2013
 *)

program SumaEnterosFCerrada;

var
    a       : integer; // Contador para el ciclo while
    n       : integer; // Numero hasta el cual se realiza la suma
    s       : integer; // Resultado de la suma
    cotaPre : integer; // Verificacion de Cota
    cotaAct : integer; // Verificacion de Cota


begin
    writeln;

    (* Lectura de Datos *)
    write('Introduzca un N para la suma de Enteros: ');
    read(n);

    (* Inicializacion de Variables *)
    a := 0;
    s := 0;
   
    (* Verificacion de Datos *)
    while (n < 0) do
    begin
	writeln;
	writeln('No procesamos numeros negativos!');
	write('Intente de nuevo: ');
	read(n);
    end;

    {Invariante: 
	n >= 0
	/\ n >= a
	/\ s = (%sigma \ 1 <= a <= n : a)
    }
    if s <> (a * (a + 1)) / 2 then
    begin
	writeln('ERROR EN LOS CALCULOS');
	writeln('SALIENDO DEL PROGRAMA');
	halt;
    end;
	
    {Cota: 
	n - a
    }
    cotaAct := n - a;
    
    (* Calculos *)
    while (a < n) do
    begin
	a := a + 1;
	s := s + a;
	
	(* Verificacion de la Funcion de Cota*)
	cotaPre := cotaAct;
	cotaAct := n - a;
	if ((cotaAct < 0) or (cotaAct >= cotaPre)) then 
	begin
	    writeln('ERROR AL VERIFICAR LA FUNCION DE COTA.');
	    writeln('POSIBILIDAD DE CICLO INFINITO.');
	    halt;
	end;
	
	(* Verificacion del Invariante *)
	if s <> (a * (a + 1)) / 2 then
	begin
	    writeln('ERROR EN LOS CALCULOS');
	    writeln('SALIENDO DEL PROGRAMA');
	    halt;
	end;
    end;
    
    (* Escritura de Resultado *)
    writeln('La suma de los enteros hasta (', n, ') es = ', s); 
    writeln;

end.
