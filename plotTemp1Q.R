## plot the temperature from January to April

library(lubridate)
## 2014-2016
apr30 <- dmy_hm("30-04-2016 21:00",tz="Europe/Vilnius")  
with(sd2014, plot(date, temperature, xlab="", ylab = "température", ylim=c(-25,25),
                  main = "Température à Vilnius \n Janvier à Avril", 
                  pch=1, col=1))
par(new=T)
with(sd2015, plot(date, temperature, xlab="", ylab= "", ylim=c(-25,25),
                  pch=20, col="red"))
par(new=T)
with(sd2016, plot(date, temperature, xlab="", ylab="", ylim=c(-25,25), 
                  pch=17, col="deepskyblue", 
                  xlim=c(min(date), apr30),
                  xaxt="n"))
legend("bottomright", legend= c("2014  ","2015  ","2016  "), 
       pch=c(1,20,17), col=c(1,2,"deepskyblue"), cex=0.8)
