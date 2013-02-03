(*
 * Ejercicio5
 * Este programa suma numeros complejos
 * en una misma linea
 * Autor:   Jose Pascarella
 * Ultima modificacion: 16/01/2013
 *)

program Ejercicio4;

type
  complejo = record
    pReal: real;
    pImag: real;
  end;

var

  complex1 : complejo;
  complex2 : complejo;
  result   : complejo;

begin

  writeln;
    
  write('Ingrese el primer numero Complejo: ');
  read(complex1.pReal, complex1.pImag);

  write('Ingrese el segundo numero Complejo: ');
  read(complex2.pReal, complex2.pImag);
  
  {Precondicion: true}
  
  result.pReal := complex1.pReal + complex2.pReal;
  result.pImag := complex1.pImag + complex2.pImag;
  
  {Postcondicion: result.pReal := complex1.pReal + complex2.pReal /\
		  result.pImag := complex1.pImag + complex2.pImag}
  
  writeln('El resultado de la suma es: ',result.pReal:0:2,' ', result.pImag:0:2, 'i');
  writeln;
  writeln;
    
  
end.
