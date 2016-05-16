
# set working directory 
setwd('/Users/Raj/Coursera/4-ExploratoryAnalysis/Week1Assignment')


# make sure the plots folder exists
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data
source('/Users/Raj/Coursera/4-ExploratoryAnalysis/Week1Assignment/Prepare_data.R')

# open device
png(filename='plots/plot2.png',width=480,height=480,units='px')

# plot data
plot(pConsData$DateTime,pConsData$GlobalActivePower,ylab='Global Active Power (kilowatts)',xlab='',type='l')

# Turn off device
x<-dev.off()