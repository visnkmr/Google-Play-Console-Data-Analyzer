TestData <- read.csv(file="/home/nkmr/Downloads/rprojs/gplaydata/installs_io.github.visnkmr.mynetspeedtest_202001_country.csv", header=TRUE, sep=",",skipNul=TRUE, fileEncoding="latin1")
SaveData<-TestData
pdaypcountry<-aggregate(TestData$Daily.Device.Installs, by = list(TestData$Country,TestData$ÿþDate), FUN=sum)
plot(tapply(TestData$Daily.Device.Installs, TestData$ÿþDate, FUN=sum),type = "o", col = "red", xlab = "Date", ylab = "Downloads", main = "Total Downloads per day")

TestDataUS<-TestData[TestData$Country=="US",]
pcountry<-aggregate(TestData$Daily.Device.Installs, by = list(TestData$Country), FUN=sum)
plot(tapply(TestDataUS$Daily.Device.Installs, TestDataUS$ÿþDate, FUN=sum),type = "o", col = "red", xlab = "Date", ylab = "Downloads", main = "Total Downloads per day")

write.csv(Datacount,'test.csv')
