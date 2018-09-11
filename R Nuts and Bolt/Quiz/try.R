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

library(imager)
l=argsL$Location

augment<-function(imagelocation)
{
  pic<-load.image(imagelocation)
  plot(pic)
  cat("Good Job")
}
augment(l)