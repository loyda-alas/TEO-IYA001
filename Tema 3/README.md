# Tema 3

**Lectura en el contenido completo:** [Capítulo 3 — Sistemas de numeración](../Contenido%20completo/Capitulo%203%20-%20Sistemas%20de%20numeraci%C3%B3n.md)

PDF de la presentación: [Tema 3.pdf](Tema%203.pdf)

---

## Sistemas de numeración

![Figura](img/fig-s04-p1.png)

## Decimal Octal Binaria Hexadecimal

0, 1, 2, 3, 4, 5, 6, 7, 8, 9

0, 1, 2, 3, 4, 5, 6, 7

0, 1

0, 1, 2, 3, 4, 5, 6, 7, 8, 9,

A, B, C, D, E, F

- 

- 

- 

- 

## Sistemas de numeración

![Figura](img/fig-s06-p1.png)

![Figura](img/fig-s07-p1.jpg)

![Figura](img/fig-s08-p1.png)

![Figura](img/fig-s09-p1.jpg)

## Hexadecimal

16 Dígitos

3 1 5 8 6 C 4 D

BBPin

![Figura](img/fig-s10-p1.jpg)

## Los sistemas digitales utilizan el sistema de numeración binario

(0,1) (0FF, ON) (0v, 5v)

100101 binario (declaración explícita de formato)

100101b (un sufijo que indica formato binario)

100101B (un sufijo que indica formato binario)

bin 100101 (un prefijo que indica formato binario)

1001012 (un subíndice que indica base 2 (binaria) notación)

%100101 (un prefijo que indica formato binario)

0b100101 (un prefijo que indica formato binario, común en lenguajes de programación)

## Contar en binario

| Binario | Decimal |
| --- | --- |
| 0 | 0 |
| 1 | 1 |
| 10 | 2 |
| 11 | 3 |
| 100 | 4 |
| 101 | 5 |
| 110 | 6 |
| 111 | 7 |

| Binario | Decimal |
| --- | --- |
| 1000 | 8 |
| 1001 | 9 |
| 1010 | 10 |
| 1011 | 11 |
| 1100 | 12 |
| 1101 | 13 |
| 1110 | 14 |
| 1111 | 15 |

bit → binary digit (dígito binario)

10110 es un número de cinco bits.

¿Hasta qué número en decimal puede contarse empleando un número binario de cuatro bits?

Solución: Con N=4, se puede contar hasta 24-1=15. Es decir, hasta el número 15

MSB: bit más significativo, Most Significant Bit

LSB: bit menos significativo, Least Significant Bit

![Figura](img/fig-s15-p1.jpg)

## Conversión de Binario a Decimal

## Sistemas de numeración

dígitos [0, 1]

(10000100)2 = (132)10

1 * 27 + 0 * 26 + 0 * 25 + 0 * 24 + 0 * 23 + 1 * 22 + 0 * 21 + 0 * 20 = 132

Conversión Binario a Decimal

1 0 0 0 1 1 1 2

7110

![Figura](img/fig-s18-p1.jpg)

## Conversión de Decimal a Binario

## Sistemas de numeración

Convierta 29110 en un número binario.

291/2 = 145 resto 1 (LSB)

145/2 = 72 resto 1

72/2 = 36 resto 0

36/2 = 18 resto 0

18/2 = 9 resto 0

9/2 = 4 resto 1

4/2 = 2 resto 0

2/2 = 1 resto 0

1/2 = 0 residuo 1 (MSB) Por tanto, 29110 = 1001000112

Conversión Decimal a Binario

10 1 10

1 1 0 0 1 0 12

## Contar en Octal

Sistema numérico de base ocho. En él existen ocho dígitos diferentes, desde cero hasta siete

| Octal | Decimal | Octal | Decimal |
| --- | --- | --- | --- |
| 0 | 0 | 10 | 8 |
| 1 | 1 | 11 | 9 |
| 2 | 2 | 12 | 10 |
| 3 | 3 | 13 | 11 |
| 4 | 4 | 14 | 12 |
| 5 | 5 | 15 | 13 |
| 6 | 6 | 16 | 14 |
| 7 | 7 | 17 | 15 |

## Sistemas de numeración

dígitos [0, 1, 2, 3, 4, 5, 6, 7]

(204)8 = (132)10

2 * 82 + 0 * 81 + 4 * 80 = 132

Ejemplo: Cuente en octal desde 666, hasta 710

Solución:

666

667 - La primera columna está llena.

670 - Se pone un cero y se suma uno a la segunda columna.

671

672

673

674

675

676

677 - Las primeras columnas están llenas.

700 - Se ponen ceros y se suma uno a la tercera columna.

701

702

703

704

705

706

707 - La primera columna está llena otra vez.

710 - Se pone un cero y se suma uno a la segunda columna.

Conversión Binario a Octal

Convierta 101111012, en un número octal

| 010 | 111 | 101 |
| --- | --- | --- |
| 2 | 7 | 5 |

Nótese que el grupo más significativo sólo tenía dos bits. Es por esto que se añadió en él un cero para completar tres bits. Por tanto, 101111012 = 2758

Convierta 101010102, en un número octal

| 010 | 101 | 010 |
| --- | --- | --- |
|  |  |  |

| 010 | 101 | 010 |
| --- | --- | --- |
| 2 | 5 | 2 |

El número 10101010 binario es el 252 Octal

Conversión Octal a Binario

Por cada dígito octal se escriben los tres dígitos binarios correspondientes.

Por ejemplo, para convertir 30628, en un número binario:

Por tanto, 30628 = 0110001100102

Nótese que el 2 se escribe como 010, con la adicción de un cero para completar los tres bits, y que el cero se escribe cómo 000 para mantener los tres lugares. La adición de ceros puede suprimirse en el dígito más significativo. Con esto, el 3 puede escribirse como 11 o 011

| 3 | 0 | 6 | 2 |
| --- | --- | --- | --- |
| 011 | 000 | 110 | 010 |

Por ejemplo, para convertir 3778, en un número binario:

Por tanto, 3778 = 111111112

| 3 | 7 | 7 |
| --- | --- | --- |
| 011 | 111 | 111 |

![Figura](img/fig-s26-p1.jpg)

## Sistema numérico hexadecimal

| Decimal | Binario | Hexadecimal |
| --- | --- | --- |
| 0 | 0000 | 0 |
| 1 | 0001 | 1 |
| 2 | 0010 | 2 |
| 3 | 0011 | 3 |
| 4 | 0100 | 4 |
| 5 | 0101 | 5 |
| 6 | 0110 | 6 |
| 7 | 0111 | 7 |
| 8 | 1000 | 8 |
| 9 | 1001 | 9 |
| 10 | 1010 | A |
| 11 | 1011 | B |
| 12 | 1100 | C |
| 13 | 1101 | D |
| 14 | 1110 | E |
| 15 | 1111 | F |

El sistema de numeración hexadecimal consta de dieciséis caracteres y se usan para representar números binarios ya que su conversión es sencilla.

El sistema hexadecimal es un sistema en base dieciséis, es decir, formado por dieciséis caracteres alfanuméricos.

## Sistemas de numeración

dígitos [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F]

(86)16 = (134)10

8 * 161 + 6 * 160 = 134

Conversión Hexadecimal a Decimal

El número hexadecimal A6F016 significa:

Para distinguir un número hexadecimal de otro decimal, la base se escribe como subíndice.

En este caso sería: A6F016= 4273610

Conversión de Binario a Hexadecimal

Convierte 101110012 , en un número hexadecimal

| 1011 | 1001 |
| --- | --- |
|  |  |

El número 101110012 = B916

| 1011 | 1001 |
| --- | --- |
| B | 9 |

Conversión de binario a hexadecimal

Ejemplo: Convierte 11 1100 0000 11102

El número 111 1100 0000 11102 = 3C0E16

Conversión de Hexadecimal a Binario

Ejemplo: Convierte C3A616en un número binario

Por lo tanto C3A616= 11000011101001102

| C | 3 | A | 6 |
| --- | --- | --- | --- |
| 1100 | 0011 | 1010 | 0110 |

Sistema decimal codificado en binario (BCD)

En BCD cada dígito decimal está representado por cuatro bits

Por ejemplo, para convertir 390610, a BCD

El resultado de convertir 3906 decimal a BCD es

0011100100000110

| 3 | 9 | 0 | 6 |
| --- | --- | --- | --- |
| 0011 | 1001 | 0000 | 0110 |

Ejemplo, transforme 11010010011BCD, en un número decimal

| 0110 | 1001 | 0011 |
| --- | --- | --- |
|  |  |  |

El número 11010010011BCD = 69310

| 0110 | 1001 | 0011 |
| --- | --- | --- |
| 6 | 9 | 3 |

![Figura](img/fig-s35-p1.jpg)

![Figura](img/fig-s36-p1.jpg)

## Conclusiones

## Hexadecimal

Binario

Decimal

Octal

BCD

## Estudio Autónomo

## Sistemas de numeración

Estudio Autónomo

Transforme 11000110011BCD en un número decimal.

Convierta 370010 a BCD.

Convierta 10000010012 , en un número hexadecimal.

Convierta 100010012 , en un número octal.
