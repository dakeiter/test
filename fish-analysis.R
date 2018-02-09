.libPaths("P:/RLibrary2")
library(tidyverse)

fish_data<-read_csv("Gaeta_etal_CLC_data.csv")

fish_data %>%         #piping allows modification of a file
  mutate(length_cat=ifelse(length>300, "big","small")) %>% #mutate adds a column
  filter(!scalelength<1)-> #filter with an exclamation point removes specified data
fish_data_cat #creates new object using arrow in row above and object name






