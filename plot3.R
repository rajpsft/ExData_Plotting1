
# load data
source('prepare_data.R')

# open device
png(filename='plot3.png',width=480,height=480,units='px')

# plot data
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(pConsData$DateTime,pConsData$SubMetering1, type='l',col=lncol[1],ylab='Energy sub metering',xlab='')
lines(pConsData$DateTime,pConsData$SubMetering2,col=lncol[2])
lines(pConsData$DateTime,pConsData$SubMetering3,col=lncol[3])

# Turn off device
x<-dev.off()