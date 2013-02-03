(*
 * Lab3Extra3
 * Programa que calcula el m.c.d. entre dos numeros
 * Autor:   Jose Pascarella
 * Ultima modificacion: 28/01/2013
 *)

program Lab3Extra3;

var
  (*Terminos a calcular el mcd*)
  a   : integer; 
  b   : integer;

begin
  writeln;
  
  (*Lectura de Datos*)
  writeln('Introduzca (2) numeros a calcular el maximo comun divisor');
  read(a, b);
  
  {Precondicion: a > 0 /\ b > 0}
  (*Calcuo del mcd*)
  if (a < 1) or (b < 1) then
    begin
      writeln('Par de numeros invalidos');
      exit;
    end;

  while (a <> b) do
    begin
      if (b > a) then
	begin
	  b := b - a;
	end
      else
	begin
	  a := a - b;
      end;
    end;
    {Postcondicion: mcd(a,b) == max(x):(a mod x = 0 /\ b mod x = 0)}
    
    (*Escritura de Datos*)
    writeln;
    writeln('el M.C.D entre los dos numeros es: ', a);

end.