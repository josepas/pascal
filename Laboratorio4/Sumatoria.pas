{*
 * Ejercicio4
 * Este programa calcula la sumatoria de los cuadrados hasta un numero n
 * Autor: Jose Pascarella
 * Última modificación: 22 / 01 / 2013
 *}

program Ejercicio4;

var n   : integer;
    r   : extended; // resultado de la suma

begin

  writeln;
  write('Ingrese el numero a realizar la suma: ');
  read(n);
	
  while (n < 0) do
  begin
    writeln;
    writeln('No podemos procesar negativos!');
    writeln;
    write('Ingrese el numero a realizar la suma: ');
    read(n);
  end;
  
  {precondicion: n > 0}
  r := n * (n + 1) * (2 * n + 1) / 6; // formula cerrada de i^2
  {postcondicion: r = (%sigma i : 0 <= i <= n : i * i)}

  writeln('el resultado de la sumatoria es: ', r:0:0);
	
end.

