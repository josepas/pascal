(*
 * Lab4Extra1
 * Verifica si L es una vocal o consonante
 * Autor:   Jose Pascarella
 * Ultima modificacion: 04/02/2013
 *)

program Lab4Extra1;

var
  L      : char;    // Letra a Verificar
  S	 : String;  // Mensajes para el usuario
  
begin
    
  writeln;
  
  {Precondicion: True}
  S := 'Ingrese una vocal: ';
  repeat
    write(S);
    readln(L);
    writeln;
    S := 'La letra ingresada no es una vocal, siga intentando: ';
    writeln;
  until (L = 'a') or (L = 'e') or (L= 'i') or (L = 'o') or (L = 'u');
  {Postcondicion: True}
  
end.
