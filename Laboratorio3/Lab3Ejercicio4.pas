(*
 * Lab3Ejercicio4
 * Programa que clasifica una secuencia en: Ascendente,
 * Descendente u Ordenada.
 * Autor:   Jose Pascarella
 * Ultima modificacion: 27/01/2013
 *)

program Lab3Ejercicio4;
   
var
  a    : integer;
  b    : integer;
  asc  : boolean;
  dsc  : boolean;    
   
begin
  
  writeln;
  writeln('Ingrese una secuencia de numeros: ');
  read(a);
  if a <= 0 then exit;
  read(b);
  if b <= 0 then exit;
  
  asc := b > a;
  dsc := b < a;
  {Precondicion: a > 0 /\ b > 0}
  repeat
    if b > a then
      begin
	asc := true;
      end
    else if b < a then
      begin
	dsc := true;
    end;
    a := b;
    read(b);
  until (b <= 0);
  
  if asc = dsc then
    begin
      writeln('la sucesion es desordenada');
    end
  else if dsc then
    begin
      writeln('la sucesion es descendente');
    end
  else 
    begin
      writeln('la sucesion es ascendente');
  end;
  {Postcondicion: asc = forall S(i) \: S(N) < S(N + 1)
		  dsc = forall S(i) \: S(N + 1) < S(N)} 
  writeln;
  writeln;

end.
