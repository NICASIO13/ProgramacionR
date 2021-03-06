Tarea Calificada
================
BNicasio
6/29/2021

# Tarea N" 01

## Ejercicios Parte 1

### 1\. Calcula los valores numéricos aproximados de

Resolver \(a=\frac{0.3*0.5}{0.3*0.15+0.2*0.8+0.5*0.12}\)

``` r
a<- (0.3*0.5)/(0.3*0.15+0.2*0.8+0.5*0.12)
a #eval: muestra respuesta, echo: muestra procedimiento
```

Resolver \(b=\frac{5^6}{6!}e^-5\)

``` r
b<-(exp(-5)*5**6)/factorial(6)
b
```

Resolver \(c={20 \choose 7}0.5^{7}0.6^{13}\)

``` r
c<-choose(20,7)*(0.4**7)*(0.6**13)
c
```

### 2\. Realizar la siguiente suma

Resolver a. \(1 + 2 + 3 + ... + 1000\)

``` r
sum(1:1000)
```

Resolver a. \(1 + 2 + 4 + 8 + 16 + ... + 1024\)

``` r
sum(seq(2,1024,2))
```

### 3\. El vector *grupo* representa el grupo al que pertenece una serie de alumnos

\-¿Cuántos elementos tiene?

``` r
grupo
library(tidyverse)
tibble(grupo)
#Tiene 192 elementos
```

\-¿En qué posiciones del vector está la letra “A”?

``` r
posicion<-which(grupo=="A")  
posicion
```

### 4\. El vector *nota* representa la nota de un examen de los alumnos que están en los grupos del vector *grupo*.

\-¿Cuanto suman todas las notas?

``` r
sum(nota) 
```

\-¿Cual es la media aritmética de todas las notas?

\-¿En qué posiciones están las notas mayores de 7.0?

\-Visualiza las notas ordenadas de mayor a menor ¿En qué posición está
la nota máxima?

### 5\. A partir de los vectores *grupo* y *nota* definidos.

\-Suma las notas de los 10 primeros alumnos del vector

\-Cuántos alumnos hay del grupo C?

\-¿Cuántos alumnos han aprobado?

\-¿Cuántos alumnos del grupo B han aprobado?

\-¿Qué porcentaje de alumnos del grupo C han aprobado?

\-¿De qué grupos son la máxima y mínima notas de toda la muestra?

\-Nota media de los alumnos de grupo A y B, juntos, considerando sólo a
los que han aprobado.

### 6\. Calcula el percentil 66 de las notas de todos los alumnos, y también de los alumnos del grupo C.

### 7\. Un alumno tiene una nota de 4.9. ¿Qué porcentaje, del total de alumnos, tiene una nota menor o igual que la suya? ¿Y qué porcentaje tiene una nota mayor o igual que la suya?

### 8\. Realiza el gráfico de diagramas de caja de las notas de cada grupo, para poder comparar el nivel de cada uno de ellos.

### 9\. Si la variable *conc* recoge la concentración de plomo (en ppm) en el aire de cierta zona durante un día completo

\-¿Cuál ha sido la concentración máxima?

\-¿En cuántos de los muestreos se ha superado la concentración de 40.0
ppm?

\-¿Cuál ha sido la concentración media del día?

\-¿Cuáles fueron las 10 mediciones más bajas del día?

\-Si la primera medida fue a las 00:00. ¿A qué hora del día se alcanzó
la concentración máxima?

## Ejercicios Parte 2

### 1\. Graficar los puntos (1,1),(2,4),(3,6),(4,8),(5,25),(6,36),(7,49),(8,61),(9,81),(10,100) en un plano utilizando RStudio.

### 2\. Ingresar la matriz A en RStudio

A =

### 3\. Ingresar la matriz identidad de tamaño 3

I =

### 4\. Crea una función que cree una matriz nula ingresando las dimensiones

### 5\. Modificar la matriz *diag(4)*, para que se parezca a la matriz B

B =

### 6\. Obtener la matriz transpuesta de A (ejercicio 2)

### 7\. Realizar las siguientes operaciones

A + B, A - B, 3B, AB

### 8\. Crea una función para calcular

Hallar \(P^6\) y P =

### 9\. Resolver el sistema de ecuaciones

\(3x - y + z = -1\\9x - 2y + z = -9\\3x + y - 2z = -9\)

### 10\. Utilizando la ayuda de R, investigue para qué sirven las funciones *eigen()* y *det()*

### 11\. Considerando las matrices

B=

A=

Calcular \(A \cdot B - A B^t\)

``` r
B<- matrix(1:50,nrow = 10, ncol = 5)
A<- matrix(c(0,1,0,0,1,1,0,1,1,0,0,1,0,0,1,1,0,1,0,1,0,1,0,1,0),nrow = 5,ncol = 5)
a1<-(B%*%A)
b1<- t(B)
c1<-A%*%b1
r<-a1 - c1
```

### 12\. Considere

\(\hat\beta = (X^t \cdot X)^{-1} \cdot X^t \cdot Y\) Determine la matriz
\(\hat\beta\) X=

### 13\. Corre el siguiente código para cargar los vectores *year* y *co2* en memoria

``` r
data(co2)
means = aggregate(co2, FUN=mean)
year = as.vector(time(means))
co2 = as.vector(means)
```
