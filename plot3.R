### 3/3/2017
### Exploratory Data Analysis - Week 1 

## plot 3: 

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sM1 <- as.numeric(subData$Sub_metering_1)
sM2 <- as.numeric(subData$Sub_metering_2)
sM3 <- as.numeric(subData$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, sM1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sM2, type="l", col="red")
lines(datetime, sM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
dev.off()

# the following seems to be working fine as well

png("plot3.png", width=480, height=480)
with(data, plot(datetime,sM1, type="n", xlab = "", ylab = "Energy Sub Metering"))
with(data, points(datetime,sM1, col="black", type="l"))
with(data, points(datetime,sM2,col="red", type="l"))
with(data, points(datetime,sM3,col="blue", type="l"))
legend("topright", lty=1, col = c("black", "red", "blue"),legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))
dev.off()

