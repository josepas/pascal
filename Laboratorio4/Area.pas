{*
 * Area
 * Este programa calcula el area de una habitacion
 * Autor: Jose Pascarella
 * Última modificación: 03 / 02 / 2013
 *}


program Area;

var 
    largo : real; // Variable para el largo de la habitacion
    ancho : real; // Variable para el ancho de la habitacion
    area  : real; // Variable para el area resultante de la habitacion

begin

  writeln;
  (* Lectura de Datos *)
  write('Ingrese el largo de la habitacion(metros): ');
  read(largo);
  write('Ingrese el ancho de la habitacion(metros): ');
  read(ancho);
  
  (* Verificacion de datos *)
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
  
  (* Calculo de Datos *)
  {precondicion largo > 0 /\ ancho > 0}
  area := ancho * largo;
  {postcondicion: area = largo * ancho }
  
  (* Escritura de Datos *)
  writeln('La superficie de la habitacion es: ', area:8:4 , ' metros cuadrados');
  writeln;

end.


