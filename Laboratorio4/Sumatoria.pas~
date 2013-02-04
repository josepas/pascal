{*
 * Sumatoria
 * Este programa calcula la sumatoria de los cuadrados hasta un numero n
 * Autor: Jose Pascarella
 * Última modificación: 03 / 02 / 2013
 *}

program Sumatoria;

var n   : integer;  // termino solicitado por a calcular la suma
    r   : extended; // resultado de la suma

begin

  writeln;
  (* Lectura de Datos *)
  write('Ingrese el numero a realizar la suma de cuadrados: ');
  read(n);

  (* Verificacion de Datos *)
  while (n < 0) do
  begin
    writeln;
    writeln('No podemos procesar negativos!');
    writeln;
    write('Ingrese el numero a realizar la suma: ');
    read(n);
  end;
  
  (* Calculo de Datos *)
  {precondicion: n > 0 }
  r := n * (n + 1) * (2 * n + 1) / 6; // formula cerrada de i^2
  {postcondicion: r = (%sigma i : 0 <= i <= n : i * i)}

  (* Escritura de Datos *)
  writeln('el resultado de la sumatoria es: ', r:0:0);
  writeln;
	
end.

