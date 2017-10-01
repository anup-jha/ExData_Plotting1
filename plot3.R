plot(
    subsetElecPower$z,
    subsetElecPower$Sub_metering_1,
    xlab = "",
    ylab = "Energy sub metering",
    type = "l"
)
lines(subsetElecPower$z, subsetElecPower$Sub_metering_2, col = "red")
lines(subsetElecPower$z, subsetElecPower$Sub_metering_3, col = "blue")

legend(
    "topright",
    col = c("black", "red", "blue"),
    c("Sub_metering_1  ", "Sub_metering_2  ", "Sub_metering_3  "),
    cex = 0.75,lty=c(1,1), lwd=c(1,1), bty ="n" ,cex = .5)

dev.copy(png, 'plot3.png')
dev.off()
