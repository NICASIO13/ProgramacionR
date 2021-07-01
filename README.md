Tarea Calificada
================
BNicasio
6/29/2021

true

# Tarea N" 01

## Ejercicios Parte 1

### 1\. Calcula los valores numéricos aproximados de

\(a=\frac{0.3*0.5}{0.3*0.15+0.2*0.8+0.5*0.12}\)

``` r
muestra=c(1,2,3,NA,2.8,3.1,4.9)
media=mean(muestra,na.rm=TRUE)
n=length(na.omit(muestra))
varianza=round(var(muestra,na.rm=TRUE)*(n-1)/n,3)
desv.tipica=round(sqrt(varianza),3)
```

Las raíces de la ecuación \(x^2= 2\) son \(x=\sqrt{ 2}\) y $x=- $; en
general, las raíces de \(ax^2+b x+c=0\), con \(a\neq 0\), vienen dadas
por la fórmula \[
x=\frac{-b\pm\sqrt{b^2-4 a c}}{2a}.
\] \[
\left(\begin{array}{ccc}
a_{1,1} & a_{1,2} & a_{1,3}\\
a_{2,1} & a_{2,2} & a_{2,3}
\end{array}\right)
\]
