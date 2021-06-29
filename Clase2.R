#If condicion
#Else, la condicion anterior es falsa para aqui
if (expresion) {
  declaracion1
} else {
  declaracion2
}

#Eje1
x<--1
if (x < 0){
  print("El numero es negativo")
} else if (x >0){
  print("El numero es positivo")
} else{
  print("El valor es cero")
}
#Ejem ERROR
if (seq(1,10,1) < 5) {
  print("Verdad")
} else {
  print("Mentira")
}
ifelse(seq(1,10,1), TRUE, FALSE)
#Eje2: hombres / mujeres adultos o menores de edad
x <- c("hombre", "hombre", "mujer", "hombre", "mujer")
y <- c(10, 14, 80, 56, 27)
ifelse(x == "hombre",
       ifelse(y > 18, "Hombre Adulto", "Menor de Edad"),
       ifelse(y > 18, "Mujer Adulta", "Mujer Menor de Edad"))
#Eje3
temp <- c(15, 22, 30)
suelo <- c("seco", "humedo", "charcos")
valtemp <- temp[1]
valsuelo <- suelo[3]
if (valtemp %in% 12:22 & valsuelo == "seco") {
  print("\nCielo despejado")
} else if (valtemp == 22 | valsuelo == "humedo") {
  print("\nlluvia leve")
} else if (valtemp > 22 & valsuelo == "charcos") {
  print("\nlluvia severa")
} else {
  print("\nFaltan datos")
}
