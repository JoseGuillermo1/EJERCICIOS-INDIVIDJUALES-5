Funcion suma <- sum (a,b,c)
	suma <- a+b+c
FinFuncion

Funcion Promedio = prom (a,b,c)
	Promedio <- (a+b+c)/3
FinFuncion

Funcion mayorsito = mayor_ (a,b,c)
	Si a>b Y a>c Entonces
		mayorsito <- a
	SiNo
		Si b>a Y b>c Entonces
			mayorsito <- b
		SiNo
			Si c>a Y c>b Entonces
				mayorsito <- c
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion menorsito = menor_ (a,b,c)
	Si a<b Y a<c Entonces
		menorsito <- a
	SiNo
		Si b<a Y b<c Entonces
			menorsito <- b
		SiNo
			Si c<a Y c<b Entonces
				menorsito <- c
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion var_azar = azar_ (a,b,c)
	Si a>b Y a>c Entonces
		var_azar <- a
	SiNo
		Si b>a Y b>c Entonces
			var_azar <- b
		SiNo
			Si c>a Y c>b Entonces
				var_azar <- c
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion raiz_ = raiz_cuadrada (a,b,c)
	raiz_ <- raiz(a+b+c)
FinFuncion

Funcion ptm = potencia (a,b,c)
	Si a<b Y a<c Entonces
		ptm <- a*a
	SiNo
		Si b<a Y b<c Entonces
			ptm <- b*b
		SiNo
			Si c<a Y c<b Entonces
				ptm <- c*c
			FinSi
		FinSi
	FinSi
FinFuncion

Algoritmo sin_titulo
	Definir n1,n2,n3 Como Entero
	Definir comando,sumatoria,Promedio,Numero_Mayor,Numero_menor,Numero_al_azar,raiz_de_los_numeros,Potencia_del_menor Como Caracter
	Escribir 'ingrese tres numeros'
	Leer n1
	Leer n2
	Leer n3
	Escribir 'Ingrese el comando que desea utilizar' //Las opciones son sumatoria,Promedio,Numero_Mayor,Numero_menor,Numero_al_azar,raiz_de_los_numeros,Potencia_del_menor
	Leer comando
	Si comando='sumatoria' O comando='Sumatoria' Entonces
		Escribir 'la suma es: ',sum(n1,n2,n3)
	SiNo
		Si comando='promedio' O comando='Promedio' Entonces
			Escribir 'el promedio es: ',prom(n1,n2,n3)
		SiNo
			Si comando='numero mayor' O comando='Numeor mayor' Entonces
				Escribir 'el numero mayor es: ',mayor_(n1,n2,n3)
			SiNo
				Si comando='numero menor' O comando='Numero menor' Entonces
					Escribir 'el numero menor es: ',menor_(n1,n2,n3)
				SiNo
					Si comando='numero al azar' O comando='Numero al azar' Entonces
						Escribir 'el numero al azar es: ',azar_(n1,n2,n3)
					SiNo
						Si comando='raiz de los numeros' o comando='Raiz de los numeros'  Entonces
							Escribir ' la raiz de los numeros es :',raiz_cuadrada(n1,n2,n3)
						SiNo
							Si comando="potencia del menor" o comando="Potencia del menor" Entonces
							Escribir "la potencia del menor es: ",potencia(n1,n2,n3)
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
