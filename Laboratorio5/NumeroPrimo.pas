program NumeroPrimo;

var
    n        : integer;
    co       : integer;
    topPrimo : integer;
    primo    : boolean;
    cotaAct  : integer;
    cotaPre  : integer;

begin
    writeln;

    (* Lectura de Datos *)
    write('Ingrese un numero primo: ');
    read(n);
    co       := 3;
    topPrimo := (n div 2) + 1;
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
	
	{Cota: 
	    topPrimo + 1 - co
	}
	cotaAct := topPrimo + 1 - co;


	while (co < topPrimo) do
	begin
	    if (n mod co = 0) then
	    begin
		primo := false;
		break;
	    end;
	    co := co + 2;

	    (* Chequeo de la funcion de cota *)
	    cotaPre := cotaAct;
	    cotaAct := topPrimo + 1 - co;
	    if ((cotaAct < 0) or (cotaAct >= cotaPre)) then 
	    begin
		writeln('ERROR AL VERIFICAR LA FUNCION DE COTA.');
		writeln('POSIBILIDAD DE CICLO INFINITO.');
		halt;
	    end;
	    writeln('Valor de funcion de cota = ', cotaAct);
	    
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