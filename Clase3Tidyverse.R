install.packages("Hmisc", dependencies = T)
Sys.setenv(R_REMOTES_NO_ERRORS_FROM_WARNINGS=TRUE) #Warning message  package ‘pacman’ was built under R version 4.0.5 
library(tidyverse)
library(nycflights13)
library(pacman)
library(Hmisc)
tibble(flights)
view(flights)
library(magrittr) #USAR %<>% :
iris
iris2<- as_tibble(iris)
table(iris$Species) #Conteo de valores que se repiten en un conjunto
prop.table(table(iris$Species)) #Porcentaje
hist(iris2$Petal.Length) # frecuencia
dplyr::filter(iris2, Petal.Length <=5) 
dplyr::filter(iris2, Petal.Length <=7 & Sepal.Width >=1, Species == "Species") 
dplyr::filter(iris2, Petal.Length <=5 | Petal.Length >=3)
boxplot(iris$Sepal.Length) #distribucion de datos

#
vector01 <- sum(vector01)
vector01 %<>% sum()

iris02 <- dplyr::filter(iris02, Petal.Length <= 5 | Sepal.Width >= 3)
iris02 %<>% dplyr::filter(Petal.Length <= 5 | Sepal.Width >= 3)
#
near((1/49)*49,1)
df01<- dplyr::filter(flights, ! month == c(1, 2))
df01
df02<-dplyr::filter(flights, !(month %in% c(1, 2)))
df02
table(df01$month)
table(df02$month)


df03<- dplyr::filter(flights, month == c(9, 10))
df03
df04<-dplyr::filter(flights, month %in% c(9, 10))
df04
table(df03$month)
table(df04$month)

#NAC = missing values
vectorn<- c(1,3,5,NA, 57, NA,8)
vectorn
is.na(vectorn) #TRUE los vectores
sum(is.na(vectorn)) #cantidad de NA


View(flights) #abrirá el conjunto de datos en el visor de RStudio
#(int) significa enteros.
#(dbl) significa dobles o números reales.
#(chr) significa vectores de caracteres o cadenas.
#(dttm) significa fecha y hora (una fecha + una hora).

# (filter()): Elija observaciones por sus valores
# (arrange()): Reordenar las filas
# (select()): Elija las variables por sus nombres
# (mutate()): Crear nuevas variables con funciones de variables existentes
# (summarize()): Colapsar muchos valores en un solo resumen
#Todos estos se pueden usar junto con:  group_by()


#3.7.1.3 Filtrar filas con filter(): seleccionar todos los vuelos del 1 de enero
filtro1<- dplyr::filter(flights, month == 1, day == 1)
filtro1
filtro2<- dplyr::filter(flights, month == 12, day == 25)
filtro2
# Comparaciones
#R proporciona el conjunto estándar: >, >=, <, <=, != (no igual) y == (igual).
dplyr::filter(flights, month == 1)
#En lugar de confiar en ==, usa near()   NO FUNCIONA "PREGUNTAR"
x<- 3*pi
x
x1<- pi
near(x1)
near(1 / 49 * 49, 1)

#Operadores lógicos
#operadores Booleanos: & es “y”, | es “o”, y ! es “no”
dplyr::filter(flights, month == 11 | month == 12)








library(tidyverse)


#Tibbe
df<- data.frame(Num= c(1,2,3,4),
                Letrs= c("a","b","c",NA),
                Caract= factor(c("gato","perro","pavo","cuy")))

tibb<-tibble(Num= c(1L,2L,3L,4L),
             Letrs= c("a","b","c",NA),
             Caract= factor(c("gato","perro","pavo","cuy")))

df1<- data.frame(Num= 1:4,
                 Letrs= c("a","b","c",NA),
                 Caract= factor(c("gato","perro","pavo","cuy")))

tibb1<-tibble(Num= 1:4,
              Letrs= c("a","b","c",NA),
              Caract= factor(c("gato","perro","pavo","cuy")))
tibb
tibb1
df
df1


#Mejora la escritura
pacman::p_load(tidyverse, magrittr)
#Ejemplo 1
#Sin pipe
round(log(sqrt(27)))

#Con pipe
27%>%
  sqrt%>%
  log%>%
  round

#ejemplo 2
#pipe de asignacion
x <-10
x <- x +4
#con pipe
y<- 10
y %<>% +4


#ejemplo 3
d<- tibble(n= 1:10,
           e= 11:20)
#sin pipe de asigncion
d$n<-factor(d$n)
#sin pipe de asigncion
d$n %<>% factor 



#MUTATE
iris
dim(iris)
iris2<- iris %>% 
  mutate(sep_lw =Sepal.Length/Sepal.Width,
         n = 1:150,
         Petal.Length = Petal.Length-0.5)
head(iris2)

#SELEC
tibble(iris)
iris %>%  select(Species)
iris %>%  select(2:3)
iris %>% select(-2)

#FILTER
trees
trees %>% 
  filter(Height>85)
trees %>% 
  filter(Height>80 &
           Volume>40)
datapobreza <- read.csv('https://raw.githubusercontent.com/ryali93/ProgramacionR/master/data/pobreza_extrema.csv', sep = ";")
head(datapobreza)
Anacash<-datapobreza %>% 
  filter(DEPARTAMENTO=='Ancash' &
           Incidencia>11.2)
Ica<-datapobreza %>% 
  filter(DEPARTAMENTO=='Ica' &
           Incidencia<11.2)
Ica
#Mayor valor a Los Olivos
summary(datapobreza)
datapobreza1<-datapobreza %>% 
  filter(DISTRITO=='Los Olivos') %>% 
  mutate(Incidencia=Incidencia+86.7)
datapobreza %>% 
  filter(DISTRITO=='Los Olivos')
datapobreza
datapobreza1 %>% 
  filter(DISTRITO=='Los Olivos')


#SLICE
co2
CO2 %>% slice(1:20)
CO2 %>% slice_head(n=3)
as.tibble(datapobreza)


tribble(
  ~x, ~y,  ~z,
  "a", 2,  3.6,
  "b", 1,  8.5
)
year
