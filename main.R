# Contains the common function to read  the data, subset to specific range 
# and create a DateTime column.

main <- function() {
    
    library(sqldf)
    file <- file("household_power_consumption.txt")
    df <- sqldf("select * from file" ,stringsAsFactors = FALSE,
                file.format = list(header = TRUE, sep = ";"))
    
    #Convert entries with ? as NA
    df[ df == "?" ] = NA
    
    # Close the file conection
    close(file)
    
    # Create a DateTime column from Date and Time
    x <- paste(df$Date, df$Time)
    y <- strptime(x, "%d/%m/%Y %H:%M:%S")
    final_df <- df
    
    final_df$DateTime <- y
    
    # Subset data for a the specified range.
    final_data <- final_df[as.Date(final_df$DateTime) >= as.Date("2007-02-01") & as.Date(final_df$DateTime) <= as.Date("2007-02-02"), ]
    
}    
