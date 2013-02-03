program Precondiciones3;

var a : integer;
    b : integer;
    c : real;

begin

  writeln;
  write('Ingrese los numeros a dividir (a / b): ');
  read(a, b);
  
  while (b = 0) do
  begin
    writeln;
    writeln('ERROR: no existe la division entre 0!');
    writeln;
    write('Ingrese un divisor distinto de 0: ');
    read(b);
  end;
  
  writeln;
  {precondicion: b != 0}
  c := a / b;
  writeln('La division efectuada fue (', a, ' / ', b, ') = ', c:0:4);
  writeln;
  {postcondicion: c = (a / b)}

end.

        
