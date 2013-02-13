program Fibonacci;

var 
    a0  : longint; // Terminos de fibonacci 
    a1  : longint;
    tmp : longint;
    co  : integer; 
    n   : integer; 

begin

    writeln;
    (* Lectura de Datos *)
    write('Ingrese el termino de Fibonacci a calcular: ');
    read(n);
    
    (* Verificacion de Datos *)
    while (n < 0) do
    begin
	writeln;
	writeln('No procesamos numeros negativos!');
	write('Intente de nuevo: ');
	read(n);
    end;

    (* Calculos *)
    co := 0;
    a0 := 0;
    a1 := 1;
    case n of
	0 : begin
		a1 := 0;
	    end;

	1 : begin
		a1 := 1;
	    end;
	else
	begin
	    for co := 2 to n do
	    begin
		tmp := a0 + a1;
		a0  := a1;
		a1  := tmp;
	    end;
	end; // Else del Case 
    end; // Case
	
    (* Escritura de Datos *)
    writeln('El termino F(', n, ') = ', a1);
    writeln;

end.
