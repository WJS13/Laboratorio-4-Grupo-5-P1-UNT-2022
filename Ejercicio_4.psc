Funcion  resultado<-FUNCION_RECURSIVA(n)

	si n>3 Entonces
		resultado= 2*FUNCION_RECURSIVA(n-1)-FUNCION_RECURSIVA(n-4)
		//Lo anteriormente escrito es equivalente a "resultado= FUNCION_RECURSIVA(n-1)+FUNCION_RECURSIVA(n-2)+FUNCION_RECURSIVA(n-3)"
	sino 
		si n=1
			resultado=0
		FinSi
		si n=2 o n=3
			resultado=1
		FinSi
		
	FinSi
	
FinFuncion

Proceso TERMINO_N_ESIMO_TRIBONACHI
	definir n Como Entero
	Definir desicion Como Caracter
	
	Repetir
		Escribir "Ingrese el lugar del valor que desea encontrar"
		Leer n
		resultado<-FUNCION_RECURSIVA(n)
		Escribir "El término de lugar ",n," es: ",resultado
		Escribir "¿Desea seguir usando el programa?"
		Escribir "Si es así escriba SI, caso contrario escriba NO"
		Leer desicion
	Hasta Que desicion=="NO"
	
	
FinProceso