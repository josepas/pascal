program palindromo;

var
A : Array[0..5] of longint;
t : longint;



  Procedure ArregloEnteros(y : longint; VAR arr : array of longint);
  
  var
    x: longint;
    i : longint;
    aux : longint;
  
  begin

    x := y;
    aux := 100000;
    for i := 0 to 5 do
      begin
	arr[i] := x div aux;
	x := x - (aux * arr[i]);
	aux := aux div 10;
      end;
  end; 


begin
// 998 001  
    ArregloEnteros(123456, A);
    writeln(A[0]);
    writeln(A[1]);
    writeln(A[2]);
    writeln(A[3]);
    writeln(A[4]);
    writeln(A[5]);
    
  for t := 998001 downto 100000 do
    begin
	
    





    end;


  for t := 0 to 5 do
    begin
      



    end;

end.