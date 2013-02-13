Program Factorial;

var
    fact : integer; // Numero de factorial a calcular
    a	 : integer; // Contador para los calculos
    rst  : longint; // Resultado del factorial


begin
    
    writeln;
    (* Lectura de Datos *)
    writeln('Este programa calcula el factorial de un numero');
    write('Ingrese un numero: ');
    read(fact);
        
    (* Verificacion de Datos *)
    while (fact < 0) do
    begin
	writeln;
	writeln('No procesamos numeros negativos!');
	write('Intente de nuevo: ');
	read(fact);
    end;
    
    (* Calculos *)
    case fact of
	0 : begin
		rst := 1;
	    end;
	else
	begin
	    a := 1;
	    rst := 1;
	    while (a <= fact) do
	    begin
		rst := rst * a;
		a := a + 1;
	    end;
	end;
    end;
	    
    (* Escritura de Resultados *)
    writeln(fact, '! = ', rst);
    writeln;

end.