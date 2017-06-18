# Read full dataset
power_data_all <- read.table("household_power_consumption.txt", header=TRUE, stringsAsFactors=FALSE, sep=";", na.strings="?")

# Subset needed data
power_data_sub <- subset(power_data_all, Date  %in% c("1/2/2007","2/2/2007"))
rm("power_data_all")

# Convert the Date and Time variables to Date/Time classes
datetime <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")
datetime <- as.POSIXct(datetime)

# Plot 2
png("plot2.png", height=480, width=480)
plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

