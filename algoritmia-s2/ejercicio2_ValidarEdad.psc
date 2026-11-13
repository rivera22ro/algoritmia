Algoritmo ValidarEdad
	// Válida: edad >= 0 Y edad <= 120
	// Inválida (la negación correcta): edad < 0 O edad > 120
	Definir edad Como Entero
	Escribir "¿Qué edad tienes?"
	Leer edad
	Si edad < 0 O edad > 120 Entonces
		Escribir "Edad inválida"
	SiNo
		Escribir "Edad válida"
	FinSi
FinAlgoritmo
