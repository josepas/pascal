{*
 * Ejercicio4
 * Este programa calcula la sumatoria de los cuadrados hasta un numero n
 * Autor: Jose Pascarella
 * Última modificación: 21 / 01 / 2013
 *}

program Ejercicio2;

var n   : integer;
    i	: integer;
    r   : integer; {resultado de la suma}

begin

	{precondicion: n > 0}
	
	write('Ingrese el numero a realizar la suma: ');
	read(n);
	
	r := 0;
	For i := 0 to n do
  	   begin
      	      r := r + (i * i) 	   
  	   end;
        
	writeln('el resultado de la sumatoria es: ', r);
	
	{postcondicion: r := (%sigma i : 0 <= i <= n : i * i)}

end.

