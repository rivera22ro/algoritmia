Algoritmo ValidarRegistro
	Definir edad Como Entero
	Definir respuesta Como Caracter
	Escribir "Cuantos años tienes?"
	Leer edad
	Escribir "Aceptas los términos? (S/N)"
	Leer respuesta
	respuesta <- Mayusculas(respuesta)
	si edad >= 14 y respuestas = "S" Entonces
		Escribir "Registro Exitoso"
	SiNo
	Escribir  "No puedes Registrarse"	
		
FinSi

FinAlgoritmo
