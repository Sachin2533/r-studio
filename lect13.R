# Data visualization using the Titanic Data

library(tidyverse)
library(extrafont)
library(extrafontdb)

# Loading the data 
titanic_data <- read_csv("Desktop/Python  R/titanic.csv")
View(titanic_data)

head(titanic_data)

titanic_data <- titanic_data %>% 
  select(-1) %>% 
  mutate(Survived = factor(Survived, levels = c(0, 1), labels = c("Died", "Survived")),
         Sex = factor(Sex),
         Pclass = factor(Pclass))

head(titanic_data)

# Table
table(titanic_data$Survived)


# Graph
titanic_data %>% 
  ggplot(aes(x = Survived)) +
  geom_bar(width = 0.4) +
  theme_classic() +
  theme(
    plot.title = element_text(family = "Times New Roman", hjust = 0.5),
    axis.text = element_text(family = "Times New Roman",face = "bold"),
    axis.title = element_text(family = "Times New Roman", face = "bold")
  ) +
  labs(title = "Overall Survival Rates", x = NULL, y = "Passenger count")


titanic_data %>% 
  ggplot(aes(x = Sex, fill = Survived)) +
  geom_bar(width = 0.4) +
  theme_classic() +
  theme(
    plot.title = element_text(family = "Times New Roman", hjust = 0.5),
    axis.text = element_text(family = "Times New Roman",face = "bold"),
    axis.title = element_text(family = "Times New Roman", face = "bold"),
    legend.title = element_blank(),
    legend.text = element_text(family = "Times New Roman")
    
  ) +
  labs(title = "Survival rates by Sex", x = NULL, y = "Passenger count")



titanic_data %>% 
  ggplot(aes(x = Pclass, fill = Survived)) +
  geom_bar(width = 0.4) +
  theme_classic() +
  theme(
    plot.title = element_text(family = "Times New Roman", hjust = 0.5),
    axis.text = element_text(family = "Times New Roman",face = "bold"),
    axis.title = element_text(family = "Times New Roman", face = "bold"),
    legend.title = element_blank(),
    legend.text = element_text(family = "Times New Roman")
    
  ) +
  labs(title = "Survival rates by Passenger Class", x = NULL, y = "Passenger count")


# Boxplot
titanic_data %>% 
  ggplot(aes(x = Survived, y = Age)) +
  geom_boxplot() +
  theme_classic() +
  theme(
    plot.title = element_text(family = "Times New Roman", hjust = 0.5),
    axis.text = element_text(family = "Times New Roman", face = "bold"),
    axis.title = element_text(family = "Times New Roman", face = "bold"),
    legend.title = element_blank(),
    legend.text = element_text(family = "Times New Roman")
    
  ) +
  labs(title = "Survival rates by Age", x = NULL)


# Survival rates by sex and Pclass
titanic_data %>% 
  ggplot(aes(x = Sex, fill = Survived)) +
  geom_bar(width = 0.4) +
  facet_wrap(~ Pclass) +
  theme_test() +
  theme(
    plot.title = element_text(family = "Times New Roman", hjust = 0.5),
    axis.text = element_text(family = "Times New Roman", face = "bold"),
    axis.title = element_text(family = "Times New Roman", face = "bold"),
    legend.title = element_blank(),
    legend.text = element_text(family = "Times New Roman")
    
  ) +
  labs(title = "Survival rates Sex and Passenger class", x = NULL, y = "Passenger Count")

