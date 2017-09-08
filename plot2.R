source("readdata.R")
##read data from file
dfeb <- readData()
## plot 2
png(filename='plot2.png', width=480, height=480)
## set language to english
Sys.setlocale("LC_TIME", "C")
## start and end of the plot
start = as.POSIXct(strftime("2007-02-01 00:00:00"))
end = as.POSIXct(strftime("2007-02-03 00:00:00"))
## initiate plot
with (plot ( time, globalactivepower, xlab="",ylab="Global Active Power (kilowatts)",type="l",xaxt="n"), data=dfeb)
## set axis
axis.POSIXct(1, at=seq(start, end, by="day"), format="%a")
## close connection
dev.off()
