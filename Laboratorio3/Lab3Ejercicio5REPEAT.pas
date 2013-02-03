(*
 * Lab3Ejercicio5REPEAT
 * Programa que verifica si un numero es primo o no
 * Autor:   Jose Pascarella
 * Ultima modificacion: 27/01/2013
 *)

program Lab3Ejercicio5REPEAT;

var
n  	: integer;
co 	: integer;
primo   : boolean;
  
begin

  writeln;
  
  write('Ingrese un numero primo: ');
  read(n);
  
  writeln;
  
  {Precondicion: primo > 0}
  
  primo := true;
  if n <> 1 then
  begin
    co := 2;
    repeat
    begin
      if (n mod co) = 0 then
      begin
	primo := false;	
	write('El numero ingresado no es primo');
	break;
      end;
    end;
    co := co + 1;
    Until co = n;
  end;
  
  {Postcondicion: primo == *exists k \ 0 < i < primo /\ (k != 1): ((primo mod i) = 0)}
  
  if primo = true then write('El numero ingresado es primo :)');
  
  writeln;
  writeln;

end.
