program Secuencia;

var
    n : longint;
    pasos : integer;

begin
    writeln;
    
    pasos := 0;
    
    write('Introduzca un numero natural: ');
    read(n);
    writeln;
    
    writeln('Paso = ', pasos, '    N = ', n);
    writeln;
    while (n <> 4) do
    begin
	if (n mod 2 = 0) then
	begin
	    n := n div 2;
	end
	else
	begin
	    n := n * 3 + 1;
	end;
	pasos := pasos + 1;
	writeln('Pasos = ', pasos, '   N = ', n);
	
    end;
end.