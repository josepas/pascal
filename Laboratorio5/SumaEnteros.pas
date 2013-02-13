program SumaEnteros;

var
    a : integer; // Contador para el ciclo while
    n : integer; // Numero hasta el cual se realiza la suma
    s : integer; // Resultado de la suma

begin
    
    writeln;
    (* Lectura de Datos *)
    write('Introduzca un N para la suma de Enteros: ');
    read(n);
    
    (* Verificacion de Datos *)
    while (n < 0) do;
    begin
	writeln;
	writeln('No procesamos numeros negativos!');
	write('Intente de nuevo: ');
	read(n);
    end;
    
    (* Calculos *)
    a := 1;
    while (a <= n) do
    begin
	s := s + a;
	a := a + 1;
	
    end;
    
    (* Escritura de Resultado *)
    writeln;
    writeln('La suma de los enteros hasta (', n, ') es = ', s); 

end.
