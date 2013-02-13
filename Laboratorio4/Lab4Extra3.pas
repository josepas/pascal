(*
 * Lab4Extra3
 * Este programa transforma los segundos en horas, minutos y segundos
 * Autor:   Jose Pascarella
 * Ultima modificacion: 04 / 02 / 2013
 *)

program Lab4Extra3;

var
  n 			: integer; // numero de segundos
  horas, minutos, segs : real; 
  tmp 			: real;

begin

  writeln;
  (* Lectura de Datos *)
  write('Ingrese un numero n de segundos a convertir: ');
  read(n);
  writeln;
  
  (* Verificacion de Datos *)
  while not n >= 0 do
    begin
      writeln('No podemos procesar negativos!');
      write('Intente de nuevo: ');
      read(n);
    end;
  
  (* Calculo de Resultados *)
  {Precondicion: n >= 0}
  tmp := n mod 3600;
  horas := n / 3600;
  minutos := tmp / 60;
  segs := (n mod 3600) mod 60; // No puedo usar tmp de nuevo, no se porque (Internal error 200304302)
  
  {Postcondicion: (minutos < 60) /\ (minutos >= 0) /\ (segs < 60) /\ (segs >= 0) }
  
  (* Escritura de Resultados *)
  writeln(n, ' segundos serian: ', Trunc(horas), ' hora(s), ', Trunc(minutos), ' minuto(s) y ', segs:0:0, ' segundo(s)');
  writeln;
     
end.
