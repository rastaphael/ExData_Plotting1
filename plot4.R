source("readdata.R")
##read data from file
dfeb <- readData()
## open PNG graphic device

##plot 4
png(filename='plot4.png', width=480, height=480)
par(mfrow=c(2,2))
## set language to english
Sys.setlocale("LC_TIME", "C")
## start and end of the plot
start = as.POSIXct(strftime("2007-02-01 00:00:00"))
end = as.POSIXct(strftime("2007-02-03 00:00:00"))
## initiate first plot
with (plot ( time, globalactivepower, xlab="",ylab="Global Active Power",type="l",xaxt="n"), data=dfeb)
## set axis
axis.POSIXct(1, at=seq(start, end, by="day"), format="%a")

## second plot
with (plot ( time, voltage, xlab="datetime",ylab="Voltage",type="l",xaxt="n"), data=dfeb)
## set axis
axis.POSIXct(1, at=seq(start, end, by="day"), format="%a")

## third plot
with (plot ( time, submetering1, xlab="",ylab="Energy sub metering",type="l",xaxt="n"), data=dfeb)
with (lines(time, submetering2, col="red"), data=dfeb)
with (lines(time, submetering3, col="blue"), data=dfeb)
## set axis
axis.POSIXct(1, at=seq(start, end, by="day"), format="%a")
legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","red","blue"),
       lty=c(1,1,1), 
       bty="n") ## no legend box

## fourth plot
with (plot ( time, globalreactivepower, xlab="datetime",ylab="Global_reactive_power",type="l",xaxt="n"), data=dfeb)
## set axis
axis.POSIXct(1, at=seq(start, end, by="day"), format="%a")

## close connection
dev.off()
