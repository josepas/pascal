(*
 * Creciente
 *
 * Programa que verifica si una sucesion es
 * creciente
 *
 * Autor:   Jose Pascarella
 *
 * Ultima modificacion: 18 / 02 / 2013
 *)

program Creciente;
   
var
    a       : integer; // Numero a comparar
    b       : integer; // Numero a comparar
    i       : integer; // Variable contador
    asc     : boolean; // TRUE si es creciente
    dsc     : boolean; // TRUE si es decreciente   
    cotaAct : integer; // Verificacion de cota
    cotaPre : integer; // Verificacion de cota
    
begin
    writeln;
    
    (* Lectura y Verificacion de primeros Datos *)
    writeln('Ingrese una secuencia de numeros: ');
    read(a);
    if a <= 0 then
    begin
	exit;
    end;
    
    read(b);
    if b <= 0 then 
    begin
	exit;
    end;
    
    (* Inicializacion de Variables *)
    i := 0;
    asc := b > a;
    dsc := b < a;
    
    {Precondicion: 
	a > 0 /\ b > 0
	/\ asc == false
    }
    
    {Invariante:
	asc == (*forall a | 0 <= a <= i /\ : S[a] > S[a -1])
	/\ a >= 0
	/\ b >= 0
    }
        
    {Cota: 
	10000 - i
    }
    cotaAct := 10000 - i;
    
    (* Calculos *)
    repeat
	(* Visualizacion de las Variables *)
	writeln('Contador = ', i, '   Termino Actual= ', b, '   Termino Previo= ', a);
	
	if b > a then
	begin
	    asc := b > a;
	end;
	if b <= a then
	begin
	    dsc := b <= a;
	end;
	
	(* Chequeo de la Funcion de Cota *)
	i := i + 1;
	cotaPre := cotaAct;
	cotaAct := 10000 - i;
	if ((cotaAct < 0) or (cotaAct >= cotaPre)) then 
	begin
	    writeln('ERROR AL VERIFICAR LA FUNCION DE COTA.');
	    writeln('POSIBILIDAD DE CICLO INFINITO.');
	    halt;
	end;
	
	a := b;
	read(b);
    until (b <= 0);
    
    {Postcondicion: 
	asc == (%forall i \ 1 <= i <= n : S(i) < S(i + 1))
    }
    
    (* Escritura de Datos *)
    if asc = dsc then
    begin
	writeln('la sucesion NO es creciente');
    end
    else if dsc then
    begin
	writeln('la sucesion NO es creciente');
    end
    else 
    begin
	writeln('la sucesion es creciente! :)');
    end;
    
    writeln;
end.
