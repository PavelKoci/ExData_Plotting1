data <- read.csv2("household_power_consumption.txt",stringsAsFactors = FALSE)
data1 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
hist(as.numeric(data1$Global_active_power),col = "red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file ="plot1.png",width = 480, height = 480)
dev.off() 
