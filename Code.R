# Load necessary library
library(readr) # If you are using CSV files
library(dplyr) # For data manipulation (optional, but useful)

# Read the dataset
carbon_segment <- read.csv("carbon-segment.csv")

# Display the first few rows of the dataset to confirm it's loaded correctly
head(carbon_segment)

# Summary of the dataset for a quick overview
summary(carbon_segment)

# View the full dataset in RStudio (opens in a new tab)
View(carbon_segment)

# Calculate mean and median for Temp and CO2
temp_mean <- mean(carbon_segment$Temp, na.rm = TRUE)
print(temp_mean)
temp_median <- median(carbon_segment$Temp, na.rm = TRUE)
print(temp_median)
co2_mean <- mean(carbon_segment$CO2, na.rm = TRUE)
co2_median <- median(carbon_segment$CO2, na.rm = TRUE)

# Display results
cat("Temperature (°C):\n")
cat("Mean:", temp_mean, "\nMedian:", temp_median, "\n\n")

cat("CO₂ Concentrations (ppm):\n")
cat("Mean:", co2_mean, "\nMedian:", co2_median, "\n")

