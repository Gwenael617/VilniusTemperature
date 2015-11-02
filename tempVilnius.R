setwd('E:/Rwd/VilniusTemperature')

cat("\n list of files in data folder : \n \n")
print(list.files("./data")) ## check the file numbers to pick up the correct one

library(lubridate)

tempVilnius <- function(fileNumber){
  df <- read.csv2(paste0("./data/", list.files("./data")[fileNumber]), 
                  skip=6, header = TRUE, stringsAsFactors = FALSE)
  df <- df[,1:2]        ## keep only first two columns one with temperature 
                        ## + one to keep it as a data.frame
  df$date <- rownames(df)
  df$temperature <- as.numeric(df[,1])
  rownames(df) <- NULL
  df <- df[,c(3,4)]   ## keep only column date and temperature
  
  # olson_time_zones()[361]    ## [1] "Europe/Vilnius" (lubridate package)
  df[,1] <- dmy_hm(df[,1], tz="Europe/Vilnius") ## lubridate package
  return(df)         ## to make it appear in the environment
}

cat("\n to compute use the function : tempVilnius(fileNumber)")

## example
## janvier2015 <- tempVilnius(5)

# with(oct14, plot(date, temperature, ylim=c(-5, 25), 
#                  main ="Température en octobre \n comparatif 2014-2015"))
# # abline(lm(temperature~date, oct14),col=1)
# par(new=T)
# with(oct15, plot(date, temperature, xlim=c(min(date), oct31), ylim=c(-5, 25),
#                  xlab="", ylab="", col="red", pch=20))
# legend("topright", legend= c(2014,2015), pch=c(1,20), col=c(1,2), cex=0.8)
# # abline(lm(temperature~date, oct15),col=2)
