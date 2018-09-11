#!/usr/bin/Rscript
args=commandArgs(trailingOnly = TRUE);

if("--help" %in% args) {
  cat("\t--Loc        Input file location\n")
  cat("\t--width      Input value for the width of the image\n")
  cat("\t--height     Input value for the height of the image\n")
  cat("\t--grayscale  Input either TRUE or FALSE\n")
  cat("\t--rotate     Input degree/angle of rotatio of the image\n")
  cat("\t--save       Input file name of the augmented image\n")
  q(save="no")
}
# Rscript.exe c:\Quiz\test2.R --Loc=c:\batsup.jpg --width=500 --height=500 --grayscale=TRUE --rotate=55 --save=aug_batsup.jpg
# Rscript.exe c:\Quiz\test2.R --Loc=c:\batsup.jpg --width=500 --height=500 --grayscale=FALSE --rotate=55 --save=aug_batsup2.jpg
parseArgs <- function(x) strsplit(sub("^--", "", x), "=")
argsDF <- as.data.frame(do.call("rbind", parseArgs(args)))
argsL <- as.list(as.character(argsDF$V2))
names(argsL) <- argsDF$V1


library(imager)
l <- as.character(argsL$Loc)
w <- as.numeric(argsL$width)
h <- as.numeric(argsL$height)
g <- as.logical(argsL$grayscale)
r <- as.numeric(argsL$rotate)
s <- as.character(argsL$save)
augment<-function(imagelocation,width=400,height=400,grayscale=FALSE,rotate,filename="augmented.jpg")
{
  library(imager)
  pic<-load.image(imagelocation)
  width(pic)
  height(pic)
  picresize<-resize(pic,width,height)
if(grayscale==TRUE){
   gs<-grayscale(picresize)
 }else{
   gs<-picresize
 }
  augmented<-imrotate(gs,rotate)
  plot(augmented)
  x<-"c:/Quiz/Augmented_Image/"
  y<- paste(x,filename)
  save.image(augmented,y)
}
augment(l,w,h,g,r,s)
# augment("c:/batsup.jpg",500,500,TRUE,55,"batsupnew.jpg")

# if("--help" %in% args) {
#   cat("[PLACE HELP COMMAND HERE TO GUIDE USER]\n huehuez")
#   q(save="no")
# }
# 
# 
# parseArgs <- function(x) strsplit(sub("^--", "", x), "=")
# argsDF <- as.data.frame(do.call("rbind", parseArgs(args)))
# argsL <- as.list(as.character(argsDF$V2))
# names(argsL) <- argsDF$V1
# 
# haha<-as.numeric(argsL$val1)
# hehe<-as.numeric(argsL$val2)
# sample_string<-as.character(argsL$test1)
# 
# sum<-function(x=0,y=0,z){
#   cat("\nValue of first: " ,x)
#   cat("\nValue of second: " ,y)
#   cat("\nSum: ",(x+y))
#   cat("\nSample string: ",z)
# }
# sum(haha,hehe,sample_string)