(*
 * Lab3EjercicioFOR-ASC
 * Programa que verifica si un numero es primo o no
 * Autor:   Jose Pascarella
 * Ultima modificacion: 27/01/2013
 *)

program lab3Ejercicio5FORASC;

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
    
   {Postcondicion: primo == *exists k \ 0 < i < primo /\ (k != 1): ((primo mod i) = 0)}
   
   writeln;
   
   if divisor < 3 then
     begin
       writeln('El numero dado es primo! :)');
     end;
     
  writeln;
  writeln;

end.
