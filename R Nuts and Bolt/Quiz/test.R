#!/usr/bin/Rscript
args=commandArgs(trailingOnly = TRUE);

if("--help" %in% args) {
  cat("[PLACE HELP COMMAND HERE TO GUIDE USER]\n huehuez")
  q(save="no")
}

parseArgs <- function(x) strsplit(sub("^--", "", x), "=")
argsDF <- as.data.frame(do.call("rbind", parseArgs(args)))
argsL <- as.list(as.character(argsDF$V2))
names(argsL) <- argsDF$V1

haha<-as.numeric(argsL$val1)
hehe<-as.numeric(argsL$val2)
sample_string<-as.character(argsL$test1)

sum<-function(x=0,y=0,z){
  cat("\nValue of first: " ,x)
  cat("\nValue of second: " ,y)
  cat("\nSum: ",(x+y))
  cat("\nSample string: ",z)
}
sum(haha,hehe,sample_string)


#library(imager)
#localimg <- function(location){
#  im <-load.image(location)
#  plot(im)
#  cat("Done! :)")
#}
#localimg(haha)

#####################
#diz<- "--arg1=500x500"
#parseArgs(diz)


#install.packages("imager")

#haha<-"D://pic.jpg"
#class(haha)
#library(imager)
#localimg <- function(location){
#  im <-load.image(location)
#  plot(im)
#}
#localimg(haha)

