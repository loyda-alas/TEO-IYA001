# Tema 6

**Lectura en el contenido completo:** [Capítulo 6 — Diseño y síntesis de circuitos lógicos combinacionales](../Contenido%20completo/Cap%C3%ADtulo%2006%20-%20Dise%C3%B1o%20y%20s%C3%ADntesis%20de%20circuitos%20l%C3%B3gicos%20combinacionales.md)

PDF de la presentación: [Tema 06.pdf](Tema%2006.pdf)

Ejercicios: [Tema 6 · Ejercicios](Ejercicios/README.md)

---

## Diseño y síntesis de Circuitos lógicos Combinacionales

![Animación introductoria](img/anim-s4-animación-diapositiva-4.gif)

![Animación](img/anim-s5-animación-diapositiva-5.gif)

## Simplificación de funciones

### Mapa de Karnaugh

![Mapa de Karnaugh — introducción](img/anim-s6-diseño-y-síntesis-de-circuitos-lógicos-c.gif)

Permite la simplificación de funciones lógicas de forma efectiva. Es una forma de representar la tabla de la verdad de tal manera que la disposición de las combinaciones de valores es particularmente útil en cuanto a la simplificación de funciones.

## Mapa de Karnaugh - 3 Variables

Mapa de 3 Variables f(w,x,y):

![Figura](img/fig-s07-p1.jpg)

Mapa de 3 Variables f(w,x,z):

![Figura](img/fig-s08-r82.png)

## Mapa de Karnaugh - 4 Variables

Mapa de 4 Variables f(w,x,y,z):

![Figura](img/fig-s09-p1.jpg)

## Mapa de Karnaugh - Celdas adyacentes

La adyacencia se define por un cambio de una única variable.

![Figura](img/fig-s10-p1.jpg)

## Mapa de Karnaugh - 4 Variables

Ejemplo de minimización: Simplificar la siguiente función.

![Figura](img/fig-s11-r106.png)

![Figura](img/fig-s11-p2.jpg)

![Figura](img/fig-s11-r108.png)

**Consideraciones sobre los grupos.**

- Los grupos se forman con # de áreas potencia de 2, es decir 1, 2, 4, 8 y 16.
- Se deben obtener la menor cantidad de grupos con la mayor cantidad de áreas en cada uno.
- En cada grupo debe haber al menos un 1 no contenido en otro grupo.
- Se aplica el teorema 6 a las áreas de cada grupo y las variables que representan al grupo son las que permanecen constantes en todas las áreas.
- El 0 es variable negada y el 1 variable sin negar.

## Mapa de Karnaugh - 3 y 4 Variables

![Figura](img/fig-s13-p1.jpg)

![Figura](img/fig-s13-p2.jpg)

## Mapa de Karnaugh - 2 Variables

**Ejemplo**

![Figura](img/fig-s14-r131.png)

![Figura](img/fig-s14-p2.jpg)

![Figura](img/fig-s14-r133.png)

![Figura](img/fig-s14-p4.jpg)

## Mapa de Karnaugh - 3 Variables

**Ejemplo**

![Figura](img/fig-s15-p1.jpg)

![Figura](img/fig-s15-r146.png)

![Figura](img/fig-s15-p3.jpg)

![Figura](img/fig-s15-p2.jpg)

## Mapa de Karnaugh - 4 Variables

**Ejemplo**

![Figura](img/fig-s16-p1.jpg)

![Figura](img/fig-s17-p1.jpg)

![Figura](img/fig-s18-r171.png)

![Figura](img/fig-s19-p3.jpg)

## Mapa de Karnaugh - Combinaciones opcionales

Las combinaciones de variables llamadas opcionales son aquellas que tienen lugar en cualquiera de estos dos casos:

- Aquellas que nunca pueden ocurrir.
- Aquellas que aunque pueden ocurrir, no importa si la función vale 0 ó 1.

Simplificar la siguiente función:

![Figura](img/fig-s21-r198.png)

![Figura](img/fig-s22-p2.jpg)

![Figura](img/fig-s23-r217.png)

## Síntesis de Circuitos Uniterminales y Multiterminales

Los circuitos uniterminales son circuitos combinacionales que tienen una o varias entradas, pero una sola salida.

Para diseñar un circuito combinacional uniterminal, hay que tener en cuenta los siguientes pasos.

1. Obtener la Tabla de Verdad a partir de la descripción del problema.
2. Obtener la Forma Disyuntiva Normal (FDN) ó Forma Conjuntiva Normal (FCN).
3. Simplificar las funciones.
4. Diseñar el circuito.

**Ejemplo:** Dada la siguiente TV, sintetizar el circuito utilizando puertas NAND de 2 entradas.

![Figura](img/fig-s25-r232.png)

![Figura](img/fig-s26-p1.jpg)

![Figura](img/fig-s27-p3.jpg)

![Figura](img/fig-s28-r262.png)

![Figura](img/fig-s30-p1.jpg)

Los circuitos multiterminales o redes multiterminales son circuitos combinacionales que tienen varias salidas.

![Figura](img/fig-s31-p1.jpg)

Los circuitos multiterminales pueden ser:

- Conversores de código.
- Codificadores.
- Decodificadores.

**Ejemplo 4:** Diseñar el conversor de código mostrado en la tabla. Recordar y tener en cuenta que el número decimal corresponde el número binario de las entradas no siempre tiene que estar en orden.

![Figura](img/fig-s32-p1.jpg)

**Pasos a Seguir:**

- Obtener cada función y simplificarlas por separado, utilizando los Mapas de Karnaugh.

![Figura](img/fig-s33-p1.jpg)

- Realizar el diseño de cada función teniendo en cuenta si hay términos repetidos.

![Figura](img/fig-s34-p1.jpg)

![Figura](img/fig-s35-p1.jpg)

<!-- navegación -->

---

[← Anterior: Tema 5 · Ejercicios](../Tema%2005/Ejercicios/README.md) | [Índice](../README.md) | [Siguiente: Tema 6 · Ejercicios →](Ejercicios/README.md)
