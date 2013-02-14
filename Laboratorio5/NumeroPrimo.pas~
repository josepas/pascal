program NumeroPrimo;

var
    n        : integer;
    co       : integer;
    topPrimo : integer;
    primo    : boolean;

begin
    writeln;

    (* Lectura de Datos *)
    write('Ingrese un numero primo: ');
    read(n);
    
    (* Verificacion de Datos *)
    while (n < 0) do
    begin
	writeln;
	writeln('No procesamos numeros negativos!');
	write('Intente de nuevo: ');
	read(n);
    end;
    
    primo := true;
    if (n mod 2 = 0) then
    begin
	primo := false;
    end
    else
    begin
	co       := 3;
	topPrimo := (n div 2) + 1;
	while co < topPrimo do
	begin
	    if (n mod co = 0) then
	    begin
		primo := false;
		break;
	    end;
	    co := co + 2;
	end;
    end;
    
    if (n = 2) then
    begin
	primo := true;
    end;
    
    if primo then
    begin
	writeln('El numero ingresado es primo! :)')
    end
    else
    begin
	writeln('EL numero ingresado NO es primo!')
    end;
    
    
    
    
end.