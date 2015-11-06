library(lubridate)
## 2013-2015
dec31 <- dmy_hm("31-12-2015 23:00",tz="Europe/Vilnius")  
with(sd2013, plot(date, temperature, xlab="", ylab = "température", ylim=c(-25,25),
                 main = "Température à Vilnius \n Septembre à Décembre", 
                 col="darkseagreen1", pch=8))
par(new=T)
with(sd2014, plot(date, temperature, xlab="", ylab= "", ylim=c(-25,25)))
par(new=T)
with(sd2015, plot(date, temperature, xlab="", ylab="", ylim=c(-25,25), 
                  pch=20, col="red", 
                  xlim=c(min(date), dec31)))
legend("bottomright", legend= c("2013  ","2014  ","2015  "), 
       pch=c(8,1,20), col=c("darkseagreen1",1,2), cex=0.8)


## 2014-2015  
# dec31 <- dmy_hm("31-12-2015 23:00",tz="Europe/Vilnius")  
# with(sd2014, plot(date, temperature, xlab="", ylab = "température", ylim=c(-25,25),
#                   main = "Température à Vilnius \n Septembre à Décembre"))
# par(new=T)
# with(sd2015, plot(date, temperature, xlab="", ylab= "", ylim=c(-25,25), 
#                   pch=20, col="red", 
#                   xlim=c(min(date), dec31)))
# legend("bottomright", legend= c("2014  ","2015  "),
#        pch=c(1,20), col=c(1,2), cex=0.8)
       
