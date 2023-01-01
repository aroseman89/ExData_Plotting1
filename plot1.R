#Import data
data <- read.table('/Users/AroRoseman/OneDrive - Morris Animal Foundation/household_power_consumption.txt', header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Name data
names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#Subset data
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

#Plot data
hist(as.numeric(as.character(subdata$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

#Add title
title(main="Global Active Power")

#Export to png
png("plot1.png", width=480,height=480)