## Loading the file on R

Load.R = "exdata_plotting1.zip"
if (!file.exists(Load.R)) {
  retval = download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
  destfile = Load.R)
}

## After making all the essential changes as stated in the file

df.power = read.csv(unz(Load.R, "household_power_consumption.txt"), header=T,
 sep=";", stringsAsFactors=F, na.strings="?",
 colClasses=c("character", "character", "numeric",
 "numeric", "numeric", "numeric",
 "numeric", "numeric", "numeric"))
 
 ## using data from the dates 2007-02-01 and 2007-02-02
 
df.power$Date = as.Date(df.power$Date, format="%d/%m/%Y")
startDate = as.Date("01/02/2007", format="%d/%m/%Y")
endDate = as.Date("02/02/2007", format="%d/%m/%Y")
df.power = df.power[df.power$Date >= startDate & df.power$Date <= endDate, ]

