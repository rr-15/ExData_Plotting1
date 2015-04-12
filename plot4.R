# Code to generate plot4
# This code uses the common function defined in main.R
# Plot4 shows multiple base plots in a single image. 

source("main.R")

plot4 <- function(final_data) {
    
    # Get the data for range of dates.
    final_data <- main()
    
    png(file="plot4.png", width=480,height=480)
    
    #Create the plots
    par(mfrow=c(2,2))
    
    with(final_data, {
        
        #Plot1
        plot(DateTime, Global_active_power,type="l", col="black", 
            xlab="", ylab="Global Active Power", lwd=1.5)
        #Plot2
        plot(DateTime, Voltage, type="l", col="black", 
             xlab="datetime", ylab="Voltage", lwd=1.5)
        #Plot3
        plot(DateTime, Sub_metering_1,
             type="l", col="black", 
             xlab="", ylab="Energy sub metering", lwd=1.5)
        lines(DateTime, Sub_metering_2, col="red")
        lines(DateTime, Sub_metering_3, col="blue")
        legend("topright", pch=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        #Plot4
        plot(DateTime, Global_reactive_power, type="l", col="black", 
             xlab="datetime", ylab="Global_reactive_power")
        
        #Close device and Silence any warnings for null device
        garbage <- dev.off()
    
    })
    
}