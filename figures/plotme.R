library(ggplot2)
library(dplyr)

# Do normal
raw <- read.csv('normal.csv',header=TRUE)
data <- tibble(raw)
last_points <- data %>% slice(7:12,25:30)
fig41 <- ggplot(data,aes(x=x,y=V,color=as.factor(y)))+
      geom_line()+
      geom_text(data=last_points, aes(label=as.factor(y)))+
      xlab("x, \\unit{\\milli\\meter}")+
      ylab("voltage, \\unit{\\volt}")+
      theme_bw(base_size=8)+
      theme(legend.position="none")
ggsave("newfig41.svg",plot=fig41,width=3.5,height=2,units="in")

# Do horizontal
raw <- read.csv('horiz.csv',header=TRUE)
data <- tibble(raw)
last_points <- data %>% slice(8:14,29:35)
fig51 <- ggplot(data,aes(x=x,y=V,color=as.factor(y)))+
      geom_line()+
      geom_text(data=last_points, aes(label=as.factor(y)))+
      xlab("x, \\unit{\\milli\\meter}")+
      ylab("voltage, \\unit{\\volt}")+
      theme_bw(base_size=8)+
      theme(legend.position="none")
ggsave("newfig51.svg",plot=fig51,width=3.5,height=2,units="in")

# Do vertical
raw <- read.csv('vert.csv',header=TRUE)
data <- tibble(raw)
last_points <- data %>% slice(7:12,31:36)
fig61 <- ggplot(data,aes(x=x,y=V,color=as.factor(y)))+
      geom_line()+
      geom_text(data=last_points, aes(label=as.factor(y)))+
      xlab("x, \\unit{\\milli\\meter}")+
      ylab("voltage, \\unit{\\volt}")+
      theme_bw(base_size=8)+
      theme(legend.position="none")
ggsave("newfig61.svg",plot=fig61,width=3.5,height=2,units="in")

