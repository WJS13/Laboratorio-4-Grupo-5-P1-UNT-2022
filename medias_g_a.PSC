Proceso medias_g_a
	
	Definir c,cv,i,p,h,cn,pr,mg,a Como Real
	
	Escribir "---------------------------------------------------------------"
	Escribir "Ingrese la cantidad de conjuntos de valores X1 y X2 ingresará"
	Leer c
	Escribir "---------------------------------------------------------------"
	
	
	Dimension cn[c,2]
	Dimension pr[c]
	Dimension mg[c]
	Dimension a[c]
	
	cv = 0
	
	Escribir ""
	Para i<- 1 Hasta c Con Paso 1 Hacer
		Escribir Sin Saltar "Ingrese el ",i,"° valor X1: "
		Leer cn[i,1]
		Escribir Sin Saltar "Ingrese el ",i,"° valor X2: "
		Leer cn[i,2]
		pr[i] = (cn[i,1]+cn[i,2])/2
		mg[i] = Raiz(cn[i,1]*cn[i,2])
		Si pr[i]<mg[i] Entonces
			cv = cv + 1
		FinSi
	Fin Para
	Escribir ""
	Escribir "---------------------------------------------------------------"
	
	porcentaje = (cv/c)*100
	
	p = 0
	Repetir
		Para i<- c Hasta 1 Con Paso -1 Hacer
			Si pr[i] = mg[i]
				a[1] = i				
			FinSi
		FinPara
		h = 1
	Hasta Que h = 1
	
	Para i<- 1 Hasta c Con Paso 1 Hacer
		Escribir ""
		Escribir "Para el grupo ",i,":"
		Escribir "El promedio del grupo ",i," es: ",pr[i]
		Escribir "La media geométrica del grupo ",i," es: ",mg[i]
	Fin Para
	
	Escribir ""
	Escribir "---------------------------------------------------------------"
	Escribir ""
	
	Escribir "El porcentaje de veces que el promedio es menor que la media geométrica es del ",porcentaje,"%, lo cual era de esperarse pues esto es imposible."
	
	Escribir ""
	
	Si a[1] = 0 Entonces
		Escribir "No hubieron valores con promedios equivalentes a sus medias geométricas"
	SiNo
		Escribir "El primer par de valores en donde su promedio es equivalente a su media geométrica pertenecen al grupo ",a[1],", y sus valores son:"
		Escribir "X1 = ",cn[a[1],1]
		Escribir "X1 = ",cn[a[1],2]
	FinSi
	
	Escribir ""
	Escribir "---------------------------------------------------------------"
	
FinProceso
