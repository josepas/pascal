(*
 * aMayorBpar
 *
 * Programa que verifica si un entero es par y si es menor a otro
 *
 * Autor:  Jose Pascarella
 *
 * Ultima modificacion: 03/02/2013
 *)


program aMayorBpar;

var 
    a       : integer; // entero 1
    b       : integer; // entero 2
    v       : boolean; // booleano resultado

begin
    (* Lectura de Datos *)
    write('Ingrese 2 numeros(a, b): ');
    read(a, b);
    writeln;
    
    (* Calculo de Resultados *)
    {precondicion: true}
    v := (a > b) and ((b mod 2) = 0);
    {postcondicion: v ==  (a > b) /\ ((b mod 2) = 0)}
    
    (* Escritura de Datos *)
    writeln('(a > b) /\ (b par) == ', v);
    writeln;
end.

        
