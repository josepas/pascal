program FactoresPrimos;

var
n : integer;


function Esprimo(n : integer): boolean;

begin
    
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
	{Invariante:
	    n > 0
	    /\ Esprimo == (% forall x : 2 <= x < n: (n MOD x) != 0)
	}
	while ((co < topPrimo) and Esprimo) do
	begin
	    Esprimo := (n mod co <> 0);
	    co := co + 2;
	end; // wHILE
    end; // IF

end;












begin
    writeln;
    write('Ingrese un numero: ');
    read(n)
    if Esprimo(n) then
    begin
	writeln('El numero es Primo');
    end
    else
    begin
	writeln('El numero NO es Primo');
    end;







end.