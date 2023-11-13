#my first github synced script
library(tidyverse)
library(renv)
#restore the versions of the packages used to develop this project
renv::restore
#remember to use oull in Git tab to get changes from github


x = c(1,2,3,4,5)
y = c(1,4,3,6,9)
data = data.frame (x,y)
data

fig001 = data |> ggplot(aes(x = x, y = y)) + 
  geom_point() +
  geom_smooth(method = "lm")

ggsave("./figures/fig001.png", plot = fig001, width = 1920, height = 1068, units = "px")
