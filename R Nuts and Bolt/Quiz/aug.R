#!/usr/bin/Rscript
library(magrittr)
library(imager)
library(jpeg)
library(png)

args= commandArgs(trailingOnly=TRUE);
#Rscript.exe C:\Program Files\R\R-3.5.1\bin\Quiz\augmentation(single image).r
##args[1] = C:\Program Files\R\R-3.5.1\bin\Quiz\Quiz\BvsS.png
##args[2] = 500
##args[3] = 500
##args[4] = TRUE or FALSE
##args[5] = 45 degree of rotation
pic<-load.image(args[1])
picresize<-resize(pic,args[2],args[3])
grayscale=args[4]
{
  if(grayscale==TRUE)
  {
  gs<-grayscale(picresize)
  }
  else
  {
  gs<-picresize
  }
}
augmented<-imrotate(gs,args[5])
png(filename="C:\Quiz\Augmented_Image\augmented.jpg")


# augment<-function(imagelocation,width,height,grayscale=FALSE,rotate)
# {
#   pic<-load.image(imagelocation)
#   width(pic)
#   height(pic)
#   picresize<-resize(pic,width,height)
 # if(grayscale==TRUE)
 #  {
 #    gs<-grayscale(picresize)
 #  }
 #  else
 #  {
 #    gs<-picresize
 #  }
#   augmented<-imrotate(gs,rotate)
#   plot(augmented)
#   width(augmented)
#   height(augmented)
# }

# augment<-function(args[1],args[2],args[3],grayscale=args[4],args[5])
# {
#   pic<-load.image(args[1])
#   width(pic)
#   height(pic)
#   picresize<-resize(pic,args[2],args[3])
#   if(grayscale==TRUE)
#   {
#     gs<-grayscale(picresize)
#   }
#   else
#   {
#     gs<-picresize
#   }
#   augmented<-imrotate(gs,args[5])
#   plot(augmented)
#   # x<-"C:/Users/user/Desktop/git/Midterm_Repository/R Nuts and Bolt/Quiz/Augmented_Image/augmented"
#   # save.image(augmented,x)
# }
