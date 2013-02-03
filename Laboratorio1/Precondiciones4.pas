program Precondiciones3;

var n : integer;
    k : integer;
    v : boolean;

begin
    
    read(n);
    {precondicion: (b >= 0) }
    
    {postcondicion: v == (%exist k: 0 <= k <= n: k * k = n) }
    write(v);

end.

        
