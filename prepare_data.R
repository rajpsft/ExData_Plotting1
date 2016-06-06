

# required packages
library(data.table)

library(lubridate)



# check to see if the existing tidy data set exists; if not, make it...
if (!file.exists('pConsData.txt')) {
  
   
  # read the raw table and limit to 2 days
  variable.class<-c(rep('character',2),rep('numeric',7))
  pConsData <- read.table('household_power_consumption.txt',header=TRUE,
                                  sep=';',na.strings='?',colClasses=variable.class)
  pConsData <-  pConsData[ pConsData$Date=='1/2/2007' |  pConsData$Date=='2/2/2007',]
  
  # clean up the variable names and convert dte/time fields
  cols <- c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
            'SubMetering1','SubMetering2','SubMetering3')
  colnames( pConsData) <- cols
  pConsData$DateTime <- dmy( pConsData$Date)+hms(pConsData$Time)
  pConsData <-  pConsData[,c(10,3:9)]
  
  # write a clean data set to the directory
  write.table( pConsData,file='pConsData.txt',sep='|',row.names=FALSE)
} else {
  
  pConsData <- read.table('pConsData.txt',header=TRUE,sep='|')
  pConsData$DateTime <- as.POSIXlt( pConsData$DateTime)
  
}


