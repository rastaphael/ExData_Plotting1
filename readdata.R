readData <- function() {
    ## read data from csv
    ## separators are ";"
    ## NAs are "?"
    d <-read.csv("data.txt", sep=";",na.strings = "?", )
    ## convert data/time format 
    d$Date <- as.Date(d$Date, "%d/%m/%Y")
    d$Time<-as.POSIXct(strptime(paste(d$Date, ' ', d$Time), '%Y-%m-%d %H:%M:%S'))
    ## convert names to lower case
    names(d) <- tolower(names(d))
    ## remove underscores
    names(d) <- gsub("_","",names(d))
    ## subset 1st and 2nd of february 2007
    ## to save memory
    dfeb<-(subset(d, d$date=="2007-02-01" | d$date=="2007-02-02"  ))
    dfeb
}
