install.packages("GGally")
install.packages("NHANES")

library(tidyverse)
library(GGally)
library(readr)
library(NHANES)

# load NHANES data 
data("NHANES")
View(NHANES)



# Create a sub-table that only has BMI, AGE , GENDER AND CHOLESTROL

health_data <- NHANES %>% select(BMI ,Age , Gender, TotChol)
View(health_data)


# create a histogram of BMI using ggplot 
ggplot(health_data, aes(x=BMI)) +
  geom_histogram(binwidth=1, fill="blue", colour="green" ) +
  labs(title="Mean height in Wales is higher than European average") +
  theme_dark()

# create a correlation plot
val_cor <-health_data %>% select(BMI,Age,TotChol) %>%
 cor(use ="complete.obs")

# make the plot
# ggcorr(val_cor, label = TRUE, label_alpha = TRUE)GI

# Line graph
ggplot(health_data, aes(x=BMI)) +
  geom_(binwidth=1, fill="blue", colour="green" ) +
  labs(title="Mean height in Wales is higher than European average") +
  theme_dark()