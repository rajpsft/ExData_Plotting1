# set working directory (change this to fit your needs)
setwd('/Users/Raj/Coursera/4-ExploratoryAnalysis/Week1Assignment')

# make sure the plots folder exists
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data
source('/Users/Raj/Coursera/4-ExploratoryAnalysis/Week1Assignment/Prepare_data.R')

# open device
png(filename='plots/plot4.png',width=480,height=480,units='px')

# make 4 plots
par(mfrow=c(2,2))

#top left (1,1)
# plot data on top left (1,1)
plot(pConsData$DateTime,pConsData$GlobalActivePower,ylab='Global Active Power',xlab='',type='l')

#top right (1,2)
plot(pConsData$DateTime,pConsData$Voltage,xlab='datetime',ylab='Voltage',type='l')


#bottom left (2,1)
columnlines <- c('black','red','blue')
labels <- c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(pConsData$DateTime,pConsData$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(pConsData$DateTime,pConsData$SubMetering2,col=lncol[2])
lines(pConsData$DateTime,pConsData$SubMetering3,col=lncol[3])

#bottom right (2,2)
plot(pConsData$DateTime,pConsData$GlobalReactivePower,xlab='datetime',ylab='Global_reactive_power',type='l')


# Turn off device
x <- dev.off()