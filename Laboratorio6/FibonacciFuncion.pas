program FibonacciFuncion;

const
    topeArreglo = 99;

var
    top : integer;
    n   : array[0..topeArreglo] of integer;
    i   : integer;

function Fibonacci(n : integer):longint;
var 
    a0  : longint;
    a1  : longint;
    tmp : longint;
    co  : integer;
begin
    {Precondicion:
	n >= 0
    }
    a0 := 0;
    a1 := 1;
    case n of
	0 : begin
		Fibonacci := 0;
	    end;

	1 : begin
		Fibonacci := 1;
	    end;
	else
	begin
	   
	    {Invariante:
		n >= 0
		/\ co <= n
		/\ f(n) = f(n-1) + f(n -2)
	    }
	    for co := 2 to n do
	    begin
		tmp := a0 + a1;
	
		(* Swap de las variables *)
		a0  := a1;
		a1  := tmp;
		
	    end;
	    Fibonacci := a1;
	end; // Else del Case 
    end; // Case
    
    {Postcondicion:
	f(n) = f(n-1) + f(n -2)
    }	
end;

begin

    writeln;
    write('Ingrese un tope para la secuencia (n <= 99): ');
    read(top);
    writeln;
    
    if top < 1 then
    begin
	writeln('Tamano de la Secuencia no valido... Dying! :(');
	halt;
    end;
    
    for i := 0 to (top - 1) do
    begin
	write('Ingrese el Termino numero ', i+1, ': '); 
        read(n[i]);
	
    end;
    
    for i := 0 to (top - 1) do
    begin
	if (i mod 3 = 0) then
	begin
	    writeln;
	end;
	write('F(', n[i], ')= ', Fibonacci(n[i]), '       ');
    end;
    writeln;
end.
    
