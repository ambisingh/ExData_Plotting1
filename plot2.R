## Exploratory Data Analysis - Plotting Assignment 1
## plot2.R - generates plot1.png
## First of all, make sure we have downloaded data available,
## put it in a file in the local working directory
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, 
                   header=TRUE, 
                   sep=";", 
                   stringsAsFactors=FALSE, 
                   dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)

## Creating the plot
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()