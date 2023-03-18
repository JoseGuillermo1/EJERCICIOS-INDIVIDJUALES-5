Funcion cargo <- divisible ( resultado2, resultado3, resultado5, nombre )
	Si resultado2 = 0 y resultado3 = 0 y resultado5 = 0 Entonces
		cargo="Director General"
		Escribir nombre, "_su categoria es:_" , cargo
	Sino Si resultado2 = 0 y resultado3 <> 0 y resultado5 <> 0 Entonces
			cargo="Staff"
			Escribir nombre, "_su categoria es:_" , cargo
		Sino Si resultado2 <> 0 y resultado3 <> 0 y resultado5 <> 0 Entonces
				cargo="Seguridad"
				Escribir nombre, "_su categoria es:_" , cargo
			Sino Si resultado2 <> 0 y resultado3 = 0 y resultado5 = 0 Entonces
					cargo="Directivo"
					Escribir nombre, "_su categoria es_" , cargo
				Fin Si
		    Fin si
		Fin Si
	Fin Si
Fin Funcion


Algoritmo CODIGO_DE_EMPLEADO
	Definir nombre, cargo Como Caracter 
	Definir codigo, resultado2, resultado3, resultado5 Como Real
	Escribir "Ingrese su nombre"
	Leer nombre
	Escribir "BIENVENIDO_" , nombre, "por favor ingrese su codigo de tres digitos"
	Leer codigo 
	resultado2= codigo mod 2
	resultado3= codigo mod 3
	resultado5= codigo mod 5
	cargo= divisible ( resultado2, resultado3, resultado5, nombre )
	Escribir "GRACIAS"
FinAlgoritmo
