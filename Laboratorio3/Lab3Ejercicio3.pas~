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
  co  : integer; 
  n   : integer; 

begin
   co := 0;
   a0 := 0;
   a1 := 1;
   
   writeln;
    
   write('Ingrese el termino de Fibonacci a calcular: ');
   read(n);
   
   case n of
   0 : begin
	  a1 := 0;
       end;
   
   1 : begin
	  a1 := 1;
       end;
   else
     begin
      	for co := 2 to n do
	  begin
	    tmp := a0 + a1;
	    a0  := a1;
	    a1  := tmp;
	  end;
      end; // Else del Case} 
   end; // Case
    
   writeln('El termino F(', n, ') = ', a1);
   writeln;
   
end.