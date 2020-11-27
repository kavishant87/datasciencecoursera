## Global Active Power vs time plot using Base plotting system .
## First read the csv file from local folder.
baseplot1 <- read.csv("C:/Users/kavis/Documents/Kavi files/Git-R Files/datasciencecoursera/household_power_consumption.txt",
                      header=T, sep=';',na.strings="?",check.names=F,
                      stringsAsFactors=F,comment.char="", dec=".",quote='\"',nrows=2075259)

## Subset the data from household_power_consumption.txt
base1<- subset(baseplot1,Date %in% c("1/2/2007","2/2/2007"))

##convert the Date and Time variables into 
##time format using strptime function.
base1$Time <- strptime(paste(base1$Date,base1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


##Base Plot 3
with(base1, {
  plot(base1$Time,as.numeric(base1$Sub_metering_1), type="l",
       ylab="Energy sub metering", xlab="")
  lines(base1$Time,as.numeric(base1$Sub_metering_2),col='Red')
  lines(base1$Time,as.numeric(base1$Sub_metering_3),col='Blue')
})

##use of Legend function 
legend("topright", col=c("black","red","blue"),
       lty=1,lwd=2,legend=c("Sub_metering_1",
                           "Sub_metering_2",
                           "Sub_metering_3"))


##save as png file format.
png("plot3.png", width=480, height=480)
dev.off()
