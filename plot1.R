fileName <- "household_power_consumption.txt"
powerData <- read.table(fileName, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
twoMonthData<-subset(powerData,Date %in% c("1/2/2007","2/2/2007"))
png("plot1.png",width=480,height=480)
hist(as.numeric(twoMonthData$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
