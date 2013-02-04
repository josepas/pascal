(*
 * SegtoHoras
 * Este programa transforma los segundos en horas, minutos y segundos
 * Autor:   Jose Pascarella
 * Ultima modificacion: 03/02/2013
 *)

program SegtoHoras;

var
  n : integer; // numero de segundos
  horas, minutos, segs : real; // variables para los distintos tiempos
  tmp : real; // variable temporal para facilitar la escritura

begin

  writeln;
  (* Lectura de Datos *)
  write('Ingrese un numero n de segundos a convertir: ');
  read(n);
  
  (* Verificacion de Datos *)
  while (n < 0) do
  begin
    writeln;
    writeln('No podemos procesar negativos!');
    writeln;
    write('Ingrese el numero n de segundos a convertir: ');
    read(n);
  end;
  
  (* Calculo de Resultados *)
  {Precondicion: n > 0}
  
  tmp := n mod 3600;
  horas := n / 3600;
  minutos := tmp / 60;
  segs := (n mod 3600) mod 60; // No puedo usar tmp de nuevo, no se porque (Internal error 200304302)
  
  {Postcondicion: minutos < 60 /\ segs < 60 }
  
  (* Escritura de Datos *) 
  write(n, ' segundos son: ', Trunc(horas), ' hora(s), ', Trunc(minutos), ' minuto(s) y ', segs:0:0, ' segundo(s)');

  writeln;
  writeln;
    
end.
