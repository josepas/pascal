(*
 * Lab3Ejercicio4
 * Programa que clasifica una secuencia en: Ascendente,
 * Descendente u Ordenada.
 * Autor:   Jose Pascarella
 * Ultima modificacion: 27/01/2013
 *)

program Lab3Ejercicio4;
   
var
    a    : integer;
    b    : integer;
    i    : integer;
    asc  : boolean;
    dsc  : boolean;    
    cotaAct : longint;
    cotaPre : longint;
    
    
begin
  
    writeln;
    writeln('Ingrese una secuencia de numeros: ');
    read(a);
    if a <= 0 then exit;
    read(b);
    if b <= 0 then exit;
    i := 0;
    asc := b > a;
    dsc := b < a;
    {Precondicion: 
	a > 0 /\ b > 0
    }
    
    {Cota: 
	10000 - i
    }
    cotaAct := 10000 - i;
       
    repeat
	if b > a then
	begin
	    asc := b > a;
	end;
	if b <= a then
	begin
	    dsc := b <= a;
	end;
	
	i := i + 1;
	
	(* Chequeo de la Funcion de Cota *)
	cotaPre := cotaAct;
	cotaAct := 10000 - i;
	if ((cotaAct < 0) or (cotaAct >= cotaPre)) then 
	begin
	    writeln('ERROR AL VERIFICAR LA FUNCION DE COTA.');
	    writeln('POSIBILIDAD DE CICLO INFINITO.');
	    halt;
	end;
	writeln('cotaAct= ', cotaAct);
	
	
	a := b;
	read(b);
    until (b <= 0);
    
    if asc = dsc then
    begin
	writeln('la sucesion No es creciente');
    end
    else if dsc then
    begin
	writeln('la sucesion NO es creciente');
    end
    else 
    begin
	writeln('la sucesion es creciente! :)');
    end;
    {Postcondicion: 
	asc == forall S(i) \ 1 <= i <= n : S(i) < S(i + 1)
    }
    writeln;
    writeln;

end.
