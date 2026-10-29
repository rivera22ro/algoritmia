Algoritmo Semaforo 
	Definir cantida Como Entero
	Escribir "Cantida de inventario"
	Leer cantida
	
	
	si cantida = 0
			Escribir " agotado "	
	SiNo
		si cantida < 0
			Escribir "Error"
		SiNo
				si cantida > 10 
					Escribir "Todo bien"
			SiNo
				si cantida >=1 o cantida <= 10
					Escribir " Pedir"
				FinSi
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
