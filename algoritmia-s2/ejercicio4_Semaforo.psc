Algoritmo Semaforo
	// Reglas del reto (según el video):
	//   menos de 0  -> error
	//   0           -> rojo: agotado
	//   1 a 10      -> amarillo: pedir
	//   más de 10   -> verde: hay stock suficiente (regla supuesta, no se vio en el video)
	Definir unidades Como Entero
	Escribir "¿Cuántas unidades hay en inventario?"
	Leer unidades

	Si unidades < 0 Entonces
		Escribir "Error: las unidades no pueden ser negativas"
	SiNo
		Si unidades = 0 Entonces
			Escribir "Rojo: agotado"
		SiNo
			Si unidades <= 10 Entonces
				Escribir "Amarillo: pedir"
			SiNo
				Escribir "Verde: hay stock suficiente"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
