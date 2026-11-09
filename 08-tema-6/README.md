# Tema 6

Presentación de **Tecnología y Estructura de Ordenadores (TEO / IYA001)** — Universidad Europea del Atlántico.

Archivo original: [Tema 6.pdf](Tema%206.pdf)

Total de diapositivas: 36

---

## Loyda Leticia Alas Castaneda

![Diapositiva 1](img/slide-01.png)

- loyda.alas@uneatlantico.es

---

## Tecnología y Estructura de Ordenadores

![Diapositiva 2](img/slide-02.png)

- Tema 6

---

## Diseño y síntesis de Circuitos lógicos Combinacionales

![Diapositiva 3](img/slide-03.png)

---

## Diapositiva 4

![Diapositiva 4](img/slide-04.png)

---

## Diapositiva 5

![Diapositiva 5](img/slide-05.png)

---

## Simplificación de funciones

![Diapositiva 6](img/slide-06.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Permite la simplificación de funciones lógicas de forma efectiva. Es una
- forma de representar la tabla de la verdad de tal manera que la disposición
- de las combinaciones de valores es particularmente útil en cuanto a la simplificación de funciones.

---

## Mapa de Karnaugh - 3 Variables

![Diapositiva 7](img/slide-07.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Mapa de 3 Variables f(w,x,y):

---

## Mapa de Karnaugh - 3 Variables

![Diapositiva 8](img/slide-08.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Mapa de 3 Variables f(w,x,z):

---

## Mapa de Karnaugh - 4 Variables

![Diapositiva 9](img/slide-09.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Mapa de 4 Variables f(w,x,y,z):

---

## Mapa de Karnaugh - Celdas adyacentes

![Diapositiva 10](img/slide-10.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- La adyacencia se define por un cambio de una única variable.

---

## Mapa de Karnaugh - 4 Variables

![Diapositiva 11](img/slide-11.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo de minimización: Simplificar la siguiente función.

---

## Mapa de Karnaugh - 4 Variables

![Diapositiva 12](img/slide-12.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Consideraciones sobre los grupos.
- Los grupos se forman con # de áreas potencia de 2, es decir 1, 2, 4, 8 y 16.
- Se deben obtener la menor cantidad de grupos con la mayor cantidad de áreas en cada uno.
- En cada grupo debe haber al menos un 1 no contenido en otro grupo.
- Se aplica el teorema 6 a las áreas de cada grupo y las variables que representan al grupo son las que permanecen constantes en todas las áreas.
- El 0 es variable negada y el 1 variable sin negar.

---

## Mapa de Karnaugh - 3 y 4 Variables

![Diapositiva 13](img/slide-13.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

---

## Mapa de Karnaugh - 2 Variables

![Diapositiva 14](img/slide-14.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo

---

## Mapa de Karnaugh - 3 Variables

![Diapositiva 15](img/slide-15.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo

---

## Mapa de Karnaugh - 4 Variables

![Diapositiva 16](img/slide-16.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo

---

## Mapa de Karnaugh - 4 Variables

![Diapositiva 17](img/slide-17.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo

---

## Mapa de Karnaugh - 4 Variables

![Diapositiva 18](img/slide-18.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo

---

## Mapa de Karnaugh - 4 Variables

![Diapositiva 19](img/slide-19.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo

---

## Mapa de Karnaugh - Combinaciones opcionales

![Diapositiva 20](img/slide-20.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Las combinaciones de variables llamadas opcionales son aquellas que tienen lugar en cualquiera de estos dos casos:
- Aquellas que nunca pueden ocurrir.
- Aquellas que aunque pueden ocurrir, no importa si la función vale 0 ó 1.

---

## Mapa de Karnaugh - Combinaciones opcionales

![Diapositiva 21](img/slide-21.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Simplificar la siguiente función:

---

## Mapa de Karnaugh - Combinaciones opcionales

![Diapositiva 22](img/slide-22.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Simplificar la siguiente función:

---

## Mapa de Karnaugh - Combinaciones opcionales

![Diapositiva 23](img/slide-23.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Simplificar la siguiente función:

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 24](img/slide-24.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Los circuitos uniterminales son circuitos combinacionales que tienen una o varias entradas, pero una sola salida.
- Para diseñar un circuito combinacional uniterminal, hay que tener en cuenta los siguientes pasos.
- 1. Obtener la Tabla de Verdad a partir de la descripción del problema.
- 2. Obtener la Forma Disyuntiva Normal (FDN) ó Forma Conjuntiva Normal
- (FCN).
- 3. Simplificar las funciones.
- 4. Diseñar el circuito.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 25](img/slide-25.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo: Dada la siguiente TV, sintetizar el circuito utilizando puertas NAND de 2 entradas.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 26](img/slide-26.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo: Dada la siguiente TV, sintetizar el circuito utilizando puertas NAND de 2 entradas.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 27](img/slide-27.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo: Dada la siguiente TV, sintetizar el circuito utilizando puertas NAND de 2 entradas.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 28](img/slide-28.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo: Dada la siguiente TV, sintetizar el circuito utilizando puertas NAND de 2 entradas.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 29](img/slide-29.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo: Dada la siguiente TV, sintetizar el circuito utilizando puertas NAND de 2 entradas.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 30](img/slide-30.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo: Dada la siguiente TV, sintetizar el circuito utilizando puertas NAND de 2 entradas.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 31](img/slide-31.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Los circuitos multiterminales o redes multiterminales son circuitos combinacionales que tienen varias salidas.

- Los circuitos multiterminales pueden ser:
- Conversores de código.
- Codificadores.
- Decodificadores.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 32](img/slide-32.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo 4: Diseñar el conversor de código mostrado en la tabla. Recordar y tener en cuenta que el número decimal corresponde el número binario de las entradas no siempre tiene que estar en orden.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 33](img/slide-33.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo 4: Diseñar el conversor de código mostrado en la tabla. Recordar y tener en cuenta que el número decimal corresponde el número binario de las entradas no siempre tiene que estar en orden.

- Pasos a Seguir:
- Obtener cada función y simplificarlas por separado, utilizando los Mapas de Karnaugh.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 34](img/slide-34.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo 4: Diseñar el conversor de código mostrado en la tabla. Recordar y tener en cuenta que el número decimal corresponde el número binario de las entradas no siempre tiene que estar en orden.

- Pasos a Seguir:
- Realizar el diseño de cada función teniendo en cuenta si hay términos repetidos.

---

## Síntesis de Circuitos Uniterminales y Multiterminales

![Diapositiva 35](img/slide-35.png)

- Diseño y síntesis de Circuitos lógicos Combinacionales

- Ejemplo 4: Diseñar el conversor de código mostrado en la tabla. Recordar y tener en cuenta que el número decimal corresponde el número binario de las entradas no siempre tiene que estar en orden.

- Pasos a Seguir:
- Realizar el diseño de cada función teniendo en cuenta si hay términos repetidos.

---

## Diapositiva 36

![Diapositiva 36](img/slide-36.png)

---
