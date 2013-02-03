{*
 * Ejercicio3
 * Este programa calcula el perimetro y el area de la circunferencia
 * y el volumen de la esfera asociada 
 * Autor: Jose Pascarella
 * Última modificación: 22 / 01 / 2013
 *}

program Ejercicio3;

var radio       : real;
    perimetro   : real;
    volumen     : real; // esfera
    area        : real;
    
Const 
    pi = 3.1416;

begin

  writeln;
  write('Ingrese el radio de la esfera (metros): ');
  read(radio);
  
  while (radio < 1) do
  begin
    writeln;
    writeln('Ingrese un radio mayor a 0!');
    writeln;
    write('Ingrese el radio de la esfera (metros): ');
    read(radio);
  end;
  
  {Precondicion: radio >= 0}
  
  perimetro := 2 * pi * radio;
  writeln('el perimetro de la circunferencia es: ', perimetro:8:4 , ' metros');

  area := pi * radio * radio;
  writeln('el area de la circunferencia es: ', area:8:4 , ' metros cuadrados');

  volumen := ( (4 * pi) / 3 ) * (radio * radio * radio);
  writeln('el volumen de la esfera asociada al radio es: ', volumen:8:4 , ' metros cubicos');

  {Postcondicion: perimetro = 2 * pi * radio
		  area := pi * (radio ^ 2)
		  volumen := ( (4 * pi) / 3 ) * (radio ^ 3)}
		  
		  
end.
	
	
    


