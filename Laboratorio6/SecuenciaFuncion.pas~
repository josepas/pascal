program SecuenciaFuncion;

const
    topeArreglo = 99;
var
    top : integer;
    n : array[0..topeArreglo] of integer;
    i : integer;
    actOrdenada : integer;
    preOrdenada : integer;
    creciente : boolean;

function Comparacion (m:integer; n:integer):integer;
var 
    creciente : boolean;
begin
    {Precondicion:
    
    }
    creciente := n > m;
    if creciente then
    begin
	Comparacion := 1;
    end
    else
    begin
	Comparacion := 0;
    end;
    {Postcondicion:
    
    }
end;

begin
    writeln;
    write('Ingrese un tope para la secuencia (n <= 99): ');
    read(top);
    writeln;
    
    for i := 0 to (top - 1) do
    begin
	write('Ingrese el Termino numero ', i+1, ': '); 
        read(n[i]);
    end;
    
    creciente := n[1] > n[0];
    if creciente then
    begin
	actOrdenada := 1;
    end
    else
    begin
	actOrdenada := 0;
    end;
    
    
    for i := 1 to (top - 2) do
    begin
	preOrdenada := actOrdenada;
        actOrdenada := Comparacion(n[i],n[i+1]);
        if actOrdenada <> preOrdenada then
        begin
	    writeln('La secuencia ingresada esta Desordenada!');
	    writeln;
	    halt;
	end;
    end;
    
    if actOrdenada = 1 then
    begin
	writeln('La secuencia ingresada es Creciente!');
    end
    else
    begin
	writeln('La secuencia ingresada es Decreciente!');
    end;

end.
    