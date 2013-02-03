(*
 * Lab3Ejercicio1
 * Programa que pide tres puntos en el plano cartesiano
 * y forma un triangulo, clasificandolo como: Equilatero
 * Isoceles o Escaleno
 * Autor:   Jose Pascarella
 * Ultima modificacion: 27/01/2013
 *)

program Lab3Ejercicio1;

type
  punto = record // tipo para puntos en el plano R2
    x : integer;
    y : integer;
  end;
  
  triangulo = (Equilatero, Isoceles, Escaleno);  
  
var
  
  Trian : triangulo; 
  (*Variables para los puntos*)
  p1    : punto; 
  p2    : punto; 
  p3    : punto;
  
  (*Variables para las distancias entre puntos*)
  d12	: real; 
  d23	: real;
  d31   : real;
  
  (*Variables para las pendientes entre puntos*)
  m12 	: real;
  m13	: real;
  
begin

  writeln;
  
  write('Ingrese el primer punto (x y): ');
  read(p1.x, p1.y);
  
  write('Ingrese el segundo punto (x y): ');
  read(p2.x, p2.y);
  
  write('Ingrese el tercer punto (x y): ');
  read(p3.x, p3.y);
  
  writeln;
  
  writeln('Se genero el triangulo con los puntos (', p1.x, ', ', p1.y, '), (', p2.x, ', ', p2.y, ') y (', p3.x, ', ', p3.y, ')'); 
  
  writeln;
  
  (*Calculo de las pendientes*)
  
  {Precondicion: (p2.x - p1.x) /\ (p3.x - p1.x) != 0 } 
  if (p2.x - p1.x) <> 0 then
    begin
      m12 := (p2.y - p1.y) / (p2.x - p1.x);
    end
  else
    begin
      m12 := 0;
  end;
  
  if (p3.x - p1.x) <> 0 then
    begin
      m13 := (p3.y - p1.y) / (p3.x - p1.x);
    end
  else
    begin
      m13 := 0;
  end;
  {Postcondicion: m12 = (p2.y - p1.y) / (p2.x - p1.x) /\
		    m13 = (p3.y - p1.y) / (p3.x - p1.x) }
  
  
  writeln('La pendiente entre los puntos 1 y 2 es: ', m12:0:2);
  writeln('La pendiente entre los puntos 1 y 3 es: ', m13:0:2);
  
  writeln;
  
  (* Distancia entre los pares de puntos *)
  
  {Precondicion: true}
  
  d12 := Sqrt((p2.x - p1.x) * (p2.x - p1.x) + (p2.y - p1.y) * (p2.y - p1.y));
  d23 := Sqrt((p3.x - p2.x) * (p3.x - p2.x) + (p3.y - p2.y) * (p3.y - p2.y));
  d31 := Sqrt((p3.x - p1.x) * (p3.x - p1.x) + (p3.y - p1.y) * (p3.y - p1.y));
  
  {Postcondicion: d12 := Sqrt((p2.x - p1.x) * (p2.x - p1.x) + (p2.y - p1.y) * (p2.y - p1.y)) /\
  d23 = Sqrt((p3.x - p2.x) * (p3.x - p2.x) + (p3.y - p2.y) * (p3.y - p2.y)) /\
  d31 = Sqrt((p3.x - p1.x) * (p3.x - p1.x) + (p3.y - p1.y) * (p3.y - p1.y))}
  
  writeln('Distancia entre los puntos 1 y 2: ',d12:0:4);
  writeln('Distancia entre los puntos 2 y 3: ',d23:0:4);
  writeln('Distancia entre los puntos 1 y 3: ',d31:0:4);
  
  writeln;
  
  {Precondicion: True}
  if m12 = m13 then 
    begin 
      writeln('Se forma un triangulo degenerado');
    end
  
  else
    begin
      if (d12 = d23) and (d12 = d31) then
	begin  
	  Trian := Equilatero;
	end
      else if (d12 <> d23) and (d12 <> d31) and (d23 <> d31) then
	begin  
	  Trian := Escaleno;
	end
      else
	begin
	  Trian := Isoceles;
      end;
      writeln('El Triangulo resultante es: ', Trian);
  end;
  {Postcondicion: Trian == (d12 = d23 /\ d12 = d31) V 
		     (d12 <> d23) /\ (d12 <> d31) /\ (d23 <> d31) }
  writeln;

end.
