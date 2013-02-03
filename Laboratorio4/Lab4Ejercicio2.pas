program Precondiciones2;

var 
    a       : integer;
    b       : integer;
    v       : boolean;

begin
    write('Ingrese 2 numeros: ');
    read(a, b);
    writeln;
    {precondicion: true}
    v := (a > b) and ((b mod 2) = 0);
    {postcondicion: v ==  (a > b) /\ ((b mod 2) = 0)}
    writeln('(a > b) /\ (b par) == ', v);
end.

        
