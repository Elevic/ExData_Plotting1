#Plot 1
setwd("/Users/fabiola/Desktop/datasciencecoursera/Course4-Data analysis/")
mydf<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = TRUE)
tabla_fil <-filter(tabla1, Date =="1/2/2007" | Date=="2/2/2007")
#tabla_fil$datetime <- dmy_hms(apply(tabla_fil[,1:2], 1, paste, collapse=" "))
hist(as.numeric(as.character(tabla_fil$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png,file = "plot1", width = 480, height = 480)
dev.off()