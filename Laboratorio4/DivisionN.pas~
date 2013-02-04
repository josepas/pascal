(*
 * DivisionN
 *
 * Este programa divide dos enteros
 *
 * Autor:  Jose Pascarella
 *
 * Ultima modificacion: 03/02/2013
 *)

program DivisionN;

var a : integer; // Dividendo
    b : integer; // Divisor
    c : real;    // Resultado de la Division

begin

  writeln;
  
  (* Lectura de Datos *)
  write('Ingrese los numeros a dividir (a / b): ');
  read(a, b);
  
  (* Verificacion de Datos *)
  while (b = 0) do
  begin
    writeln;
    writeln('ERROR: no existe la division entre 0!');
    writeln;
    write('Ingrese un divisor distinto de 0: ');
    read(b);
  end;
  
  (* Calculo del Resultado *)
  {precondicion: b != 0}
  c := a / b;
  {postcondicion: c = (a / b)}
  
  (* Escritura del Resultado *)
  writeln('La division efectuada fue (', a, ' / ', b, ') = ', c:0:4);
  writeln;
  

end.

        
