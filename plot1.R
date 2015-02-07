#Plot-1
# set some preliminaries
options(width=80,digits=3)
#setwd("~/100BGU/Courses/Coursera")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Read data
dat <- read.csv("household_power_consumption.txt", header=T,nrows=710000,as.is=TRUE,sep=";")
dat <-dat[dat$Date=="1/2/2007" | dat$Date=="2/2/2007",]
dat$Global_active_power<-as.numeric(dat$Global_active_power)
dat$time<-as.numeric(as.factor(dat$Time)
               
#Plot1.1
par(mfrow=c(1,1),mar=c(5,5,5,1),cex=0.8)
hist(dat$Global_active_power, col = "red", xlab="Global Active Power (kilowatt)",
     main="Global Active Power")
dev.copy(png, file = "plo1.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!
                     
                     
                     
                     
                     
                     