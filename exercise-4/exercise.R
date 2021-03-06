# Exercise-4
install.packages('ggplot2')

# Set up: load `dplyr` and `ggplot2`
library(dplyr)
library(ggplot2)

# Read, and then `source` the data-prep.R file. The `all.data` variable is now available
source('data-prep.R')

# Create a column of percentage of registered voters who voted
all.data <- mutate(all.data, percent.voted = all.data$total.voted / all.data$registered.voters)

# Start by making a new `ggplot` with `all.data` as the data (no geometry yet)
# What do you see?
ggplot(data = all.data)

# Draw a scatter plot (with point geometry) with for the `all.data` set, 
# with the `total.population` mapped to the x-position and `registerd.voters` mapped to the y-position.
ggplot(data = all.data) +
  geom_point(mapping = aes(x = total.population, y = registered.voters, color = county))
  

# Draw a scatter plot (with point geometry) with for the `all.data` set, 
# with the `total.population` mapped to the x-position and `pct.voted` mapped to the y-position.
# Color the points as "blue"
ggplot(data = all.data) +
  geom_point(mapping = aes(x = total.population, y = percent.voted), color = "blue")

# Create the same scatter plot as above, but put the county names where the dots are
ggplot(data = all.data) +
  geom_text(mapping = aes(x = total.population, y = percent.voted, label = county), color = "purple")

# Draw a scatter plot comparing the female percentage to the percent voted
# Size the points by the population of the county
ggplot(data = all.data) +
  geom_point(mapping = aes(x = female.percentage, y = percent.voted, size = total.population), color = "red")

# Draw a line graph comparing the total population to the percent male
# Make it a green line
ggplot(data = all.data) +
  geom_point(mapping = aes(x = female.percentage, y = percent.voted, size = total.population), color = "red")
