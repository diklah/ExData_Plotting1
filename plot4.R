#Plot-4
# set some preliminaries
options(width=80,digits=3)
#setwd("~/100BGU/Courses/Coursera")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Read data
dat <- read.csv("household_power_consumption.txt", header=T,nrows=710000,as.is=TRUE,sep=";")
dat <-dat[dat$Date=="1/2/2007" | dat$Date=="2/2/2007",]
dat$Global_active_power<-as.numeric(dat$Global_active_power)
dat$time<-as.numeric(as.factor(dat$Time))

#Plot1.4
par(mfrow=c(2,2),mar=c(1,5,1,1),cex=0.7)
with(dat, 
     plot(Global_active_power , 
          type="l",xaxt="n",
          ylab="Global Active Power (kilowatt)"),cex=0.8,xlab="")
mtext("Thu",side=1,at=2,cex=0.7)
mtext("Fri",side=1,at=1440,cex=0.7)
mtext("Sat",side=1,at=2880,cex=0.7)
#--
with(dat, 
     plot(Voltage , 
          type="l",xaxt="n",
          ylab="Voltage"),cex=0.8,xlab="")
mtext("Thu",side=1,at=2,cex=0.7)
mtext("Fri",side=1,at=1440,cex=0.7)
mtext("Sat",side=1,at=2880,cex=0.7)
#--
with(dat, 
     plot(Sub_metering_1, type="n",xaxt="n",
          ylab="Energy sub metering (kilowatt)"),cex=0.8,xlab="")
lines(dat$Sub_metering_1,col="black",xlab="")
lines(dat$Sub_metering_2,col="red",xlab="")
lines(dat$Sub_metering_3,col="blue",xlab="")
legend("topright", lty = 1, col = c("black","red","blue"), legend = c("Sub-1", "sub-2","Sub-3"))
mtext("Thu",side=1,at=2,cex=0.7)
mtext("Fri",side=1,at=1440,cex=0.7)
mtext("Sat",side=1,at=2880,cex=0.7)
#--
with(dat, 
     plot(Global_active_power, 
          type="l",xaxt="n",
          ylab="Global Active Power"),cex=0.8,xlab="")
mtext("Thu",side=1,at=2,cex=0.7)
mtext("Fri",side=1,at=1440,cex=0.7)
mtext("Sat",side=1,at=2880,cex=0.7)

dev.copy(png, file = "plot4.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!
