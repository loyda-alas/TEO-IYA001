# Tema 13 y 14

**Lectura en el contenido completo:** [Capítulo 13 — Arquitectura de procesadores RISC](../Contenido%20completo/Cap%C3%ADtulo%2013%20-%20Arquitectura%20de%20procesadores%20RISC.md) · [Capítulo 14 — Set de instrucciones ARM](../Contenido%20completo/Cap%C3%ADtulo%2014%20-%20Set%20de%20instrucciones%20ARM.md)

**Exposiciones de alumnos:** [Grupo 13 · Arquitectura RISC (PDF)](../Exposiciones-alumnos/13%20-%20Arquitectura%20RISC.pdf) · [Grupo 14 · Set de instrucciones ARM (PDF)](../Exposiciones-alumnos/14%20-%20Set%20de%20instrucciones%20ARM.pdf) · [Todas las exposiciones](../Exposiciones-alumnos/README.md)

PDF de la presentación: [Tema 13 y 14.pdf](Tema%2013%20y%2014.pdf)

---

## Arquitectura de procesadores RISC

### Origen de RISC y de ARM

- El concepto RISC nació hacia 1980 en los programas de investigación de procesadores de las universidades de **Stanford** y **Berkeley**, que buscaban simplificar los procesadores. A los procesadores que ya existían se les llamó CISC.
- Los primeros procesadores RISC fueron **RISC I y RISC II** de Berkeley y **MIPS** de Stanford (*Microprocessor without Interlocking Pipeline Stages*).
- ARM significa ***Advanced RISC Machine***: es, ante todo, una computadora RISC, diseñada para implementaciones muy pequeñas, de alto rendimiento y de muy bajo consumo.
- El primer procesador ARM lo desarrolló **Acorn Computers** (Cambridge) entre 1983 y 1985. Fue el primer microprocesador RISC de uso comercial.
- En 1990 nació **ARM Limited** como empresa separada. No fabrica procesadores: los diseña y concede licencias de su propiedad intelectual a fabricantes de semiconductores de todo el mundo. Así se convirtió en líder de las aplicaciones embebidas de bajo consumo y bajo coste.

## Arquitectura de ARM

La arquitectura ARM incorpora varias características, algunas únicas y otras muy optimizadas respecto al resto de arquitecturas:

- **Arquitectura de carga y almacenamiento (load-store).** Las instrucciones que acceden a memoria están separadas de las que procesan datos; estas últimas solo trabajan con registros.
- **Instrucciones de longitud fija de 32 bits**, con campos uniformes que simplifican la decodificación.
- **Formatos de instrucción de 3 direcciones**: código de operación, primer operando, segundo operando y destino. Por ejemplo, `add d, s1, s2` hace `d := s1 + s2`. El resultado no se escribe sobre ningún operando, lo que ayuda al compilador a optimizar el *pipeline*.
- **Todas las instrucciones se ejecutan en un ciclo de reloj**: un ciclo de instrucción equivale a un ciclo de máquina.
- **Modos de direccionamiento simples**: el procesamiento de datos solo opera con registros, no directamente en memoria.
- **Control sobre la unidad aritmética lógica en cada instrucción de procesamiento de datos**, lo que aprovecha al máximo la ALU.
- **Modos de direccionamiento con incremento y decremento automático de punteros**, para optimizar los bucles.
- **Carga y almacenamiento de múltiples instrucciones**, y ejecución condicional de todas las instrucciones.
- **Set de instrucciones ortogonal, regular o simétrico**: casi todos los registros son de propósito general y se pueden usar en cualquier instrucción.
- **Arquitectura “Thumb”**: algunas variantes usan un set de instrucciones de 16 bits, forma comprimida del de 32 bits, para mejorar la densidad de código.

| f bits | n bits | n bits | n bits |
| --- | --- | --- | --- |
| función | dir. operando 1 | dir. operando 2 | dir. destino |

**Formato de instrucción de tres direcciones.**

### Registros

- ARM tiene **37 registros de 32 bits**: 31 de propósito general y 6 de estado.
- En cada momento el software ve **16 registros, de r0 a r15**. Los demás están en bancos que cambian según el modo y sirven para acelerar las excepciones.
- **r15** es el contador de programa (PC).
- **r14** (LR, *Link Register*) guarda la dirección de retorno en los saltos y llamadas a subrutina.
- **CPSR** (*Current Program Status Register*) es el registro de estado del programa visible para el usuario.

![Registros disponibles en cada modo de los procesadores ARM](../Contenido%20completo/img/fig-1162.jpg)

**Registros disponibles en cada modo de los procesadores con arquitectura ARM.**

## Funcionamiento

El cambio entre modos se hace por software o por interrupciones externas. La mayoría de las aplicaciones corren en modo usuario, con pocos privilegios, y no pueden acceder a los recursos protegidos del sistema; así el sistema operativo controla esos recursos.

- **Modo usuario, USR, User Mode.** Sin privilegios; es el modo normal de los programas. Para acceder a funciones del sistema, como los periféricos o la entrada y salida de caracteres, tienen que hacer llamadas al supervisor.
- **Modos “excepciones”** (privilegiados):
  - **SVC, supervisor:** se entra con el reset o con una interrupción de software (SWI). Es el modo protegido del sistema operativo.
  - **UND, instrucción indefinida:** maneja instrucciones indefinidas y permite emular coprocesadores por software.
  - **FIQ, interrupción rápida:** interrupciones de alta prioridad, para transferencias de datos de alta velocidad.
  - **IRQ, interrupción normal:** interrupciones de baja prioridad o de propósito general.
  - **ABT, aborto:** violaciones de acceso a memoria, al leer una instrucción o al acceder a un dato.
  - **SYS, sistema:** privilegiado pero con los mismos registros que el modo usuario (desde la arquitectura ARM 4).

## Acceso a la memoria

- La memoria se maneja en formato **little-endian**, igual que en Intel.
- Al ser máquinas de 32 bits, pueden acceder hasta **4 GB de RAM**.
- Los tamaños de dato se clasifican como en Intel y compatibles:

| Bits | Tipo |
| --- | --- |
| 8 | Byte |
| 16 | Word |
| 32 | Double word |

- ARM usa **solo paginación**, de dos niveles, con páginas de 4 KB y 64 KB, y puede manejar **dos directorios de páginas a la vez**.

### Interrupciones

Salvo en el reset, todas las interrupciones y excepciones se atienden igual:

1. Se termina la instrucción en curso.
2. Se cambia al modo de la excepción.
3. El PC se guarda en r14 y el CPSR en el SPSR.
4. Se inhabilitan las IRQ (y las FIQ si la excepción era una FIQ).
5. El PC salta a una dirección entre 0x00 y 0x1C de la tabla de vectores, que suele contener un salto a la rutina de atención.

Con un **reset** se activa el modo supervisor, se inhabilitan IRQ y FIQ y el PC se carga con 0x00000000.

![Vectores de interrupción en ARM](../Contenido%20completo/img/fig-1175.jpg)

**Ubicación y función de los vectores de interrupción en ARM.**

## Set de instrucciones ARM

### Ejecución condicional

- Los **4 bits superiores** de cada instrucción son un código de condición, así que **cualquier instrucción puede ser condicional**. Esto evita perder ciclos en el *pipeline* con trozos de código pequeños.
- Basta con añadir un sufijo: `ADD r0,r1,r2` equivale a `ADDAL r0,r1,r2` (AL = siempre), y `ADDEQ r0,r1,r2` solo suma si la bandera Z está activa.

![Formato del set de instrucciones ARM](../Contenido%20completo/img/fig-1205.jpg)

**Formato del set de instrucciones de ARM: los 4 bits más significativos son el código de condición.**

![Configuraciones del campo condición](../Contenido%20completo/img/fig-1206.jpg)

**Configuraciones que puede tomar el campo CONDICIÓN.**

![Campo condición y banderas](../Contenido%20completo/img/fig-1214.jpg)

**Configuraciones del campo CONDICIÓN y las banderas que afecta.**

### Procesamiento de datos

Todas estas instrucciones comparten formato y **solo trabajan con registros**, nunca con memoria; por eso tardan un ciclo de reloj.

| Grupo | Instrucciones | Qué hacen |
| --- | --- | --- |
| Aritméticas | `ADD`, `ADC`, `SUB`, `SBC`, `RSB`, `RSC` | Suma, suma con acarreo, resta, resta con acarreo, resta inversa y resta inversa con acarreo |
| Comparaciones | `CMP`, `CMN`, `TST`, `TEQ` | Solo actualizan las banderas: resta, suma, AND y EOR |
| Lógicas | `AND`, `ORR`, `EOR`, `BIC` | AND, OR, XOR y borrado de bits (AND NOT) |
| Movimiento | `MOV`, `MVN` | Copia un operando o su negación |
| Multiplicación | `MUL`, `MLA` | `Rd = Rm × Rs` y `Rd = Rm × Rs + Rn` |

```
ADD   r0, r1, r2     ; r0 = r1 + r2
SUBGT r3, r3, #1     ; resta 1 si se cumple «mayor que»
RSB   r0, r1, r2     ; r0 = r2 - r1
CMP   r0, r1         ; compara r0 con r1
BIC   r0, r1, r2     ; r0 = r1 AND NOT r2
MOVS  r2, #10        ; r2 = 10 y actualiza banderas
```

Los **operandos inmediatos** van precedidos de `#`, por ejemplo `ADD r0,r1,#5`. En el ensamblador de ARM, `&` indica hexadecimal: `AND r2,r3,#&FA`.

### Desplazamientos y rotaciones

No son instrucciones propias: modifican un operando antes de la operación. Por ejemplo, `ADD r1,r2,r3 LSL #3` hace `r1 = r2 + r3 × 8`.

- **LSL**, desplazamiento lógico a la izquierda: añade ceros por la derecha (`00000011` → `00001100`).
- **LSR**, desplazamiento lógico a la derecha: añade ceros por la izquierda.
- **ASL**, desplazamiento aritmético a la izquierda: igual que LSL.
- **ASR**, desplazamiento aritmético a la derecha: repite el bit de signo por la izquierda.
- **ROR**, rotación a la derecha: el bit que sale vuelve a entrar.
- **RRX**, rotación a la derecha extendida a la bandera de acarreo.

![ROR #5 y RRX](../Contenido%20completo/img/fig-1256.jpg)

**Rotaciones ROR #5 y RRX.**

### Ejemplos de código

El máximo común divisor con el algoritmo de Euclides y una condicional simple, en ARM y en C. En el código ARM se ve el uso implícito de las condiciones en las instrucciones.

![Ejemplos de código en ARM y C](../Contenido%20completo/img/fig-1265.jpg)

**Ejemplos de código en ARM y su equivalente en C.**

<!-- navegación -->

---

[← Anterior: Tema 11 y 12](../Tema%2011%20y%2012/README.md) | [Índice](../README.md) | [Siguiente: Tema 15, 16, 17 y 18 →](../Tema%2015%2C%2016%2C%2017%20y%2018/README.md)
