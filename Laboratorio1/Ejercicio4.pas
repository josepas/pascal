{*
 * Ejercicio4
 * Este programa lee tres tipos distintos de variables y los imprime en pantalla
 * en una misma linea
 * Autor:   Jose Pascarella
 * Ultima modificacion: 15/01/2013
 * }

program Ejercicio4;

var x : integer;
var y : real;
var z : string;

begin
    
    writeln('Escriba un entero, un real y una palabra');
    read(x, y, z);
    writeln(x,' ', y:2:5, ' ', z);
    {writeln(y:2:5);
    writeln(z);}
    readln;

end.

