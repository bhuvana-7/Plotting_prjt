# Coursera Data Science: Exploratory Data Analysis
# Course project 1: Plot4
## Plot 4
hhpc_dataload()  ## call the function hhpc_dataload to load the house hold consumption data
hhpc_data$datetime <- as.POSIXct(hhpc_data$datetime)

##create plot4.png file
png("plot4.png", width=480, height=480)

par(mfrow = c(2, 2))

#plot1
with(hhpc_data, {plot(Global_active_power ~ datetime,, type = "l",
     xlab="", ylab="Global Active Power", xaxt = "n")
axis.POSIXct(1, at = "2007-02-01 00:00:00", format = "%a") 
axis.POSIXct(1, at = "2007-02-02 00:00:00", format = "%a") 
axis.POSIXct(1, at = "2007-02-03 00:00:00", format = "%a")})

#plot2
#plot the data
with(hhpc_data,{plot(Voltage ~ datetime, type = "l",
                     ylab = "Voltage", xlab = "datetime", xaxt = "n")
  axis.POSIXct(1, at = "2007-02-01 00:00:00", format = "%a") 
  axis.POSIXct(1, at = "2007-02-02 00:00:00", format = "%a") 
  axis.POSIXct(1, at = "2007-02-03 00:00:00", format = "%a")})

#plot3
with(hhpc_data,{plot(Sub_metering_1 ~ datetime, type = "l",
                     ylab = "Energy sub metering", xlab = "", xaxt = "n")
  lines(Sub_metering_2 ~ datetime, col = "Red")
  lines(Sub_metering_3 ~ datetime, col = "Blue")
  legend("topright", lty = 1, col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
  axis.POSIXct(1, at = "2007-02-01 00:00:00", format = "%a") 
  axis.POSIXct(1, at = "2007-02-02 00:00:00", format = "%a") 
  axis.POSIXct(1, at = "2007-02-03 00:00:00", format = "%a")})

#plot4 
with(hhpc_data, {plot(Global_reactive_power ~ datetime, type = "l",
                     ylab = "Global_reactive_power", xlab = "datetime", xaxt = "n")
     axis.POSIXct(1, at = "2007-02-01 00:00:00", format = "%a") 
     axis.POSIXct(1, at = "2007-02-02 00:00:00", format = "%a") 
     axis.POSIXct(1, at = "2007-02-03 00:00:00", format = "%a")})

dev.off()

