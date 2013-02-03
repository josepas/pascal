program Precondiciones3;

var a : integer;
    b : integer;
    c : integer;
    v : boolean;
begin
    
    read(a, b, c);
    {precondicion: b != 0}
   
    {postcondicion: v == c = (a / b)  }
    write(v);
end.

        
