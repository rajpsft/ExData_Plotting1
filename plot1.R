# set working directory
setwd('/Users/Raj/Coursera/4-ExploratoryAnalysis/Week1Assignment')

# make sure the plots folder exists
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data
source('/Users/Raj/Coursera/4-ExploratoryAnalysis/Week1Assignment/Prepare_data.R')


# open device
png(filename='plots/plot1.png',width=480,height=480,units='px')

# plot data
hist(pConsData$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()