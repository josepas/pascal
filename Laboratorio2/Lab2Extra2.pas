(*
 * Extra2 
 * 
 * en una misma linea
 * Autor:   Jose Pascarella
 * Ultima modificacion: 16/01/2013
 *)

program Extra2;

var
  a, b, c        : real;
  determinante   : real;
  raiz1, raiz2   : real; 
  
begin
    writeln;
    
    writeln('Introduzca los coeficientes de la ecuacion cuadratica (ax^2 + bx + c = 0)');
    read(a, b, c);
    
    {Precondicion: (b * b - 4 * a * c) > 0 }
    
    determinante := b * b - 4 * a * c;
    raiz1 := (b + Sqrt(determinante)) / (2 * a);
    raiz2 := (b - Sqrt(determinante)) / (2 * a);
    write('Raiz numero 1 = ', raiz1:0:2, '. Raiz numero 2 = ', raiz2:0:2);
    writeln;
    writeln;
    
    {Postcondicion: }
end.
