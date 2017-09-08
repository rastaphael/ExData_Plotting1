source("readdata.R")
##read data from file
dfeb <- readData()
## open PNG graphic device
## plot 3
png(filename='plot3.png', width=480, height=480)
## do the plot
with (plot ( time, submetering1, xlab="",ylab="Energy sub metering",type="l",xaxt="n"), data=dfeb)
with (lines(time, submetering2, col="red"), data=dfeb)
with (lines(time, submetering3, col="blue"), data=dfeb)
## set axis
axis.POSIXct(1, at=seq(start, end, by="day"), format="%a")
## set legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1,1))
## close connection
dev.off()
