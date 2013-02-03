program Precondiciones1;

var n : integer;
    r : integer;

begin
    
    writeln;
    write('Ingrese un numero: ');
    read(n);
    {precondicion: true}
    if n < 0 then
    begin
      r := -n;
    end
    else
    begin
      r := n;
    end;
    {postcondicion: (n < 0 ==> r = -n) /\ (n >= 0 ==> r = n)}
    writeln('el valor absoluto de |', n, '| es: ', r);
end.

        
