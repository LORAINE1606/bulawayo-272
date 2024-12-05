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
  geom_histogram(binwidth=1 )