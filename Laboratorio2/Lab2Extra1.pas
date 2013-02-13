(*
 * Extra1
 * Verifica si L es una vocal o consonante
 * Autor:   Jose Pascarella
 * Ultima modificacion: 22/01/2013
 *)

program Extra1;

var
  L      : char;
  verify : boolean;
  S	 : String;
  
begin
    
  writeln;
  write('Introduzca una letra a verificar: ');
  read(L);
  
  S := "Ingrese una vocal";
  repeat
    writeln(S);
    s := "La letra ingresada no es una vocal, siga intentando:";
    read(L)
    
    
  until (L = 'a') or (L = 'e') or (L= 'i') or (L = 'o') or (L = 'u');
  
  
    
    
    
    {Precondicion: true}
    
    
    
    
    
    
    
    
    
    
    
    
    
    verify := (L = 'a') or (L = 'e') or (L= 'i') or (L = 'o') or (L = 'u');
    
    {Postcondicion: true}
    
    writeln(verify);
    writeln;
end.
