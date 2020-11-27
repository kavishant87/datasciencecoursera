## Global Active Power plot using Base plotting system .
## First read the csv file from local folder.
baseplot1 <- read.csv("C:/Users/kavis/Documents/Kavi files/Git-R Files/datasciencecoursera/household_power_consumption.txt",
                      header=T, sep=';',na.strings="?",check.names=F,
                      nrows=2075259)

## Subset the data from household_power_consumption.txt
base1<- subset(baseplot1,Date %in% c("1/2/2007","2/2/2007"))

##convert the Date and Time variables to Date format using as.date function.
base1$Date <- as.Date( base1$Date, format= "%d%m%y")

##Base Plot using histogram
hist(base1$Global_active_power, main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", 
     ylab="Frequency",
     col="Red")

##save as png file format.
png("plot1.png",width =480,height =480)
dev.off()

