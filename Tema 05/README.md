# Tema 5

**Lectura en el contenido completo:** [Capítulo 5 — Lógica binaria y Álgebra de Boole. Circuitos lógicos](../Contenido%20completo/Cap%C3%ADtulo%2005%20-%20L%C3%B3gica%20binaria%20y%20%C3%81lgebra%20de%20Boole.%20Circuitos%20l%C3%B3gicos.md)

PDF de la presentación: [Tema 05.pdf](Tema%2005.pdf)

Ejercicios: [Tema 5 · Ejercicios](Ejercicios/README.md)

---

## Lógica binaria y Álgebra de Boole

**Vídeo:** Álgebra de Boole — George Boole

[![Álgebra de Boole — George Boole](https://img.youtube.com/vi/LggsK5Tk4jY/hqdefault.jpg)](https://www.youtube.com/watch?v=LggsK5Tk4jY)

## Circuitos Combinacionales y Secuenciales

![Circuitos Combinacionales y Secuenciales](img/anim-s4-lógica-binaria-y-álgebra-de-boole-circui.gif)

### Circuitos Combinacionales:

El valor de la salida depende del estado de las entradas, es decir de la combinación de las entradas.

Estos circuitos se dividen en circuitos combinacionales uniterminales (una salida) y circuitos combinacionales multiterminales (varias salidas).

### Circuitos Secuenciales:

El valor de la salida depende del estado de las entradas y del estado anterior de la propia salida, es decir de la secuencia por la que haya pasado la salida.

Se dividen en circuitos secuenciales sincrónicos y circuitos secuenciales asincrónicos.

### Ejemplo de Circuito Combinacional

![Figura](img/fig-s07-p1.jpg)

### Ejemplo de Circuito Secuencial

![Figura](img/fig-s08-p1.jpg)

## Definiciones

**Variable:**
Es un símbolo que se utiliza para representar magnitudes lógicas. Cualquier variable puede tener un valor de 0 o de 1. Por ejemplo: ***A* = 1**

**Complemento:**
El complemento es el inverso de la variable y se indica mediante una barra encima de la misma. Por ejemplo: si ***A* = 1**; entonces ***A̅* = 0**

“***A̅***” se lee como “**A negada**”

También puede escribirse como ***A'***

**Literal:**
Es una variable o complemento de una variable.

![Figura](img/fig-s10-p1.jpg)

## Adición booleana

**OR (Suma booleana):** La combinación OR de dos variables resulta verdadera ó 1 cuando al menos una de ellas es verdadera ó 1.

**SUMA - OR**

| X | Y | X+Y |
| --- | --- | --- |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## Operaciones

### Puerta lógica - OR (Suma booleana)

![Figura](img/fig-s12-p1.jpg)

![Figura](img/fig-s12-p2.jpg)

### Puerta lógica - OR

**Funcionamiento**

![Figura](img/fig-s13-p1.jpg)

**Funcionamiento con tren de impulsos**

![Figura](img/fig-s14-p1.jpg)

Si se aplican las dos señales de entrada, A y B, de la Figura a la puerta OR, ¿cuál es la señal de salida resultante?

![Figura](img/fig-s15-p1.jpg)

**Expresiones booleanas**

![Figura](img/fig-s16-r146.png)

![Figura](img/fig-s16-r147.png)

![Figura](img/fig-s16-r148.png)

**Ejemplo práctico**

Sistema que detecta las puertas abiertas en un coche.

![Figura](img/fig-s17-p1.jpg)

## Operaciones

**AND (Multiplicación booleana):** La combinación AND de dos variables resulta verdadera ó 1 cuando las dos variables son verdaderas ó 1.

**MULTIPLICACIÓN - AND**

| X | Y | X . Y |
| --- | --- | --- |
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### Puerta lógica - AND (Multiplicación booleana)

![Figura](img/fig-s19-p1.jpg)

### Puerta lógica - AND

**Funcionamiento**

![Figura](img/fig-s20-p1.jpg)

**Funcionamiento con tren de impulsos**

![Figura](img/fig-s21-p1.jpg)

**Ejercicio:** Si se aplican las formas de onda A y B de la figura a las entradas de una puerta AND, ¿cuál es la forma de onda resultante de salida?

![Figura](img/fig-s22-p1.jpg)

**Expresiones booleanas**

![Figura](img/fig-s23-r199.png)

![Figura](img/fig-s23-r200.png)

![Figura](img/fig-s23-r201.png)

**Ejemplo práctico**

Sistema que detecta el no abrocharse los cinturones de seguridad en los coches

![Figura](img/fig-s24-p1.jpg)

## Operaciones

**NOT:** Negado o complemento de una variable o función

**NOT**

| X | X' |
| --- | --- |
| 0 | 1 |
| 1 | 0 |

### Puerta lógica - NOT (El inversor)

![Figura](img/fig-s26-p1.jpg)

![Figura](img/fig-s27-p1.jpg)

![Figura](img/fig-s27-r232.png)

## Puerta lógica - NAND

**Entradas** A, B · **Salida** X

| A | B | X |
| --- | --- | --- |
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

1 = ALTO, 0 = BAJO

![Figura](img/fig-s28-p1.jpg)

## Puerta lógica - NOR

**Entradas** A, B · **Salida** X

| A | B | X |
| --- | --- | --- |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

1 = ALTO, 0 = BAJO

![Figura](img/fig-s29-p1.jpg)

## Puerta lógica - OR Exclusiva XOR

**Entradas** A, B · **Salida** X

| A | B | X |
| --- | --- | --- |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

![Figura](img/fig-s30-p1.jpg)

## Puerta lógica - NOR Exclusiva XNOR

**Entradas** A, B · **Salida** X

| A | B | X |
| --- | --- | --- |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

![Figura](img/fig-s31-p1.jpg)

## Resumen

![Figura](img/fig-s32-p1.jpg)

## Operaciones

**Función de conmutación:**

Una función booleana o de conmutación es una expresión algebraica de variables booleanas con las operaciones +, * y complemento. La prioridad de los operadores, en caso de haber varios, es: paréntesis, complementos, productos y sumas.

![Figura](img/fig-s33-r280.png)

**Expresiones de conmutación:**

![Figura](img/fig-s33-r281.png)

![Figura](img/fig-s33-r282.png)

**Tabla de verdad:**

![Figura](img/fig-s34-r291.png)

![Figura](img/fig-s34-r292.png)

Representa a una sola función de conmutación, pero esta función puede escribirse con diferentes expresiones equivalentes entre sí.

## Álgebra de Boole

![Figura](img/fig-s35-p1.jpg)

- **1854 → George Boole**
  Es considerado como uno de los fundadores del campo de las ciencias de la computación
- **1938 → Shannon (álgebra de conmutación)**
  Demostró que se podía utilizar en el análisis y la síntesis de la conmutación y de los circuitos digitales

![Figura](img/fig-s35-p2.jpg)

### Leyes conmutativas

![Figura](img/fig-s36-p1.jpg)

![Figura](img/fig-s36-r310.png)

![Figura](img/fig-s36-r311.png)

### Leyes asociativas

![Figura](img/fig-s37-r319.png)

![Figura](img/fig-s37-p2.jpg)

![Figura](img/fig-s37-p3.jpg)

### Leyes distributivas

![Figura](img/fig-s38-r329.png)

![Figura](img/fig-s38-p2.jpg)

### Reglas del álgebra booleana

![Figura](img/fig-s39-p1.jpg)

**1. 𝑨 + 𝟎 = 𝑨**

Si aplicamos la operación OR a una variable cualquiera y a 0, el resultado es siempre igual a la variable. Si 𝑨 es 1, la salida es igual a 1 y, por tanto, igual a 𝑨. Si 𝑨 es 0, la salida es 0 e igualmente idéntica a 𝑨.

![Figura](img/fig-s40-p1.jpg)

**2. 𝑨 + 𝟏 = 𝟏**

Si se aplica la operación OR a una variable y a 1, el resultado es siempre igual a 1. Un 1 en una entrada de una puerta OR produce siempre un 1 en la salida, independientemente del valor de la otra entrada.

![Figura](img/fig-s41-p1.jpg)

**3. 𝑨 ⋅ 𝟎 = 𝟎**

Si se aplica la operación AND a una variable y a 0, el resultado es siempre igual a 0. Siempre que una de las entradas de una puerta AND sea 0, la salida siempre es 0, independientemente del valor de la otra entrada.

![Figura](img/fig-s42-r362.png)

**4. 𝑨 ⋅ 𝟏 = 𝑨**

Si se aplica la operación AND a una variable y a 1, el resultado es siempre igual a la variable. Si la variable A es 0, la salida de la puerta AND será siempre 0, mientras que si A es 1, la salida será 1, dado que las dos entradas son 1.

![Figura](img/fig-s43-p1.jpg)

**5. 𝑨 + 𝑨 = 𝑨**

Si se aplica la operación OR a una variable consigo misma, el resultado es siempre igual a la variable. Si A es 0, entonces 0 + 0 = 0, mientras que si A es 1, 1 + 1 = 1.

![Figura](img/fig-s44-p1.jpg)

**6. 𝑨 + 𝑨´ = 𝟏**

Si se aplica la operación OR a una variable y a su complemento, el resultado es siempre igual a 1.

![Figura](img/fig-s45-r386.png)

**7. 𝑨 ⋅ 𝑨 = 𝑨**

Si se aplica la operación AND a una variable consigo misma, el resultado siempre es igual a la variable. Si A = 0, entonces 0 ⋅ 0 = 0, y si A = 1, entonces 1 ⋅ 1 = 1

![Figura](img/fig-s46-p1.jpg)

**8. 𝑨 ⋅ 𝑨´ = 𝟎**

Si se aplica la operación AND a una variable y a su complemento, el resultado es siempre igual a 0. Esta regla se basa en que siempre A o A̅ será 0, y además en que cuando se aplica un 0 a una de las entradas de una puerta AND, la salida siempre es 0

![Figura](img/fig-s47-p1.jpg)

**9. 𝑨´´ = 𝑨**

El complemento del complemento de una variable es siempre la propia variable. El complemento de la variable A es A̅ y el complemento de A̅ será de nuevo A, que es la variable original.

![Figura](img/fig-s48-p1.jpg)

**10. 𝑨 + 𝑨B = 𝑨**

Esta regla se puede obtener aplicando la ley distributiva y las reglas 2 y 4, de la siguiente forma:

![Figura](img/fig-s49-p1.jpg)

![Figura](img/fig-s50-r426.png)

**11. 𝑨 + 𝑨´B = 𝑨 + B**

![Figura](img/fig-s51-p1.jpg)

![Figura](img/fig-s52-p1.jpg)

**12. (𝑨 + B)(𝑨 + C) = 𝑨 + BC**

![Figura](img/fig-s53-p1.jpg)

![Figura](img/fig-s54-r459.png)

![Figura](img/fig-s54-p1.jpg)

### Formas Canónicas

Se llama término canónico de una función lógica a todo producto o suma en el cual aparecen todas las variables (ó sus complementos) de esa función.

A los términos productos se les llama productos canónicos (minterms) y a los términos suma se les llama, sumas canónicas (maxterms).

### Formas Disyuntiva Normal (FDN)

Se basa en la operación OR de los términos o combinaciones que hacen 1 la función. Los términos o combinaciones lo componen el AND de las variables.

![Figura](img/fig-s56-r474.png)

![Figura](img/fig-s56-r475.png)

**Mintérminos**

![Figura](img/fig-s56-r476.png)

### Formas Conjuntiva Normal

Se basa en la operación AND de los términos o combinaciones que hacen 0 la función. Los términos o combinaciones lo componen el OR de las variables. De aquí se deriva el término Suma estándar (SE), que es el OR de todas las variables de la función complementadas o no. Es decir, para representar la función se unen en AND las SE para las cuales la función vale 0

![Figura](img/fig-s57-r488.png)

**Maxtérminos**

![Figura](img/fig-s57-r486.png)

![Figura](img/fig-s57-r487.png)

### Leyes de DeMorgan

![Figura](img/fig-s59-p1.jpg)

![Figura](img/fig-s59-p2.jpg)

![Figura](img/fig-s59-p3.jpg)

### Puertas lógicas - NAND - NEGATIVA-OR

![Figura](img/fig-s60-p1.jpg)

### Puertas lógicas - NOR - NEGATIVA-AND

![Figura](img/fig-s61-p1.jpg)

### Simplificación

A la hora de aplicar el álgebra booleana, hay que reducir una expresión a su forma más simple o cambiarla a una forma más conveniente para conseguir una implementación más eficiente.

Requiere un profundo conocimiento del álgebra booleana y una considerable experiencia en su aplicación, por no mencionar también un poquito de ingenio y destreza.

### Ejercicios

![Figura](img/fig-s63-r537.png)

![Figura](img/fig-s63-r538.png)

![Figura](img/fig-s63-r539.png)

![Figura](img/fig-s64-r547.png)

![Figura](img/fig-s64-r548.png)

![Figura](img/fig-s64-r549.png)

### Aplicación de los teoremas de DeMorgan

![Figura](img/fig-s65-p1.jpg)

### Simplificación

![Figura](img/fig-s66-p1.jpg)

![Figura](img/fig-s68-r581.png)

![Figura](img/fig-s69-p2.jpg)

![Figura](img/fig-s70-p2.jpg)

<!-- navegación -->

---

[← Anterior: Tema 4 · Parte 2](../Tema%2004/Parte%202/README.md) | [Índice](../README.md) | [Siguiente: Tema 5 · Ejercicios →](Ejercicios/README.md)
