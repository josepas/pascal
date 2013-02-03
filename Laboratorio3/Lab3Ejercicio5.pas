(*
 * Lab3Ejercicio5
 * 
 * Autor:   Jose Pascarella
 * Ultima modificacion: XX/0X/2013
 *)

program lab3Ejercicio5;

var
  primo   : integer;
  co      : integer;
  divisor : integer;
  
begin

  writeln;

  write('Ingrese un numero primo: ');
  read(primo);
  
  divisor := 0;
  for co := 1 to primo do
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
     
  writeln;
  writeln;

end.
