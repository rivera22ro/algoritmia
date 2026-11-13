// Ejercicio 1 · Cajero con centinela: acumulador y contador
// Lee montos hasta que el usuario ingrese 0 (centinela).
// Acumulador: total. Contador: número de transacciones válidas.
Proceso Cajero_Centinela
	Definir monto, total, promedio Como Real;
	Definir contador Como Entero;

	total <- 0;
	contador <- 0;

	Escribir "=== CAJERO ===";
	Escribir "Ingrese el monto de cada transaccion. Escriba 0 para terminar.";
	Escribir Sin Saltar "Monto: $";
	Leer monto;

	Mientras monto <> 0 Hacer
		Si monto < 0 Entonces
			Escribir "  Monto negativo no valido, se ignora.";
		SiNo
			total <- total + monto;      // acumulador
			contador <- contador + 1;    // contador
		FinSi

		Escribir Sin Saltar "Monto: $";
		Leer monto;
	FinMientras

	Escribir " ";
	Escribir "=== CIERRE ===";
	Escribir "Transacciones registradas: ", contador;
	Escribir "Total acumulado: $", total;

	Si contador > 0 Entonces
		promedio <- total / contador;
		Escribir "Promedio por transaccion: $", promedio;
	SiNo
		Escribir "No hubo transacciones validas.";
	FinSi
FinProceso
