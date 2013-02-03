program Precondiciones1;

var n : integer;
    r : integer;

begin
    
    read(n);
    {precondicion: true}
    
    {postcondicion: (n<0 ==> r = -n) /\ (n>=0 ==> r=n)}
    write(r);
end

        
