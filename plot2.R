library(lubridate)
subsetElecPower$date1 <-
    dmy(subsetElecPower$Date) ## 1/2/2007 -> 2007-02-01

subsetElecPower$y <-
    paste(subsetElecPower$date1, subsetElecPower$Time) ## 2007-02-01 14:15:00
subsetElecPower$z <- as.POSIXct(subsetElecPower$y)
plot(
    subsetElecPower$z,
    subsetElecPower$Global_active_power,
    xlab = "",
    ylab = "Global Active Power (kilowatts)",
    type = "l"
)
dev.copy(png, 'plot2.png')
dev.off()
