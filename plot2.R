
# load data
source('prepare_data.R')

# open device
png(filename='plot2.png',width=480,height=480,units='px')

# plot data
plot(pConsData$DateTime,pConsData$GlobalActivePower,ylab='Global Active Power (kilowatts)',xlab='',type='l')

# Turn off device
x<-dev.off()