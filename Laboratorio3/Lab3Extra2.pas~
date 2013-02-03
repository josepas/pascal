(*
 * Lab3Extra2 
 * Programa que calcula las raices de un
 * polinomio de segundo grado
 * Autor:   Jose Pascarella
 * Ultima modificacion: 28/01/2013
 *)

program Lab3Extra2;

var
  a, b, c        : real; // variables para los coeficientes de la ecuacion
  determinante   : real; // determinante de la ecuacion
  raiz1, raiz2   : real; // raices de la ecuacion
  solUnica       : boolean; // Boolean para verificar solucion unica
begin
    writeln;
    
    (*Lectura de Datos*)
    writeln('Introduzca los coeficientes de la ecuacion cuadratica (ax^2 + bx + c = 0)');
    read(a, b, c);
    
    {Precondicion: (a != 0) /\ (b * b - 4 * a * c) >= 0 }
    solUnica := false;
    if (a = 0) then
      begin
	writeln('los coeficientes no son validos');
	exit;
      end
    else if (b = 0) and (c = 0) then
      begin
	raiz1 := 0;
	solUnica := true;
      end
    else
      begin
	determinante := b * b - 4 * a * c;
	if (determinante = 0) then
	  begin
	    raiz1 := (b + Sqrt(determinante)) / (2 * a);
	    solUnica := true;
	  end
	else if (determinante < 0) then
	  begin
	    writeln('Soluciones Imaginarias.');
	    exit;
	  end
	else
	  begin
	    raiz1 := (b + Sqrt(determinante)) / (2 * a);
	    raiz2 := (b - Sqrt(determinante)) / (2 * a);
	end;
    end;
  {Postcondicion: (raiz1 = (b + Sqrt(determinante)) / (2 * a) /\ raiz2 = (b - Sqrt(determinante)) / (2 * a)) \/
		    raiz1 = b / (2 * a) \/
		    raiz1 = raiz2 = (vacio)}
  
  (*Escritura de Datos*)
  if solUnica then
    begin
      writeln('Solucion Unica = ', raiz1:0:2);
    end
  else
    begin
      writeln('Raiz numero 1 = ', raiz1:0:2, '. Raiz numero 2 = ', raiz2:0:2);
  end;
      
      
      
      
    

    

    
   
end.