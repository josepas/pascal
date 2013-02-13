(*
 * Lab4Extra4
 * Programa que imprime el segundo siguiente a una
 * hora militar cualquiera
 * Autor:   Jose Pascarella
 * Ultima modificacion: 04 / 02 / 2013
 *)

program Lab4Extra4;

type
  hora = 00..23;
  minSeg = 00..59;
  
  horaMilitar = record // tipo para la hora militar
    seg : minSeg;
    min : minSeg;
    hr  : hora;
  end;
  
var
  militar : horaMilitar; // variable para la hora militar
    
begin
  writeln;
  
  (*Lectura de Datos*)
  write('Ingrese hora militar(HH MM SEG): '); 
  read(militar.hr, militar.min, militar.seg);
  writeln;
  
  (* Verificacion de Datos *)
  while (militar.seg < 0) or (militar.seg > 59) or (militar.min < 0) or (militar.min > 59) or (militar.hr < 0) or (militar.hr > 23) do
    begin
      writeln('Hora ingresada no valida.');
      write('Ingrese hora militar(HH MM SEG): '); 
      read(militar.hr, militar.min, militar.seg);
      writeln;
    end;
   
  {Precondicion: 0 <= militar.hr  /\ militar.hr < 24 /\ 0 <= militar.min /\ militar.min < 60 /\ 
		    0 <= militar.seg /\   militar.seg < 60 }
  (*Condicional que suma 1 segundo y agrega minutos y horas segun el caso*)
  if (militar.seg = 59) then
    begin
      militar.seg := 00;
      militar.min := militar.min + 1;
      if (militar.min > 58) then
	begin
	  militar.min := 00;
	  if (militar.hr = 23) then
	    begin
	      militar.hr := 00;
	    end
	  else
	    begin
	      militar.hr := militar.hr + 1;
	  end;
	end;
    end
  else
    begin
      militar.seg := militar.seg + 1;
  end;
  {Postcondicion: militar = militar + 1seg}
  
  (*Escritura de Datos*)
  writeln;  
  writeln(militar.hr, ':', militar.min, ':', militar.seg);
  writeln;

end.
