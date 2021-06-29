#3.6.1 Gráficos de dispersión

# Scatter plots
x <- 1:12
y <- c(27, 28, 26, 22, 19, 16, 14, 13, 14, 16, 20, 23)
estaciones <- c(rep("verano", 2), rep("otoño", 3), rep("invierno", 3), rep("primavera", 3), "verano")

df <- data.frame(x, y, estaciones)

plot(
  df$x, df$y,
  type = "o", pch = 14, xlab = "Mes",
  ylab = "Temperatura [°C]", main = "Lima, Temperatura mensual promedio"
)


#3.6.2 Gráficos de lineas

plot(
  df$x, df$y,
  type = "o", pch = 20, xlab = "Mes",
  ylab = "Temperatura [°C]", main = "Lima, Temperatura mensual promedio", col = "#F47E40"
)

df["colores"] <- c(rep("black", 2), rep("green", 3), rep("red", 3), rep("blue", 3), "red")
legend("top",
       legend = levels(factor(estaciones)),
       col = c("black", "green", "red", "blue"),
       pch = c(16, 17, 18)
)


# Histogram (frecuencia)
# hist(cars$speed)
# hist(cars$speed, breaks = 10)
hist(cars$dist, freq = T, col = "skyblue", labels = T)




# Boxplot  (#distribucion de datos)
equakes <- read.csv('https://raw.githubusercontent.com/ryali93/ProgramacionR/master/data/earthquakes.csv', sep = ",")
# Boxplot
boxplot(cars$speed, cars$dist)
boxplot(`Magnitude` ~ `Source`, equakes, col = palette(rainbow(2)))
