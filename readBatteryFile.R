batteryFile <- read.csv("C:/Users/Dharam/Downloads/microEMA/StudyFiles/Responses_uEMA/Battery/uema01_bat/battery.csv", header = TRUE, sep = ",")


batteryFile$BATTERY_LEVEL <- as.numeric(batteryFile$BATTERY_LEVEL)

batteryFile$START_TIME <- as.POSIXct(batteryFile$START_TIME, format = "%Y-%m-%d %H:%M:%OS")

library(plotly)

bateryPlot <- plot_ly(batteryFile, x = ~START_TIME, y=~BATTERY_LEVEL, color = ~BATTERY_CHARGING, type = "scatter", mode = "markers")

subplot(bateryPlot, responsePlot, responseTimePlot, shareX = TRUE, nrows = 3)
