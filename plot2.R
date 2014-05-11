data <- read.csv2("household_power_consumption.txt",stringsAsFactors = FALSE)
data1 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
data2 <- data.frame(Newtime = (1:2880)/1440 , data1)
plot(data2$Newtime,data2$Global_active_power,type = "l",ylab = "Global Active Power", xlab="",axes=FALSE)
axis(1, at=0:2, lab=c("Thu","Fri","Sat"))
axis(2)
box()
dev.copy(png, file ="plot2.png",width = 480, height = 480)
dev.off()
