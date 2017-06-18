# Read full dataset
power_data_all <- read.table("household_power_consumption.txt", header=TRUE, stringsAsFactors=FALSE, sep=";", na.strings="?")

# Subset needed data
power_data_sub <- subset(power_data_all, Date  %in% c("1/2/2007","2/2/2007"))
rm("power_data_all")

# Convert the Date and Time variables to Date/Time classes
power_data_sub$datetime <- strptime(paste(power_data_sub$Date, power_data_sub$Time), "%d/%m/%Y %H:%M:%S")
power_data_sub$datetime <- as.POSIXct(power_data_sub$datetime)

# Plot 2
png("plot2.png", height=480, width=480)
plot(power_data_sub$datetime, power_data_sub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

