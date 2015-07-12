dataFile <- "./data/household_power_consumption.txt"
powerdata <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
relevantData <- powerdata[powerdata$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(relevantData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()