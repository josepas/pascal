(*
 * solquiz1em13.pas
 *
 * Este programa lee las coordenadas de dos puntos (x1,y1) y (x2,y2) en el
 * espacio, que definen un rectangulo. El programa devuelve los dos puntos
 * (x3,y3) (x4,y4) que definen el cuadrado y los dos triángulos que encajan
 * perfectamente en el rectangulo dado.
 *
 * Autores:
 *	Prof. Rosseline Rodriguez
 * Modificado:
 * 	Jose Pascarella
 *
 * Ultima modificacion: 03/02/2013
 *)

PROGRAM solquiz1em13;

VAR

	x1,y1: REAL; // coordenadas del primer punto que define el rectangulo
	x2,y2: REAL; // coordenadas del segundo punto que define el rectangulo
	x3,y3: REAL; // coordenadas del primer punto que define el cuadrado y los dos triangulos
	x4,y4: REAL; // coordenadas del segundo punto que define el cuadrado y los dos triangulos

BEGIN
   (* Entrada de datos *)

   WRITELN;

   WRITELN('Introduzca las coordenadas del primer punto: ');
   READ(x1,y1);

   WRITELN('Introduzca las coordenadas del segundo punto: ');
   READ(x2,y2);
   WRITELN;

  (* Verificacion de datos *)
  
  WHILE (x2 <= x1) OR (y1 <= y2) OR ((y1-y2) <= (x2-x1)) DO 
    BEGIN
      WRITELN;
      WRITELN('Las coordenadas ingresadas son invalidas!');
      WRITELN; 
      WRITELN('Introduzca las coordenadas del primer punto: ');
      READ(x1,y1);
    
      WRITELN('Introduzca las coordenadas del segundo punto: ');
      READ(x2,y2);
      WRITELN;
    END;
    
   { Precondicion: x2 > x1 /\ y1 > y2 /\ (y1-y2) > (x2-x1) }

      (* Calculos *)

      x3 := x1;
      y3 := y1-(x2-x1);
      x4 := x2;
      y4 := y1-(x2-x1);

   { Postcondicion: x3=x1 /\ y3=y1-(x2-x1) /\ x4=x2 /\ y4=y1-(x2-x1) }

   (* Salida de resultados *)


   WRITELN('Los puntos que definen el cuadrado y los dos triangulos son: ');
   WRITELN('(',x3:7:2,',',y3:7:2,') y (',x4:7:2,',',y4:7:2,')');
   READLN;


END.