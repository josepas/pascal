program Precondiciones2;

var 
    a       : integer;
    b       : integer;
    v       : boolean;
    par     : boolean;
    aMayorb : boolean;

begin
    
    read(a, b);
    {precondicion: true}
    v := a > b and ((b mod 2) = 0);
    {postcondicion: v ==  (a > b) /\ ((b mod 2) = 0)}
    write(v);
end.

        
