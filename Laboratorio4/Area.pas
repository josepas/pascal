{*
 * Ejercicio2
 * Este programa calcula el area de una habitacion
 * Autor: Jose Pascarella
 * Última modificación: 22 / 01 / 2013
 *}


program Ejercicio2;

var 
    largo : real;
    ancho : real;
    area  : real;

begin

  writeln;
  write('Ingrese el largo de la habitacion(metros): ');
  read(largo);
  write('Ingrese el ancho de la habitacion(metros): ');
  read(ancho);
  
  while (largo < 1) or (ancho < 1) do
  begin
    writeln;
    writeln('Ingrese dos medidas validas');
    writeln;
    write('Ingrese el largo de la habitacion(metros): ');
    read(largo);
    write('Ingrese el ancho de la habitacion(metros): ');
    read(ancho);
  end;
    
  {precondicion largo > 0 /\ ancho > 0}
  area := ancho * largo;
  {postcondicion: area = largo * ancho }
  
  writeln('La superficie de la habitacion es: ', area:8:4 , ' metros cuadrados');



end.


