### 3/3/2017
### Exploratory Data Analysis - Week 1 


# The dataset has 2,075,259 rows and 9 columns,
# calculate how much memory the dataset will require in memory

n_r <- 2075259
n_c <- 9
round(n_r*n_c*8/2^{20},2)   # 142.5 MB
round(n_r*n_c*8/2^{20}/1024, 2)   # 0.41 GB


## plot 1: ousehold energy usage varies over a 2-day period in February, 2007

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frenquency")
dev.off()
