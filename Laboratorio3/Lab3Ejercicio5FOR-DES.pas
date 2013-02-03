(*
 * Lab3Ejercicio5FOR-DES
 * Programa que verifica si un numero es primo o no
 * Autor:   Jose Pascarella
 * Ultima modificacion: 27/01/2013
 *)

program Lab3Ejercicio5FORDES;

var
  primo   : integer;
  co      : integer;
  divisor : integer;
  
begin

  writeln;
  write('Ingrese un numero primo: ');
  read(primo);
  
  {Precondicion: primo > 0}
  
  divisor := 0;
  for co := primo downto 1 do
    begin
      if (primo mod co) = 0 then
	begin
	  divisor := divisor + 1;
	end;
	
      if divisor > 2 then 
	begin
	  writeln;
	  writeln('Este numero no es primo');
	  break;
	end;
    end;
    
   writeln;
   
   if divisor < 3 then
     begin
       writeln('El numero dado es primo! :)');
     end;
     
  {Postcondicion: primo == *exists k \ 0 < i < primo /\ (k != 1): ((primo mod i) = 0)}
  
  writeln;
  writeln;

end.
