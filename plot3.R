# Read full dataset
power_data_all <- read.table("household_power_consumption.txt", header=TRUE, stringsAsFactors=FALSE, sep=";", na.strings="?")

# Subset needed data
power_data_sub <- subset(power_data_all, Date  %in% c("1/2/2007","2/2/2007"))
rm("power_data_all")

# Convert the Date and Time variables to Date/Time classes
datetime <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")
datetime <- as.POSIXct(datetime)

# Plot 3
png("plot3.png", height=480, width=480)
plot(datetime, Sub_metering_1, type="l", ylab="Energy Sub metering", xlab="")
lines(datetime, Sub_metering_2, type="l", col="red")
lines(datetime, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2, col=c("black", "red", "blue"))
dev.off()

