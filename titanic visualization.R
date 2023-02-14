Titanic = read.csv("titanic (1).csv", stringsAsFactors = FALSE)

View(Titanic)

str(Titanic)

Titanic$sex <- as.factor(Titanic$sex)
Titanic$pclass <- as.factor(Titanic$pclass)
Titanic$survived <- as.factor(Titanic$survived)
Titanic$embarked <- as.factor(Titanic$embarked)

str(Titanic)

library(ggplot2)

ggplot(Titanic, aes(x = survived)) + theme_classic() + 
  geom_bar() + 
  labs(y = "Passenger count", title = "Titanic Survival Count")

ggplot(Titanic, aes(x = sex, fill = survived)) + theme_light() + 
  geom_bar() + 
  labs(y = "Passenger count", 
       title = "Titanic Survival Count by gender")

ggplot(Titanic, aes(x = pclass, fill = survived)) + theme_light() + 
  geom_bar() + 
  labs(y = "Passenger count", 
       title = "Titanic Survival Count by class")

ggplot(Titanic, aes(x = sex, fill = survived)) + theme_light() + 
  facet_grid(~pclass) + geom_bar() + 
  labs(y = "Passenger count", 
       title = "Titanic Survival Count by class and gender")

ggplot(Titanic, aes(x = "", fill = survived)) + 
  geom_bar(position = "fill") + 
  facet_grid(~pclass) + coord_polar(theta = "y")

ggplot(Titanic, aes(x = age)) + theme_bw() + 
  geom_histogram(binwidth = 5) + 
  labs(y = "passenger count", x = "Age", 
       title = "Titanic Age distribution")

gplot(Titanic, aes(x = survived, y = age)) + theme_bw() + 
  geom_boxplot() + 
  labs(y = "age", x = "survived", 
       title = "Titanic survival rate by age")

ggplot(Titanic, aes(x = age, fill = survived)) + theme_bw() + 
  facet_wrap(sex~pclass) + geom_density(alpha = 0.5) + 
  labs(y = "age", x = "survived", 
       title = "Titanic survival rate by age, class and gender")