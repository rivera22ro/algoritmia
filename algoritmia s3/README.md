# Algoritmia S3 · Repetir y descomponer (PSeInt)

## Archivos

| Archivo | Ejercicio | Idea clave |
|---|---|---|
| `ejercicio1_cajero.psc` | Cajero con centinela | Acumulador y contador |
| `ejercicio2_calificaciones.psc` | Calificaciones | Suma, contador, máximo y mínimo en un solo recorrido |
| `ejercicio3_piramide.psc` | Pirámide de asteriscos | Ciclos anidados |
| `ejercicio4_factura.psc` | Factura de restaurante | SubProcesos |

Para ejecutarlos, abre el `.psc` en PSeInt y pulsa `F9`.

## Resultados de ejemplo

- **Ejercicio 1:** entradas `50000`, `120000`, `-5000`, `30000`, `0` → total `$200000`, 3 transacciones, promedio `$66666.67`.
- **Ejercicio 2:** notas `4.5`, `2.8`, `3.0`, `5.0` → promedio `3.825`, 3 aprobados, máximo `5.0`, mínimo `2.8`.
- **Ejercicio 3:** con altura `3`:
  ```
    *
   ***
  *****
  ```
- **Ejercicio 4:** 2 × `$15000` + 1 × `$25000` → subtotal `$55000`, impuesto `$4400`, propina `$5500`, total `$64900`.

## Supuestos

- Ejercicio 2: escala 0.0 a 5.0 con nota aprobatoria 3.0.
- Ejercicio 4: impuesto 8 % y propina 10 %.

Estos valores están al inicio de cada programa y se pueden cambiar.
