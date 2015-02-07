#Plot-3
# set some preliminaries
options(width=80,digits=3)
#setwd("~/100BGU/Courses/Coursera")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Read data
dat <- read.csv("household_power_consumption.txt", header=T,nrows=710000,as.is=TRUE,sep=";")
dat <-dat[dat$Date=="1/2/2007" | dat$Date=="2/2/2007",]
dat$Global_active_power<-as.numeric(dat$Global_active_power)
dat$time<-as.numeric(as.factor(dat$Time))

#Plot1.3
par(mfrow=c(1,1),mar=c(3.2,5,2,1),cex=0.8)
with(dat, 
     plot(Sub_metering_1, type="n",xaxt="n",
          ylab="Energy sub metering (kilowatt)"),cex=0.7,xlab="")
lines(dat$Sub_metering_1,col="black",xlab="")
lines(dat$Sub_metering_2,col="red",xlab="")
lines(dat$Sub_metering_3,col="blue",xlab="")
legend("topright", lty = 1, col = c("black","red","blue"), legend = c("Sub-1", "sub-2","Sub-3"))
mtext("Thu",side=1,at=2)
mtext("Fri",side=1,at=1440)
mtext("Sat",side=1,at=2880)
dev.copy(png, file = "plot3.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!
