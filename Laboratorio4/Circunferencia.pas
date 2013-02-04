{*
 * Circunferencia
 * Este programa calcula el perimetro y el area de la circunferencia
 * y el volumen de la esfera asociada 
 * Autor: Jose Pascarella
 * Última modificación: 03 / 02 / 2013
 *}

program Circunferencia;

var radio       : real; // radio del circulo
    perimetro   : real; // perimetro de la circunferencia
    volumen     : real; // volumen de la esfera asociada
    area        : real; // area de la circunferencia
    
Const 
    pi = 3.1416; // constante que emula al numero pi

begin

  writeln;
  (* Lectura de Datos *)
  write('Ingrese el radio de la esfera (metros): ');
  read(radio);
  
  (* Verificacion de Datos *)
  while (radio < 1) do
  begin
    writeln;
    writeln('Ingrese un radio mayor que 0!');
    writeln;
    write('Ingrese el radio de la esfera (metros): ');
    read(radio);
  end;
  
  (* Calculo de Resultados *)
  {Precondicion: radio >= 0}  
  
  perimetro := 2 * pi * radio;
  area := pi * radio * radio;
  volumen := ( (4 * pi) / 3 ) * (radio * radio * radio);

  {Postcondicion: perimetro = 2 * pi * radio
		  area := pi * (radio ^ 2)
		  volumen := ( (4 * pi) / 3 ) * (radio ^ 3)}  
  
  (* Escritura de Datos *)
  writeln('El perimetro de la circunferencia es: ', perimetro:8:4 , ' metros');
  writeln('El area de la circunferencia es: ', area:8:4 , ' metros cuadrados');
  writeln('El volumen de la esfera asociada al radio es: ', volumen:8:4 , ' metros cubicos');

		  
		  
end.
	
	
    


