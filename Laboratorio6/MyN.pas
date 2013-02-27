program FactoresPrimos;

var
m : integer;
n : integer;
divisorAct : integer;
divisorPre : integer;
co : integer;

    function Esprimo(n : integer): boolean;

    var
	co       : integer; // Variable Contador
	topPrimo : integer; // Tope de la Iteracion

    begin
	
	co := 3;
	topPrimo := (n div 2) + 1;
	
	if (n = 2) then
	begin
	    Esprimo := true;
	    exit;
	end;

	Esprimo := true;
	if (n mod 2 = 0) then
	begin
	    Esprimo := false;
	end
	else
	begin
	    while ((co < topPrimo) and Esprimo) do
	    begin
		Esprimo := (n mod co <> 0);
		co := co + 2;
	    end; // wHILE
	end; // IF

    end;

    Function DivisorPrimo(m:integer; n:integer):integer;

    var
	i : integer;

    begin

	DivisorPrimo := 1;
	for i := 2 to n do
	begin
	    if Esprimo(i) and (m mod i = 0) then
	    begin
		DivisorPrimo := i;
		exit;
	    end;
	end;
	
    end;

begin
    
    writeln;
    write('Ingrese un numero M y otro N: ');
    read(m,n);
    
    co := 0;
    divisorAct := DivisorPrimo(m,n);
    while (m <> 1) and (DivisorPrimo(m,n) <> 1) do
    begin
	if DivisorPrimo(m,n) <> 1 then
	begin
	    divisorPre := divisorAct;
	    divisorAct := DivisorPrimo(m,n);
	    if (divisorPre = divisorAct) then
	    begin
		co := co + 1;
	    end
	    else
	    begin
		write(divisorPre, '^', co, ' * ');
		co := 1;
	    end;
	    m := m div DivisorPrimo(m,n);
	end;
    end;
    write('1');
    writeln;
    
end.



    