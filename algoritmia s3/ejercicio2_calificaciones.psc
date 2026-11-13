// Ejercicio 2 · Calificaciones: cuatro patrones en un solo recorrido
// Escala 0.0 a 5.0, nota aprobatoria 3.0 (ajustable en NOTA_MINIMA).
// En un único Para se aplican cuatro patrones:
//   1. Acumulador  -> suma de notas
//   2. Contador    -> cantidad de aprobados
//   3. Máximo      -> nota más alta
//   4. Mínimo      -> nota más baja
Proceso Calificaciones
	Definir n, i, aprobados Como Entero;
	Definir nota, suma, promedio, maximo, minimo, NOTA_MINIMA Como Real;

	NOTA_MINIMA <- 3.0;

	Escribir Sin Saltar "Cuantos estudiantes van a ser evaluados? ";
	Leer n;
	Mientras n < 1 Hacer
		Escribir "Debe ser al menos 1.";
		Escribir Sin Saltar "Cuantos estudiantes van a ser evaluados? ";
		Leer n;
	FinMientras

	// Valores iniciales de cada patrón
	suma <- 0;
	aprobados <- 0;
	maximo <- -1;     // cualquier nota válida (>= 0) lo supera
	minimo <- 6;      // cualquier nota válida (<= 5) lo supera

	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir Sin Saltar "Nota del estudiante ", i, " (0.0 a 5.0): ";
		Leer nota;
		Mientras nota < 0 O nota > 5 Hacer
			Escribir Sin Saltar "Nota fuera de rango. Reingrese (0.0 a 5.0): ";
			Leer nota;
		FinMientras

		suma <- suma + nota;                       // 1. acumulador
		Si nota >= NOTA_MINIMA Entonces
			aprobados <- aprobados + 1;            // 2. contador
		FinSi
		Si nota > maximo Entonces
			maximo <- nota;                        // 3. máximo
		FinSi
		Si nota < minimo Entonces
			minimo <- nota;                        // 4. mínimo
		FinSi
	FinPara

	promedio <- suma / n;

	Escribir " ";
	Escribir "=== RESULTADOS DEL GRUPO ===";
	Escribir "Estudiantes evaluados: ", n;
	Escribir "Promedio del grupo:    ", promedio;
	Escribir "Aprobados (>= ", NOTA_MINIMA, "): ", aprobados;
	Escribir "Nota maxima:           ", maximo;
	Escribir "Nota minima:           ", minimo;
FinProceso
