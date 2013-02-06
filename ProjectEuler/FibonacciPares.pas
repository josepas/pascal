(*
 * Lab3Ejercicio3
 * Programa que calcula un termino de la secuencia
 * Fibonacci pedido por el usuario
 * Autor:   Jose Pascarella
 * Ultima modificacion: 27/01/2013
 *)

 Program Lab3Ejercicio3;

var 
  a0  : longint; // Terminos de fibonacci 
  a1  : longint;
  tmp : longint;
  sum : longint;

begin
  a0 := 1;
  a1 := 2;
  sum := 2;
  writeln;

  while (a1 < 4000000) do
    begin
      tmp := a0 + a1;
      a0  := a1;
      a1  := tmp;
      if ((a1 mod 2) = 0) then
	begin
	  writeln('sume: ', sum, ' + ', a1);
	  sum := sum + a1;
	end;
    end;

  writeln('suma = ', sum, ' !');

end.