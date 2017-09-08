source("readdata.R")
##read data from file
dfeb <- readData()
## open PNG graphic device
png(width=480, height=480, filename="plot1.png")
## do the plot 
with(hist (globalactivepower, col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power"),data=dfeb)
## close device
dev.off()
