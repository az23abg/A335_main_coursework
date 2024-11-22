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

# Define a function to calculate mode
calculate_mode <- function(x) {
  uniq_vals <- unique(x)
  uniq_vals[which.max(tabulate(match(x, uniq_vals)))]
}

#Calculating Modes
# Calculate and display the modes for Temp and CO2
temp_mode <- calculate_mode(carbon_segment$Temp)
co2_mode <- calculate_mode(carbon_segment$CO2)

cat("Mode of Temperature (°C):", temp_mode, "\n")
cat("Mode of CO₂ Concentrations (ppm):", co2_mode, "\n")


#Inspecting the Distribution
# Save Temperature histogram as a PNG file
png("temperature_histogram.png", width = 800, height = 600) # Set file name and resolution
hist(
  carbon_segment$Temp,
  main = "Temperature Distribution",
  xlab = "Temperature (°C)",
  col = "lightblue",
  border = "black",
  breaks = 10
)
dev.off() # Close the PNG device

# Save CO2 histogram as a PNG file
png("co2_histogram.png", width = 800, height = 600) # Set file name and resolution
hist(
  carbon_segment$CO2,
  main = "CO2 Concentration Distribution",
  xlab = "CO2 Concentrations (ppm)",
  col = "lightgreen",
  border = "black",
  breaks = 10
)
dev.off() # Close the PNG device

