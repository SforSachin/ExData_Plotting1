fileName <- "household_power_consumption.txt"
powerData <- read.table(fileName, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
twoMonthData<-subset(powerData,Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(twoMonthData$Date, twoMonthData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png",width=480,height=480)
plot(datetime, as.numeric(twoMonthData$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
