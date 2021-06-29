#Borrar lista
rm(list = ls())

# Tipos de datos en R

#Numericos: Numeros Reales
Numeric<- 3.14

#Enteros: Numeros enteros
Integer<- 3L

#Caracteres: Datos en caracteres
Character<-"Holiwis Mundo Mundial"
#Complejos: Numeros compeljos
Complex<- 3+3i
#Logicos: Valores Logicos TRUE and FALSE
a<- 4
b<- 5
a>b
#Factor: Para datos
as.factor()


#Estructuras de Datos

#Vector(One dato): Informacion de Cualquier tipo de datos MENOS factor
edad <- c(15, 19, 13, 20,30)
edad>19
is.numeric(edad) #is. para identificar tipo de dato
edad[2:4]
comic_fav <- c(NA, 'Superman', 'Batman', NA, 'Batman')
prepos<- c(TRUE, TRUE, NA, FALSE, TRUE)
# x:y puede leerse como "secuencia de x a(:) y"
1:20
#Extraes elemento
edad[1]
1:10

#Factor(One dato): Informacion Numerica o Logica
vect02 <- c("Dec", "Apr", "Jan", "Mar", "Jan", "Mar")
sort(vect01) #No se ordena de una forma ?til



#Matriz: Es una estructura bidimensional NxN
a<- 1:30
dim(a)<-c(5,6)
a
matrix01 <- matrix(a, nrow = 5, ncol = 6, byrow = T)
matrix01


#Data Frame:Es una lista de vectores de la misma longitud
mimarco <- data.frame(edad, prepos, comic_fav)
mimarco

#subset: filtrar datos cuando queremos que se cumplan ciertas condiciones
iris
subset(iris, Sepal.Length <= 4.5 & Species == "setosa")
subset(iris, Sepal.Width <= 3 & Species == "setosa")

#LISTAS 
coordenadas <- list(x = 10, y = 15)
coordenadas

point <- list(id = 123, coord = coordenadas, spatial.reference = "WGS_84")
point
point[1]
class(point[2])

#Lectura / escritura de datos (.csv, .xlsx, .RData, .rds)
# datos ser? un 'data frame'
data <- read.csv('https://raw.githubusercontent.com/ryali93/ProgramacionR/master/data/earthquakes.csv', sep = ",")
head(data)

#EJERCICIO 1
#Los datos historicos reprentan la ubicaci?n de los terremotos.
data <- read.csv('https://raw.githubusercontent.com/ryali93/ProgramacionR/master/data/earthquakes.csv', sep = ",")
head(data)
dim(data)
#Descripcion Visual y num?rica de la variable Magnitude
Magnitud<-data$Magnitude
dim(data)     #Registro de Filas yColumnas
Magnitud      #Imprimir columna Magnitude
head(Magnitud)
Magnitud[10]  #Registro 10 de la columna

#EJERCICIO 2
datapobreza <- read.csv('https://raw.githubusercontent.com/ryali93/ProgramacionR/master/data/pobreza_extrema.csv', sep = ";")
depas<- datapobreza$DEPARTAMENTO
typeof(depas)
datapobreza
summary(datapobreza$Incidencia)
plot(datapobreza$Incidencia)
head(datapobreza)
typeof(datapobreza)
#Distritos de la regi?n Ancash e Ica sin poblaci?n en extrema pobreza
Ica<-subset(datapobreza, DEPARTAMENTO == "Ica" & Incidencia >= 11.2)
Ancash<-subset(datapobreza, DEPARTAMENTO == "Ancash" & Incidencia >= 11.2)
#Mayor valor a Los Olivos


subset(mtcars, cyl == 6 & hp > 115, select = c(mpg, cyl, disp))

#EJERCICIO 3
datater <- read.csv('https://raw.githubusercontent.com/ryali93/ProgramacionR/master/data/earthquakes.csv', sep = ",")
head(data)
summary(datater$Magnitude)
plot(datater$Magnitude)
plot(datater$Latitude,datater$Longitude)
summarise_all(datater, funs(sum(is.na(.)))) #Contar nulos NA

#valores extremos (superior a la media mas 3 veces la desviaci?n estandar).
extre<-subset(datater, Magnitude > (median(datater$Magnitude)+sd(datater$Magnitude)*3), select = c(Latitude, Longitude, Depth, Magnitude))
extre
#Percentil 98
percentil <- quantile(datater$Magnitude, probs = 0.98, type = 7)
percentil

#https://ryali93.github.io/ProgramacionR/
#https://fhernanb.github.io/Manual-de-R/read.html#lectura-de-bases-de-datos-en-excel
#https://bookdown.org/matiasandina/R-intro/estadistica-espacial.html#instalar-paquetes-geo-r