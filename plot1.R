# Read full dataset
power_cons_data_all <- read.table("household_power_consumption.txt", header=TRUE, stringsAsFactors=FALSE, sep=";", na.strings="?")

# Subset needed data
power_cons_data_sub <- subset(power_cons_data_all, Date  %in% c("1/2/2007","2/2/2007"))
rm("power_cons_data_all")

# Plot 1
png("plot1.png", height=480, width=480)
hist(Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()