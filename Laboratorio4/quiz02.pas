(*
 * quiz02
 *
 * Lee tres distancias (que pueden estar en años luz o parsecs) y
 * calcula la suma de ellas, expresada en petametros. Utiliza las propiedades
 * de 'x mod 2' y de 'x div 2', para la conversión a petámetros, desde años
 * luz y parsecs respectivamente.
 *
 * Autores:
 *	Prof. Ricardo Monascal
 *	Jose Pascarella
 *
 * Ultima modificacion: 02/02/2013
 *)

PROGRAM quiz02;

TYPE
      UNIDAD = (petametro, anio_luz, parsec); // Tipo de unidades de distancia.
      
      DISTANCIA = RECORD    // Tipo de distancias con unidades.
            magnitud: REAL; // Magnitud de la distancia.
            unidad: UNIDAD; // Unidad de la distancia.
      END;

CONST
      al_a_pm = 9.46; // Factor de conversión de año luz a petámetro.
      ps_a_pm = 30.9; // Factor de conversión de parsec a petámetro.

VAR
      d1: DISTANCIA; // Distancia del primer tramo.
      d2: DISTANCIA; // Distancia del segundo tramo.
      d3: DISTANCIA; // Distancia del tercer tramo.
      d1pm : REAL;   // Distancia del primer tramo (en petámetros).
      d2pm : REAL;   // Distancia del segundo tramo (en petámetros).
      d3pm : REAL;   // Distancia del tercer tramo (en petámetros).
      dT: DISTANCIA; // Distancia total.

BEGIN
      (* Entrada de datos *)
      
      WRITELN('Introduzca la primera distancia (magnitud y unidad): ');
      READ(d1.magnitud, d1.unidad);
      
      WRITELN('Introduzca la segunda distancia (magnitud y unidad): ');
      READ(d2.magnitud, d2.unidad);
      
      WRITELN('Introduzca la tercera distancia (magnitud y unidad): ');
      READ(d3.magnitud, d3.unidad);
      
      
      (* Verificacion de Datos *)
      WHILE (d1.magnitud < 0) OR (d2.magnitud < 0) OR (d3.magnitud < 0) DO
	BEGIN
	  WRITELN;
	  WRITELN('Distancia introducida no valida');
	  WRITELN('Por favor ingrese de nuevo las distancias');
	  WRITELN;
	  
	  WRITELN('Introduzca la primera distancia (magnitud y unidad): ');
	  READ(d1.magnitud, d1.unidad);
	  
	  WRITELN('Introduzca la segunda distancia (magnitud y unidad): ');
	  READ(d2.magnitud, d2.unidad);
	  
	  WRITELN('Introduzca la tercera distancia (magnitud y unidad): ');
	  READ(d3.magnitud, d3.unidad);
	END;
	
      { Precondicion: d1.magnitud >= 0 /\ d2.magnitud >= 0 /\ d3.magnitud >= 0
                   /\ d1.unidad <> petametro /\ d2.unidad <> petametro
                   /\ d3.unidad <> petametro }
            
            (* Cálculos *)
            
            d1pm := d1.magnitud * ( (ord(d1.unidad) mod 2) * al_a_pm
                                  + (ord(d1.unidad) div 2) * ps_a_pm );
            d2pm := d2.magnitud * ( (ord(d2.unidad) mod 2) * al_a_pm
                                  + (ord(d2.unidad) div 2) * ps_a_pm );
            d3pm := d3.magnitud * ( (ord(d3.unidad) mod 2) * al_a_pm
                                  + (ord(d3.unidad) div 2) * ps_a_pm );
            dT.magnitud := d1pm + d2pm + d3pm;
            dT.unidad := petametro;
            
      { Postcondicion: dT = d1 + d2 + d3 /\ dT.unidad = petametro }
      
      (* Salida de resultados *)
      
      WRITELN('La distancia total (en petametros) es: ');
      WRITELN(dT.magnitud:0:4);

END.