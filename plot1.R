# Coursera Data Science: Exploratory Data Analysis
# Course project 1: Plot1
 ## Plot 1
hhpc_data <- hhpc_dataload()  ## call the function hhpc_dataload to load the house hold consumption data

# create plot1.png file and map the data 
png("plot1.png", width=480, height=480)

hist(hhpc_data[, "Global_active_power"], main="Global Active Power", 
              xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()