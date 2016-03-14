## Loading the file on R
Load.R = "exdata_plotting1.zip"
if (!file.exists(Load.R)) {
  retval = download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                         destfile = Load.R)
}

