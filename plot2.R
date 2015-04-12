# Code to generate plot2
# This code uses the common function defined in main.R
# Plot2 shows the variations in usage of Global Active Power over a period


source("main.R")

plot2 <- function() {
    
    # Get the data for range of dates.
    final_data <- main()
    
    png(file="plot2.png", width=480,height=480)
    
    #Create the plot
    plot(x=final_data$DateTime, y=final_data$Global_active_power, type="l", 
         xlab="", ylab="Global Active Power (kilowatts)", col="black", lwd=1)
    
    #Close device and Silence any warnings for null device
    garbage <- dev.off()
}