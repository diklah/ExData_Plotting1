#Plot-2
# set some preliminaries
options(width=80,digits=3)
#setwd("~/100BGU/Courses/Coursera")
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Read data
dat <- read.csv("household_power_consumption.txt", header=T,nrows=710000,as.is=TRUE,sep=";")
dat <-dat[dat$Date=="1/2/2007" | dat$Date=="2/2/2007",]
dat$Global_active_power<-as.numeric(dat$Global_active_power)
dat$time<-as.numeric(as.factor(dat$Time))
                     
 #Plot1.2
par(mfrow=c(1,1),mar=c(3,5,5,1),cex=0.7) 
with(dat, 
     plot(Global_active_power , 
          type="l",xaxt="n",
          ylab="Global Active Power (kilowatt)"),cex=0.7,xlab="")
mtext("Thu",side=1,at=2)
mtext("Fri",side=1,at=1440)
mtext("Sat",side=1,at=2880)
dev.copy(png, file = "plot2.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!                         
                     