# Coursera Data Science: Exploratory Data Analysis
# Course project 1: Plot2
## Plot 2
hhpc_dataload()  ## call the function hhpc_dataload to load the house hold consumption data
hhpc_data$datetime <- as.POSIXct(hhpc_data$datetime)

##create plot2.png file
png("plot2.png", width=480, height=480)

#plot the data
with(hhpc_data,{plot(Global_active_power ~ datetime, type = "l",
                ylab = "Global Active Power (kilowatts)", xlab = "", xaxt = "n")
  axis.POSIXct(1, at = "2007-02-01 00:00:00", format = "%a") 
  axis.POSIXct(1, at = "2007-02-02 00:00:00", format = "%a") 
  axis.POSIXct(1, at = "2007-02-03 00:00:00", format = "%a")})
dev.off()

