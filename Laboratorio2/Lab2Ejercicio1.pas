(*
 * Ejercicio1
 * Tipos, Subrangos y Enumerados
 * Autor:   Jose Pascarella
 * Ultima modificacion: 22/01/2013
 *)

program Ejercicio1;

type
    DiaSemana = (lunes, martes, miercoles, jueves, viernes,
                 sabado, domingo);
    FinSemana = sabado .. domingo;
  
begin
  writeln;
  {Precondicion: true}
  writeln(DiaSemana(0), ', ordinal: ', ord(lunes));  
  writeln(DiaSemana(1), ', ordinal: ', ord(martes));
  writeln(DiaSemana(2), ', ordinal: ', ord(miercoles));
  writeln(DiaSemana(3), ', ordinal: ', ord(jueves));
  writeln(DiaSemana(4), ', ordinal: ', ord(viernes));
  writeln(DiaSemana(5), ', ordinal: ', ord(sabado));
  writeln(DiaSemana(6), ', ordinal: ', ord(domingo));
  {Postcondicion: true}  
  writeln;
  writeln;
    
  
end.
