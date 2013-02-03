{*
 * Ejercicio5 
 * Este programa lee tres variables y las muestra en pantalla
 * en orden inverso
 * Autor:   Jose Pascarella
 * Ultima modificacion: 15/01/2013
 * }

program Ejercicio5;

var x : integer;
    y : integer;
    z : integer;

begin
    
    writeln('Escriba tres enteros:');
    read(x, y, z);
    writeln(z,' ', y, ' ', x);
    readln;

end.

