Funcion  resultado<-FUNCION_RECURSIVA(n)

	si n>3 Entonces
		resultado= FUNCION_RECURSIVA(n-1)+FUNCION_RECURSIVA(n-2)+FUNCION_RECURSIVA(n-3)
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
	
	Escribir "Ingrese el lugar del valor que desea encontrar"
	Leer n
	resultado<-FUNCION_RECURSIVA(n)
	Escribir "El t�rmino de lugar ",n," es: ",resultado
	
FinProceso