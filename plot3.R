# Code to generate plot3
# This code uses the common function defined in main.R
# Plot3 summarizes tha  sub metered data for the specific dates. These sub 
# metered data are for different appliances in a household.

source("main.R")

plot3 <- function() {
    
    # Get the data for range of dates.
    final_data <- main()
    
    png(file="plot3.png", width=480,height=480)
    
    #Create the plot. Add lines for all 3 sub metered data
    plot(x=final_data$DateTime, y=final_data$Sub_metering_1,
         type="l", col="black", 
         xlab="", ylab="Energy sub metering")
    lines(x=final_data$DateTime, y=final_data$Sub_metering_2, col="red")
    lines(x=final_data$DateTime, y=final_data$Sub_metering_3, col="blue")
    
    #Add legend for the 3 lines
    legend("topright", pch=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

    #Close device and Silence any warnings for null device   
    garbage <- dev.off()
}