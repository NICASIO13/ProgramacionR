Ejercicios2
================
BNicasio
7/2/2021

# EJERCICIOS PARTE 2

## 1\. Graficar los puntos

\((1,1),(2,4),(3,6),(4,8),(5,25),(6,36),(7,49),(8,61),(9,81),(10,100)\)
en un plano utilizando RStudio.
![](Ejercicios2_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

## 2\. Ingresar la matriz A en RStudio

\(A = \begin{pmatrix} 1 & 2 & 3 \\ 2 & 4 & 6 \\ 3 & 6 & 9 \\ 4 & 8 & 12 \end{pmatrix}\)

    ##      [,1] [,2] [,3]
    ## [1,]    1    5    9
    ## [2,]    2    6   10
    ## [3,]    3    7   11
    ## [4,]    4    8   12

## 3\. Ingresar la matriz identidad de tamaño 3

\(I = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix}\)

    ##      [,1] [,2] [,3]
    ## [1,]    1    0    0
    ## [2,]    0    1    0
    ## [3,]    0    0    1

## 4\. Crea una función que cree una matriz nula ingresando las dimensiones

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    0    0    0    0
    ## [2,]    0    1    0    0
    ## [3,]    0    0    1    0
    ## [4,]    0    0    0    1

## 5\. Modificar la matriz `diag(4)`, para que se parezca a la matriz B

\(B = \begin{pmatrix} 0 & 0 & 0 & 0 \\ 0 & 2 & 0 & 0 \\ 0 & 0 & 3 & 0 \\ 0 & 0 & 0 & 4 \end{pmatrix}\)

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    0    0    0    0
    ## [2,]    0    2    0    0
    ## [3,]    0    0    3    0
    ## [4,]    0    0    0    4

## 6\. Obtener la matriz transpuesta de A (ejercicio 2)

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    1    2    3    4
    ## [2,]    5    6    7    8
    ## [3,]    9   10   11   12

## 7\. Realizar las siguientes operaciones

\(A + B\), \(A - B\), \(3B\) y \(AB\)

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    1    7    9    0
    ## [2,]    2    6   13    0
    ## [3,]    3    7   11    0
    ## [4,]    4    8   12    4

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    1    3    9    0
    ## [2,]    2    6    7    0
    ## [3,]    3    7   11    0
    ## [4,]    4    8   12   -4

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    0    6    0    0
    ## [2,]    0    0    9    0
    ## [3,]    0    0    0    0
    ## [4,]    0    0    0   12

    ##      [,1] [,2] [,3] [,4]
    ## [1,]    0   10    0    0
    ## [2,]    0    0   30    0
    ## [3,]    0    0    0    0
    ## [4,]    0    0    0    0

## 8\. Crea una función para calcular \(P^6\)

\(P = \begin{pmatrix} 1 & 2 & 3 \\ -2 & 4 & -2 \\ 1 & 0 & 1 \end{pmatrix}\)

    ##      [,1] [,2] [,3]
    ## [1,]    1    2    3
    ## [2,]   -2    4   -2
    ## [3,]    1    0    1

    ##       [,1]  [,2]  [,3]
    ## [1,] -1792    24 -2824
    ## [2,]  -464 -2416 -1344
    ## [3,]  -648   440  -912

## 9\. Resolver el sistema de ecuaciones

\(3x - y + z = -1\\9x - 2y + z = -9\\3x + y - 2z = -9\)

    ## [1] -1  2  4

## 10\. Utilizando la ayuda de R, investigue para qué sirven las funciones `eigen()` y `det()`

## 11\. Considerando las matrices

\[B=\begin{pmatrix} 
1 & 2 & 3 & 4 & 5 \\
2 & 4 & 6 & 8 & 10 \\
3 & 6 & 9 & 12 & 15 \\
4 & 8 & 12 & 16 & 20 \\
5 & 10 & 15 & 20 & 25 \\
6 & 12 & 18 & 24 & 30 \\
7 & 14 & 21 & 28 & 35 \\
8 & 16 & 24 & 32 & 40 \\
9 & 18 & 27 & 36 & 45 \\
10 & 20 & 30 & 40 & 50
\end{pmatrix}\]

\[A = \begin{pmatrix}
  0 & 1 & 0 & 1 & 0 \\
  1 & 0 & 1 & 0 & 1 \\
  0 & 1 & 0 & 1 & 0 \\
  0 & 1 & 0 & 0 & 1 \\
  1 & 0 & 1 & 1 & 0 \\
\end{pmatrix}\] Calcular \(A \cdot B - A B^t\)

## 12\. Considere

\(\hat\beta = (X^t \cdot X)^{-1} \cdot X^t \cdot Y\) Determine la matriz
\(\hat\beta\)
\(x=\begin{pmatrix}1 & 1\\ 1 & -1\\ 1 & 0\\ 1 & 1\\ 1 & 2\\ \end{pmatrix}\)
\(y = \begin{pmatrix}0\\0\\1\\1\\3\\\end{pmatrix}\)

    ##      [,1]
    ## [1,]    5
    ## [2,]    7

## 13\. Corre el siguiente código para cargar los vectores `year` y `co2` en memoria

  - El vector `co2` contiene medidas de \(CO_2\) en la atmósfera, en
    unidades de *ppm*, durante el periodo 1959-1997. El vector `year`
    contiene sus años correspondientes.
  - Calcular un vector de diferencias de \(CO_2\) entre años
    consecutivos, que sería:
      - \(CO_2\) en 1960 menos \(CO_2\) en 1959
      - \(CO_2\) en 1961 menos \(CO_2\) en 1960
      - y así sucesivamente…
  - Crear un **plot** con lineas y puntos mostrando las diferencias
    consecutivas de \(CO_2\) en función del tiempo (1960, 1961, etc…),
    en **negrita**
  - La diferencia de concentración de \(CO_2\) entre 2020 y 2019 fue
    igual a 2.64. Agregar un punto rojo representando esa diferencia al
    plot ya creado (usar una forma diferente, como `pch=4`)

## 14\.

  - Lee el archivo `rainfall.csv` como un `data.frame`
  - Calcula e imprime un vector con los nombres de las estaciones donde
    al menos uno de los meses tiene una precipitación superior a 180mm.

<!-- end list -->

    ## # A tibble: 7 x 10
    ##   Estaciones   Jan   Feb   Mar   Apr   May   Sep   Oct   Nov   Dec
    ##   <chr>      <int> <int> <int> <int> <dbl> <dbl> <int> <int> <int>
    ## 1 Golan Farm   201   196   115    40   9.1   1.9    22    86   159
    ## 2 Eilon        201   153    92    34   9.5   3.7    36   112   160
    ## 3 Fasutta      205   179   106    35   7.8   2.6    35   106   162
    ## 4 Yehiam       204   160    95    32   9.1   2.3    36   115   169
    ## 5 Kfar Mahol   209   183   105    35   8.3   3.2    30   112   170
    ## 6 Meron        220   192   109    34   7.6   2.3    28   100   171
    ## 7 Horashim     238   190   114    38  12.2   3.4    37   122   202
