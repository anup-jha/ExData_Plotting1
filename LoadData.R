ElectricPower <-
    read.table(
        "/Users/anupjha/data/household_power_consumption.txt",+header = TRUE,
        sep = ";"
    )

nrow(ElectricPower)
ncol(ElectricPower)

ElectricPower <-
    read.table(
        "/Users/anupjha/data/household_power_consumption.txt",
        header = TRUE,
        sep = ";",
        na.strings = "?",
        stringsAsFactors = FALSE
    )

ElectricPower$DateTime <-
    paste(ElectricPower$Date, ElectricPower$Time)
ElectricPower$DateTime <-
    as.Date(ElectricPower$DateTime, format = "%d/%m/%Y %H:%M:%S")

library(dplyr)
subsetElecPower <-
    filter(
        ElectricPower,
        DateTime >= as.Date("2007-02-01 00:00:00"),
        DateTime < as.Date("2007-02-03 00:00:00")
    )
