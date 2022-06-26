Algoritmo Ejx_3
	
	Definir nombre,mem_2,resp Como Caracter
	Definir n,i,j,promedio,mem Como Real
	Escribir "Ingrese la cantidad de alumnos"
	Leer n
	
	Dimension nombre[n]
	Dimension promedio[n]
	
	Escribir "Desea iniciar el proceso(SI/NO)"
	Leer resp
	Si resp == "SI" Entonces
		Repetir
			Para i=0 Hasta n-1 Con Paso 1 Hacer
				Escribir "Ingrese el nombre del alumno N°" , i+1,":"
				leer nombre[i]
				Escribir "Ingrese el promedio del alumno N°" , i+1,":"
				leer promedio[i]
			FinPara
			
			Para i=0 hasta n-1 hacer
				Para j=0 Hasta n-2 Hacer
					si promedio[j]>promedio[j+1] Entonces
						mem=promedio[j]
						promedio[j]=promedio[j+1]
						promedio[j+1]=mem
						mem_2=nombre[j]
						nombre[j]=nombre[j+1]
						nombre[j+1]=mem_2
					FinSi
				FinPara	
			FinPara
			
			Escribir "NOMBRE","|","PROMEDIO"
			Escribir "---------------"
			Para i=0 Hasta n-1 Con Paso 1 Hacer
				Escribir nombre[i]," - ",promedio[i]
			FinPara

			Escribir "Desea repetir el proceso (SI/NO)"
			Leer resp
		Hasta Que resp=="NO"
	SiNo
		
		Escribir "Proceso finalizado."
		
	FinSi
	
FinAlgoritmo

