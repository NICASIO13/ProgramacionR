library(nycflights13)
dplyr::filter(flights, day == 1| day ==2)
dplyr::filter(flights, day %in% c(1:2))
dplyr::filter(flights, day >1 |day < 5)
rm(list = ls())

dplyr::summarise(flights, delay = mean(de_lay, na.rm = T))
library(tidyverse)
data<- read.csv("https://raw.githubusercontent.com/ryali93/ProgramacionR/master/data/raingaugeDataset.csv", sep = ",")
listR<- read.csv("https://raw.githubusercontent.com/ryali93/ProgramacionR/master/data/raingaugeDataset.csv", sep = ";")


seq(as.Date("1980-01-01"), as.Date("2013-12-31"), by = "day") %>% 
      length()

data1<- dplyr::tibble(data) %>% 
  select(date, qc00000132) %>% 
  mutate(date = as.Date(date, format = "%d/%m/%Y")) %>% 
  rename(pp = qc00000132) %>% 
  arrange(date)
ppMonth<-
  data1 %>% 
  group_by(date = str_sub(date,1,7)) %>% 
  mutate(
    missingVal = sum(is.na(pp))
  )
ppMonth
