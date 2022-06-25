Proceso analisis_numerico
	
	Definir C,i,suma Como Real
	
	Escribir Sin Saltar "Ingrese la cantidad de datos a ingresar: "
	Leer C
	
	Dimension N[C]
	
	suma = 0
	producto = 1
	cantn = 0
	ceros = 0
	
	Para i = 1 Hasta C Hacer
		Escribir Sin Saltar "Ingrese el valor numérico ",i,": "
		Leer N[i]
		Si N[i] = 0 Entonces
			ceros = ceros + 1
		SiNo
			Si N[i]<0 Entonces 
				suma = suma + N[i]
			SiNo
				Si N[i]>0 Entonces
					producto = producto*N[i]
				FinSi
			Fin Si
		FinSi
	FinPara
	
	porcentaje = (ceros/C)*100
	
	Escribir "La sumatoria de los valores negativos no nulos de A es: ",suma
	Escribir "La productoria de los valores positivos no nulos es: ",producto
	Escribir "El porcentaje de valores de A nulos es: ",porcentaje,"%"
	
FinProceso
