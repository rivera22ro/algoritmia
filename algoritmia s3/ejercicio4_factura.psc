// Ejercicio 4 · Factura de restaurante con SubProcesos
// Descomposición (árbol de componentes):
//   Factura_Restaurante
//   ├── LeerPositivo(texto)               -> valida y devuelve un Real > 0
//   ├── CalcularLinea(cantidad, precio)   -> cantidad * precio
//   ├── CalcularPorcentaje(base, tasa)    -> base * tasa
//   └── MostrarFactura(sub, imp, prop, t) -> imprime el recibo
//
// Tasas de ejemplo: impuesto 8 %, propina 10 % (cambiar aquí si se requiere).
Proceso Factura_Restaurante
	Definir n Como Real;
	Definir i Como Entero;
	Definir cantidad, precio, subtotal, impuesto, propina, total Como Real;
	Definir tasaImpuesto, tasaPropina Como Real;

	tasaImpuesto <- 0.08;
	tasaPropina <- 0.10;
	subtotal <- 0;

	Escribir "=== RESTAURANTE: TOMA DEL PEDIDO ===";
	n <- LeerPositivo("Cuantos productos distintos va a pedir? ");

	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "--- Producto ", i, " ---";
		cantidad <- LeerPositivo("Cantidad: ");
		precio <- LeerPositivo("Precio unitario: $");
		subtotal <- subtotal + CalcularLinea(cantidad, precio);
	FinPara

	impuesto <- CalcularPorcentaje(subtotal, tasaImpuesto);
	propina <- CalcularPorcentaje(subtotal, tasaPropina);
	total <- subtotal + impuesto + propina;

	Escribir " ";
	MostrarFactura(subtotal, impuesto, propina, total);
FinProceso


// ---------- SubProcesos ----------

SubProceso valor <- LeerPositivo(texto)
	Definir valor Como Real;
	Escribir Sin Saltar texto;
	Leer valor;
	Mientras valor <= 0 Hacer
		Escribir "  El valor debe ser mayor que cero.";
		Escribir Sin Saltar texto;
		Leer valor;
	FinMientras
FinSubProceso

SubProceso resultado <- CalcularLinea(cantidad, precio)
	Definir resultado Como Real;
	resultado <- cantidad * precio;
FinSubProceso

SubProceso resultado <- CalcularPorcentaje(baseCalculo, tasa)
	Definir resultado Como Real;
	resultado <- baseCalculo * tasa;
FinSubProceso

SubProceso MostrarFactura(sub, imp, prop, tot)
	Escribir "=============================";
	Escribir "         FACTURA";
	Escribir "=============================";
	Escribir "Subtotal:  $", sub;
	Escribir "Impuesto:  $", imp;
	Escribir "Propina:   $", prop;
	Escribir "-----------------------------";
	Escribir "TOTAL:     $", tot;
	Escribir "=============================";
FinSubProceso
