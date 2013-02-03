(*
 * Extra4
 * Este programa multiplica numeros complejos
 * Autor:   Jose Pascarella
 * Ultima modificacion: 16/01/2013
 *)

program Extra4;

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
  
  result.pReal := complex1.pReal * complex2.pReal - complex1.pImag * complex2.pImag;
  result.pImag := complex1.pImag * complex2.pReal + complex2.pImag * complex1.pReal;
  
  {Postcondicion: result.pReal = complex1.pReal * complex2.pReal - complex1.pImag * complex2.pImag /\
                    result.pImag = complex1.pImag * complex2.pReal + complex2.pImag * complex1.pReal}
                    
  writeln('El resultado de la multiplicacion es: ',result.pReal:0:2,' ', result.pImag:0:2, 'i');
  writeln;
  writeln;
  
end.