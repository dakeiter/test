.libPaths("P:/RLibrary2")
library(tidyverse)
library(ggplot2)

fish_data<-read_csv("Gaeta_etal_CLC_data_1.csv")

fish_data %>%         #piping allows modification of a file
  mutate(length_cat=ifelse(length>300, "big","small")) %>% #mutate adds a column
  filter(!scalelength<1)-> #filter with an exclamation point removes specified data
fish_data_cat #creates new object using arrow in row above and object name

fish_data_cat %>% 
  filter(annnumber=="EDGE")->
  fish_data_edge

ggplot(data=fish_data_edge, aes(x=length,y=scalelength))+
  geom_point(aes(color=lakeid))+
  theme_classic()

