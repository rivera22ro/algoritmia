// Ejercicio 3 · Pirámide de asteriscos: ciclos anidados y traza
// Para cada fila i (1..n):
//   - ciclo interno 1 imprime (n - i) espacios
//   - ciclo interno 2 imprime (2i - 1) asteriscos
// Para n = 3 la salida es:
//   "  *"
//   " ***"
//   "*****"
Proceso Piramide_Asteriscos
	Definir n, i, j, espacios, asteriscos Como Entero;

	Escribir Sin Saltar "Altura de la piramide (1 a 10): ";
	Leer n;
	Mientras n < 1 O n > 10 Hacer
		Escribir Sin Saltar "Valor no valido. Ingrese un numero entre 1 y 10: ";
		Leer n;
	FinMientras

	Escribir " ";
	Para i <- 1 Hasta n Con Paso 1 Hacer
		espacios <- n - i;
		asteriscos <- 2 * i - 1;

		// Ciclo anidado 1: sangría (espacios)
		Para j <- 1 Hasta espacios Con Paso 1 Hacer
			Escribir Sin Saltar " ";
		FinPara

		// Ciclo anidado 2: asteriscos de la fila
		Para j <- 1 Hasta asteriscos Con Paso 1 Hacer
			Escribir Sin Saltar "*";
		FinPara

		Escribir " ";   // salto de línea al terminar la fila
	FinPara
FinProceso
