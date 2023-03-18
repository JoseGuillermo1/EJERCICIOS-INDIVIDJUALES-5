Funcion resultado <- NivelAños ( hemoglobina, nombre, cant, sexo )
	Si cant>1 y cant<=5 Entonces
		Si hemoglobina>=11.5 y hemoglobina<=15 Entonces
			resultado="negativo"
			Escribir nombre, "_es_", resultado, "_a anemia"
		SiNo
			resultado="positivo"
			Escribir nombre, "_es_", resultado, "_a anemia"
		Fin si
	SiNo
		Si cant>5 y cant<=10 Entonces
			Si hemoglobina>=12.6 y hemoglobina<=15.5 Entonces
				resultado="negativo"
				Escribir nombre, "_es_", resultado, "_a anemia"
			SiNo
				resultado="positivo"
				Escribir nombre, "_es_", resultado, "_a anemia"
			Fin Si
		SiNo
			Si cant>10 y cant<=15 Entonces
				Si hemoglobina>=13 y hemoglobina<=15.5 Entonces
					resultado="negativo"
					Escribir nombre, "_es_", resultado, "_a anemia"
				SiNo
					resultado="positivo"
					Escribir nombre, "_es_", resultado, "_a anemia"
					
				Fin Si
			SiNo 
				Si sexo="femenino" Entonces
					Si hemoglobina>=12 y hemoglobina<=6 Entonces
						resultado="negativo"
						Escribir nombre, "_es_", resultado, "_a anemia"
					SiNo
						resultado="positivo"
						Escribir nombre, "_es_", resultado, "_a anemia"
					Fin Si
				SiNo
					Si hemoglobina>=14 y hemoglobina<=15 Entonces
						resultado="negativo"
						Escribir nombre, "_es_", resultado, "_a anemia"
					SiNo
						resultado="positivo"
						Escribir nombre, "_es_", resultado, "_a anemia"
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinFuncion

Funcion resultado2 <- NivelMeses ( hemoglobina, nombre, cant )
	Si cant>=0 y cant<=1 Entonces
		Si hemoglobina>=13 y hemoglobina<=26 Entonces
			resultado2="negativo"
			Escribir nombre, "_es_", resultado2, "_a anemia"
		SiNo
			resultado2="positivo"
			Escribir nombre, "_es_", resultado2, "_a anemia"
		Fin Si
	SiNo
		Si cant>1 y cant<=6 Entonces
			Si hemoglobina>=10 y hemoglobina<=18 Entonces
				resultado2="negativo"
				Escribir nombre, "_es_", resultado2, "_a anemia"
			SiNo
				resultado2="positivo"
				Escribir nombre, "_es_", resultado2, "_a anemia"
			Fin Si
		SiNo
			Si hemoglobina>=11 y hemoglobina<=15 Entonces
				resultado2="negativo"
				Escribir nombre, "_es_", resultado2, "_a anemia"
			SiNo
				resultado2="positivo"
				Escribir nombre, "_es_", resultado2, "_a anemia"
			Fin Si
		Fin Si
	Fin Si
Fin Funcion

Funcion determinante <- DeterminarEdad ( meses, num, años )
	Si meses="m" Entonces
		determinante=num
	SiNo
		determinante=años
	Fin Si
Fin Funcion



Algoritmo Anemia
	Definir nombre, sexo, edadesc, resultado,resultado2, meses,num Como Caracter
	Definir hemoglobina, determinante,edad Como Real
	Definir cant, años Como Entero
	Definir femenino, masculino Como Logico
	Escribir "Bienvenido al sistema medico para determinar si padeces de anemia"
	Escribir "Ingrese el nombre del paciente"
	Leer nombre
	Escribir "Por favor ingrese su edad, por ejemplo 6-meses o 2-años"
	Leer edadesc
	Escribir "Ingrese su sexo"
	Leer sexo
	Escribir "Ingrese su nivel de hemoglobina actual"
	Leer hemoglobina
	edad=longitud(edadesc)
	meses=subcadena(edadesc,3,3)
	num=subcadena(edadesc,1,1)
	cant=ConvertirANumero(num)
	determinante=DeterminarEdad ( meses, num, años )
	Si determinante=cant Entonces
		resultado2=NivelMeses ( hemoglobina, nombre, cant )
	SiNo
	    resultado=NivelAños( hemoglobina, nombre, cant, sexo )
	Fin Si
	
FinAlgoritmo
