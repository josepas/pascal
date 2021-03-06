(*
 * Lab3Ejercicio2
 * Programa que crea un tipo para el ingreso de fechas
 * y verifica si una fecha ingresada es valida
 * Autor:   Jose Pascarella
 * Ultima modificacion: 27/01/2013
 *)

program Lab3Ejercicio2;

type
    diasMes = 1..31; 
    meses = (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto,
	      Septiembre, Octubre, Noviembre, Diciembre);
	      
    fecha = record // tipo usado para las fechas
      dia : diasMes;
      mes : meses;
      ano : integer;
    end;
    
var
  x : fecha;
  valid : boolean;
  
begin

  writeln;
    
  write('Introduzca una Fecha Valida(19 Septiembre 2012): ');
  read(x.dia, x.mes, x.ano);
  writeln;
  
  {Precondicion: ((x.mes = Enero V Marzo V Mayo V Julio V Agosto V Ocutbre V Diciembre) => 1 <= x.dia <= 31) V
		   (x.mes = Marzo V Abril V Junio V Septiembre V Noviembre) => 1 <= x.dia <= 30 V
		    (x.mes = Febrero /\ x.ano mod 4 = 0 => 1 <= x.dia <= 29} 
		    
  valid := true;
  case x.mes of 
    Febrero : 
      begin 
	if (x.ano mod 4) = 0 then
	 begin
	  if x.ano mod 400 = 0 then
	      begin
		if x.dia > 28 then
		  begin
		    writeln('La fecha ingresada no es valida!');
		    valid := false;
		  end;
	      end
	  else
	    begin
	      if x.dia > 29 then
		begin
		  writeln('La fecha ingresada no es valida!');
		  valid := false;
		end;
	    end; 
	  end
	else
	  begin
	    if x.dia > 28 then 
	      begin
		writeln('La fecha ingresada no es valida!');
		valid := false;
	      end;
	end;
	  
      end; // case Febrero
      
    Abril, Junio, Septiembre, Noviembre :
      begin
	if x.dia > 30 then
	  begin
	    writeln('La fecha ingresada no es valida!');
	    valid := false;
	  end;
      end;
    
    else 
    (*El programa nunca entra aqui porque se supone 
	que la variable no puede valer mas de 31*)
      begin
	writeln('Si ingreso un Mes de 31 dias la fecha siempre sera valida no importa cual dia coloque,');
	writeln('esto se debe a que mi variable para la parte de los dias en la fecha	es de un tipo');
	writeln('enumerado (1..31) y al tratar la condicion (fecha.dia > 31 => fecha invalida), el');
	writeln('compilador dice: codigo inalcanzable. Debido a que esa variable no deberia por la');
	writeln('definicion de su tipo, ser nunca mayor a 31, no se porque no lo crashea como');
	writeln('en el caso de ingresar un mes mal escrito :S. Gracias xD');
	writeln;
	if x.dia > 31 then
	  begin
	    write('La fecha ingresada no es valida!');
	    valid := false;
	  end;
      end;
  end; // case
  
  {Postcondicion: True}
    
  if valid then
    begin
      writeln('La fecha ingresada es valida!');
    end;
    
  writeln;

end.
