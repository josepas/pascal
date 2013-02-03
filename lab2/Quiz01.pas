{*
 * quiz01
 * Precondiciones, Postcondiciones y estilo
 * Autor: Jose Pascarella
 * Última modificación: 21 / 01 / 2013
 *}

program quiz01;

var x1   : integer;
    x2   : integer;
    x3   : integer;
    x4   : integer;
    y1   : integer;
    y2   : integer;
    y3   : integer;
    y4   : integer;

begin

	{precondicion: |y1 - y2| > |x2 - x1|}
	
	write('Ingrese la coordenada (x1, y1): ');
	read(x1, y1);

	write('Ingrese la coordenada (x2, y2): ');
	read(x2, y2);
	
	{Calculos de los nuevos valores...}

	writeln('la coordenada (x3, y3) es: (', x1, ', ', y1, ')');
	writeln('la coordenada (x4, y4) es: (', x2, ', ', y2, ')');
	
	
	{postcondicion: y2 < y3 < y1 }

end.
