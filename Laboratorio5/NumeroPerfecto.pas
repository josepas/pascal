program NumeroPerfecto;

var
n         : integer;
i         : integer;
topeItera : integer;
nPerfecto : integer;
perfecto  : boolean;

begin
    writeln;
    write('Introduzca un numero natural: ');
    read(n);
    writeln;
    
    topeItera := (n div 2) + 1;
    nPerfecto := 1;
    perfecto := false;
    
    for i := 2 to topeItera do
    begin
	if (n mod i = 0) then
	begin
	    nPerfecto := nPerfecto + i;
	end;
    end;
    
    if nPerfecto = n then
    begin
	perfecto := true;
    end;
    
    if perfecto then
    begin
	writeln('El numero introdcido (', n, ') es perfecto! :)');
    end
    else
    begin
	writeln('El numero introdcido (', n, ') NO es perfecto! ToT');
    end;
    writeln;
end.