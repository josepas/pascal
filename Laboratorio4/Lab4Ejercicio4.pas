program Lab4Ejercicio4;

var 
    n : integer; // Numero ingresado por el usuario
    i : integer; // Contador
    cuadradoPerfecto : boolean; // Booleano de verificacion (Cuadrado Perfecto)

begin
  
  (*Lectura de Datos*)
  writeln;
  write('Ingrese un numero de cuadrado perfecto: ');
  read(n);
  
  (*Verificacion de Datos*)
  while (n < 1) do
  begin
    writeln;
    write('Por favor, ingrese un entero positivo: ');
    read(n);
    writeln;
  end;
  
  
  cuadradoPerfecto := false;
  i := 0;
  {precondicion: (b >= 0) }
  while (i < n) and (not cuadradoPerfecto) do
  begin
  i := i + 1;
  cuadradoPerfecto := ((i * i) = n);
  end;
  {postcondicion: v == (%exist k: 0 < k <= n: k * k = n) }
  
  
  (*Escritura de Datos*)
  if cuadradoPerfecto then
  begin
    writeln('El numero ingresado es un cuadrado perfecto (', i, ' * ', i, ') = ', n); 
  end
  else
  begin
    writeln('El numero ingresado no es un cuadrado perfecto');
  end;
  
  writeln;
    
end.


