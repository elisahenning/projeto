#household_power_consumption <- read.csv("~/R/household_power_consumption.txt", sep=";")

load("C:\\Users\\elisa\\projeto\\elisa.RData")
dados<-household_power_consumption[66637:69516,]
       remove(household_power_consumption)
head(dados)
       tail(dados)

attach(dados)
       Global_active_power<-as.numeric(Global_active_power)    


png(file = "plot_1.png", bg = "transparent")
Global_active_power<-as.numeric(Global_active_power)
hist(Global_active_power/500,xlab="Global active power (KiloWatts)",main="Global Active Power",col="red")
data=c("Thu","Fri","Sat")          
head(dados)
dev.off()

png(file = "plot_2.png", bg = "transparent")
plot(Global_active_power/500,type="l",xlab=" ",ylab="Global active power (KiloWatts)",main=" ",axes=F)
box()
axis(2)
axis(1,c(1,1440,2880),data)
dev.off()

png(file = "plot_3.png", bg = "transparent")
Sub_metering_1<-as.numeric(Sub_metering_1)
Sub_metering_2<-as.numeric(Sub_metering_2)
Sub_metering_3<-as.numeric(Sub_metering_3)
plot(Sub_metering_1,type="l",axes=F,ylab="Energy Submetering",xlab=" ")
box()
num=c(0,10,20,30)
lines(Sub_metering_2/5,col="red")
lines(Sub_metering_3,col="blue")
axis(2,c(2,12,22,32),num)
axis(1,c(1,1440,2880),data)
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_2"),lty=c(1,1,1),col=c(1,2,4))
dev.off()

png(file = "plot_4.png", bg = "transparent")
par(mfrow=c(2,2))
plot(Global_active_power/500,type="l",xlab=" ",ylab="Global active power",main=" ",axes=F)
box()
axis(2)
axis(1,c(1,1440,2880),data)
data=c("Thu","Fri","Sat")

Voltage<-as.numeric(Voltage)
plot(Voltage,type="l",xlab="datetime",ylab="Voltage",main=" ",axes=F)
box()
num=c(234,238,242,246)
axis(2,c(800,1200,1600,2000),num)
axis(1,c(1,1440,2880),data)
data=c("Thu","Fri","Sat")

Sub_metering_1<-as.numeric(Sub_metering_1)
Sub_metering_2<-as.numeric(Sub_metering_2)
Sub_metering_3<-as.numeric(Sub_metering_3)
plot(Sub_metering_1,type="l",axes=F,ylab="Energy Submetering",xlab=" ")
box()
num=c(0,10,20,30)
lines(Sub_metering_2/5,col="red")
lines(Sub_metering_3,col="blue")
axis(2,c(2,12,22,32),num)
axis(1,c(1,1440,2880),data)
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_2"),lty=c(1,1,1),col=c(1,2,4))

Global_reactive_power<-as.numeric(Global_reactive_power)
plot(Global_reactive_power,type="l",xlab="datetime",ylab="Voltage",main=" ",axes=F)
box()
num=c(0,0.1,0.2,0.3,0.4,0.5)
axis(2,c(0,46,92,138,184,230),num)
axis(1,c(1,1440,2880),data)
data=c("Thu","Fri","Sat")
dev.off()






