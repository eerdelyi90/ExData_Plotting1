dataFile <- "./data/household_power_consumption.txt"
powerdata <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
relevantData <- powerdata[powerdata$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(relevantData$Global_active_power)
datetime <- strptime(paste(relevantData$Date, relevantData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()