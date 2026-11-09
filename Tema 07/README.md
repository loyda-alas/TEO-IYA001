# Tema 7

**Lectura en el contenido completo:** [Capítulo 7 — Circuitos Secuenciales Sincrónicos (CSS)](../Contenido%20completo/Cap%C3%ADtulo%2007%20-%20Circuitos%20Secuenciales%20Sincr%C3%B3nicos%20%28CSS%29.md)

PDF de la presentación: [Tema 07.pdf](Tema%2007.pdf)

Ejercicios: [Tema 7 · Ejercicios](Ejercicios/README.md)

---

## Circuitos Secuenciales Sincrónicos (CSS)

**Vídeo:** Latch — circuitos secuenciales

[![Latch — circuitos secuenciales](https://img.youtube.com/vi/FN4ctCaa-cQ/hqdefault.jpg)](https://www.youtube.com/watch?v=FN4ctCaa-cQ)

## Circuitos Lógicos

![Figura](img/fig-s04-p1.jpg)

## Circuitos Secuenciales Síncronos

Son aquellos CSS en los que las salidas sólo cambian en instantes de tiempo gobernados por pulsos de otro circuito que recibe el nombre de reloj.

Ejemplos de CSS: Contadores síncronos, registros, detectores de secuencias.

![Figura](img/fig-s05-p1.jpg)

## Máquina de estados finitos

![Figura](img/fig-s06-p1.jpg)

## Circuitos Secuenciales Síncronos

**Señal de reloj (ck)**

Son aquellos CSS en los que las salidas sólo cambian en instantes de tiempo gobernados por pulsos de otro circuito que recibe el nombre de reloj.

**Forma de Ondas**

![Figura](img/fig-s08-r82.png)

T<sub>c</sub>: Período de reloj

## Circuitos Secuenciales Asíncronos

Son aquellos CS en los que las salidas no dependen de una relación temporal fija.

Ejemplos de CSA: Contadores asíncronos.

![Figura](img/fig-s09-p1.jpg)

## Clasificación

- **Síncronos**
  - Señal de reloj global
  - Facilidad de diseño
  - Velocidad limitada
- **Asíncronos**
  - No existe señal de reloj global
  - Dificultad de diseño

## Latch

![Figura](img/fig-s11-p1.jpg)

![Figura](img/fig-s12-p1.jpg)

![Figura](img/fig-s13-p1.jpg)

## Biestable - SR

![Figura](img/fig-s14-p1.jpg)

- **S** = set
- **R** = reset
- **Q** = salida
- **Q̅** = salida negada

![Figura](img/fig-s14-p3.jpg)

![Figura](img/fig-s15-p2.jpg)

![Figura](img/fig-s16-p2.jpg)

![Figura](img/fig-s17-r154.png)

![Figura](img/fig-s17-p2.jpg)

![Figura](img/fig-s18-p2.jpg)

![Figura](img/fig-s19-p1.jpg)

![Figura](img/fig-s20-p1.jpg)

## Biestable - RS con reloj

![Figura](img/fig-s21-p1.jpg)

![Figura](img/fig-s21-p2.jpg)

![Figura](img/fig-s21-p4.jpg)

![Figura](img/fig-s21-p3.jpg)

## Biestable - Tipos de entradas CLK

![Figura](img/fig-s22-p1.jpg)

## Biestable - JK

Se comporta igual que el RS pero la entrada 11 ya no es una entrada de inestabilidad, es *Q*(*t* + 1) = *Q*(*t*)', además está gobernada por un reloj.

![Figura](img/fig-s23-p2.jpg)

![Figura](img/fig-s24-r208.png)

![Figura](img/fig-s24-p3.jpg)

![Figura](img/fig-s24-r212.png)

![Figura](img/fig-s25-p1.jpg)

![Figura](img/fig-s26-p1.jpg)

## Biestable - D

Almacenador por excelencia ya que no cambia la información.

![Figura](img/fig-s27-p2.jpg)

![Figura](img/fig-s27-p3.jpg)

![Figura](img/fig-s28-p2.jpg)

![Figura](img/fig-s28-p3.jpg)

![Figura](img/fig-s29-p2.jpg)

![Figura](img/fig-s30-p2.jpg)

![Figura](img/fig-s31-r269.png)

![Figura](img/fig-s32-p1.jpg)

## Biestable - T

Se construye con un biestable JK uniendo sus entradas.

![Figura](img/fig-s33-p3.jpg)

![Figura](img/fig-s33-r284.png)

![Figura](img/fig-s34-p2.jpg)

![Figura](img/fig-s34-p3.jpg)

![Figura](img/fig-s35-p2.jpg)

## Resumen de FlipFlops

RS, D, JK, T

![Figura](img/fig-s37-r312.png)

## RS con flanco

![Figura](img/fig-s38-p1.jpg)

## D con flanco

![Figura](img/fig-s40-p1.jpg)

## JK con flanco

![Figura](img/fig-s42-p1.jpg)

## T con flanco

![Figura](img/fig-s44-p1.jpg)

## Contadores

Un contador en es un circuito secuencial construido a partir de biestables y puertas lógicas capaz de almacenar y contar los impulsos (a menudo relacionados con una señal de reloj), el cómputo se realiza en código binario, es decir 0 y 1.

![Figura](img/fig-s46-p1.jpg)

## Contador asíncrono binario de 2 bits

![Figura](img/fig-s47-p1.png)

![Figura](img/fig-s47-p3.png)

![Figura](img/fig-s47-p2.png)

## Contador asíncrono binario de 3 bits

![Figura](img/fig-s48-p1.png)

![Figura](img/fig-s48-p3.png)

![Figura](img/fig-s48-p2.png)

## Contador de décadas asíncrono

![Figura](img/fig-s49-p1.png)

![Figura](img/fig-s49-p2.png)

## Contador módulo 12 con reiniciación asíncrono

![Figura](img/fig-s50-p1.png)

## Contador síncrono 2 bits

![Figura](img/fig-s51-p1.png)

![Figura](img/fig-s51-p2.png)

## Contador síncrono 3 bits

![Figura](img/fig-s52-p1.png)

![Figura](img/fig-s52-p2.png)

![Figura](img/fig-s52-p3.png)

## Contador síncrono 4 bits

![Figura](img/fig-s53-p1.png)

![Figura](img/fig-s53-p2.png)

## Módulos

- Mod - 2
- Mod - 4
- Mod - 8
- Mod - 10

## Diseño de contadores síncronos

**Ejercicio - implementar contador síncrono 3 bits**

**1 - Diagrama de estados**

![Figura](img/fig-s55-p1.png)

**2 - Tabla de estado siguiente**

![Figura](img/fig-s56-p2.jpg)

**3 - Tabla de transiciones JK**

![Figura](img/fig-s57-p3.png)

**4 - Mapas de Karnaugh**

![Figura](img/fig-s59-p3.png)

![Figura](img/fig-s59-p4.png)

![Figura](img/fig-s60-p3.png)

![Figura](img/fig-s60-p4.png)

![Figura](img/fig-s61-p3.png)

![Figura](img/fig-s61-p4.png)

**5 - Expresiones lógicas**

- J<sub>0</sub> = K<sub>0</sub> = 1
- J<sub>1</sub> = K<sub>1</sub> = Q<sub>0</sub>
- J<sub>2</sub> = K<sub>2</sub> = Q<sub>1</sub>Q<sub>0</sub>

**6 - Circuito lógico**

![Figura](img/fig-s52-p1.png)

## Diseño de contadores síncronos

1. Diagrama de estados

   ![Figura](img/fig-s64-p1.png)

2. Tabla de estado siguiente

   ![Figura](img/fig-s65-p2.png)

3. Tabla de transiciones

   ![Figura](img/fig-s66-p2.png)

4. Mapas de Karnaugh

   ![Figura](img/fig-s67-p1.png)

5. Expresiones lógicas para las entradas

   ![Figura](img/fig-s68-r572.png)

   ![Figura](img/fig-s68-p3.png)

6. Implementación del contador

   ![Figura](img/fig-s69-p1.png)

<!-- navegación -->

---

[← Anterior: Tema 6 · Ejercicios](../Tema%2006/Ejercicios/README.md) | [Índice](../README.md) | [Siguiente: Tema 7 · Ejercicios →](Ejercicios/README.md)
