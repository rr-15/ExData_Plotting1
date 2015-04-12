# Code to generate plot1
# This code uses the common function defined in main.R
# Plot1 summarizes tha data for the Global Active Power against different 
# frequencies.

source("main.R")


plot1 <- function() {
    
    # Get the data for range of dates.
    final_data <- main()
    
    png(file="plot1.png", width=480,height=480)
    
    #Create the histogram
    hist(final_data$Global_active_power, main="Global Active Power", col="red", 
         xlab="Global Active Power (kilowatts)", ylab="Frequency")
    
    #Close device and Silence any warnings for null device
    garbage <- dev.off()
}    