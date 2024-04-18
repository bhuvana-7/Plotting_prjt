# Coursera Data Science: Exploratory Data Analysis
# Course project 1: Plot3
## Plot 3
hhpc_dataload()  ## call the function hhpc_dataload to load the house hold consumption data
hhpc_data$datetime <- as.POSIXct(hhpc_data$datetime)

##create plot3.png file
png("plot3.png", width=480, height=480)

#plot the data
with(hhpc_data,{plot(Sub_metering_1 ~ datetime, type = "l",
                     ylab = "Energy sub metering", xlab = "", xaxt = "n")
  lines(Sub_metering_2 ~ datetime, col = "Red")
  lines(Sub_metering_3 ~ datetime, col = "Blue")
  legend("topright", lty = 1, col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  axis.POSIXct(1, at = "2007-02-01 00:00:00", format = "%a") 
  axis.POSIXct(1, at = "2007-02-02 00:00:00", format = "%a") 
  axis.POSIXct(1, at = "2007-02-03 00:00:00", format = "%a")})
dev.off()

