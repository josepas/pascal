(*
 * Valor Absoluto
 *
 * Este programa calcula el valor absoluto de un numero
 *
 * Autor:  Jose Pascarella
 *
 * Ultima modificacion: 03/02/2013
 *)

program vAbsoluto;

var n : integer;
    r : integer;

begin
    
    writeln;
    
    (* Lectura de Datos *)
    write('Ingrese un numero: ');
    read(n);
    
    (* Calculo de Resultados *)
    {precondicion: true}
    if n < 0 then
    begin
      r := -n;
    end
    else
    begin
      r := n;
    end;
    {postcondicion: (n < 0 ==> r = -n) /\ (n >= 0 ==> r = n)}
    
    (* Escritura de Datos *)
    writeln('el valor absoluto |', n, '| es: ', r);
    writeln;
    
end.

        
