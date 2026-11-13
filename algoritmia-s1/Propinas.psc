Algoritmo Propinas
	Definir personas, propina Como Entero
	Definir cuenta Como Real
	Escribir 'Ingrese el valor de la cuenta'
	Leer cuenta
	Escribir 'Personas: '
	Leer personas
	Escribir '% de propina ? '
	Leer propina
	propina <- cuenta*(propina/100)
	total <- cuenta+propina
	Escribir 'Valor total de la propina: ', propina
	Escribir 'El valor de la cuenta + propina:  ', total
	Escribir 'y cada uno paga: ', total/personas
FinAlgoritmo
