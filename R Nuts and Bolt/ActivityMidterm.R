x <- 64000
y <- 64000
z=x+y
z
c <- c(0.5,"a",TRUE,5)
class(a)
b <- 1:10
as.numeric(b)
as.numeric(c)
class(c)
as.complex(b)
as.complex(c)
as.numeric(hi)
as.complex(hi)
as.integer(waddup)
as.logical(waddup)

x <- matrix(nrow=5, ncol=5)
x
dim(x)
attributes(x)
x <- matrix(1:25, nrow = 5, ncol = 5)
x
x <- 1:25
x
dim(x) < c(5,5)
x
m <- 1:10
dim(m) <- c(2,5)
m
x <- factor(c("asdfghkl","asdfghkl","asdfghkm","asdfghkl"))
x
table(x)
unclass(x)
y <- factor(c("zup","yo","zup","yo"))
y
table(y)
unclass(y)


z <-- 12

x<- c(1,2,NA,10,3)
is.na(x)
is.nan(x)
y<-c(1,2,NaN,NA,4)
is.na(y)
is.nan(y)

z<- z.frame(foo=1:4, bar = c(T,T,F,F))
z
nrow(z)
ncol(z)
z<- 1:3
names(z)
names(z)<- c("foo","bar","norf")
z
names(z)

y<-z.frame(a=1,b="a")
dput(y)
dput(y, file ="y.R")
y <- 100
new.y <- dget("y.R")
new.y

x<-"foo"
y<-z.frame(a=1,b="a")
dump(c("x","y"),file ="z.R")
rm(x,y)
source("z.R")
y
x

str(file)
z<-read.csv("z.R")
con<- gzfile("words.gz")
x<--readLines(con,10)
x

con<- url("http://www.jhsph.edu","r")
x<-readLines(con)

x<- c("a","b","c","c","d","a")
x[1]
x[2]
x[1:4]
x[x>"a"]
u<-x>"a"
u
x[u]

x<-list(foo = 1:4, bar=0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]

x<- list(foo = 1:4, bar=0.6, baz="hello")
x[c(1,3)]
name<-"foo"
x[[name]]
x$foo
x<-list(a = list(10,12,14), b=c(3.14,2.81))
x[[c(1,3)]]
x[[c(2,1)]]
x<- matrix(1:6,2,3)
x[1,2]
x[2,1]
x[1,]
x[,2]
x[1,2]
x[1,2,drop= FALSE]
x[1,,drop = FALSE]

x<- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact = FALSE]]
x<- c(1,2,NA,4,NA,5)
bad<- is.na(x)
x[!bad]
x<- c(1,2,NA,4,NA,5)
y<- c("a","b",NA,"d",NA,"f")  
good<-complete.cases(x,y)
good
x[good]
y[good]
airquality[1:6,]
airquality[good,][1:6,]
x<- 1:4; y<- 6:9
x+y
x>2
x>=2
y==8
x*y
x/y
x<- matrix(1:4,2,2); y<- matrix(rep(10,4),2,2)
x*y
x/y
x%*%y

z <-12
class(z)
z<- c(12,FALSE)
class(z)
m <- c(10,13, 15, 33)
n <- c(13, 22, 88, 110)
rbind(m, n)
z <- list(22, "a", "c", FALSE)
z[[2]]
z <- 10:40
y <- 3
z + y
x <- c(117, 114, 14, 15, 113, 112, 110)
x[x >=100]<- 14
x

names(hw1_z)
airquality[1:12,]
nrow(hw1_z)
ncol(hw1_z)
airquality[145:153,]
hw1_z[145:153]
tail(hw1_z,8)
hw1_z[1:12,]
nrow(hw1_z)
hw1_z[112,3]
hw1_z[42,4]
hw1_z[82,2]
sum(is.na(hw1_z))
sum(is.na(hw1_z[1:153,1]))
sum(is.na(hw1_z[1:153,2]))
sum(is.na(hw1_z[1:153,3]))
sum(is.na(hw1_z[1:153,4]))

apply(subset(hw1_z, !is.na(Ozone), select=Ozone),2,mean)
apply(subset(hw1_z, !is.na(Wind), select=Wind),2,mean)
apply(subset(hw1_z, !is.na(Temp), select=Temp),2,mean)
sub = subset(hw1_z,Ozone > 26 & temp > 80, select = Solar.R)
apply


Ocon<-c(z[,1])
Tcon<-c(z[,4])
Wcon<-c(z[,3])
G<- complete.cases(Ocon,Tcon,Wcon)
O<-c(Ocon[G])
T<-c(Tcon[G])
W<-c(Wcon[G])
x<- z.frame(Ozone=c(O),Temp=c(T),Wind=c(W))
x
if(x[,1]>25 & x[,2]>70)
{
  subset(x, Ozone==TRUE & Temp==TRUE)
}

z<-read.csv("C:\\Users\\user\\Desktop\\git\\midetrmseatwork_z.csv")
z
z2<-ifelse(z$Ozone>25&z$Temp>70,z$Wind,NA)
mean(z2,na.rm=TRUE)

remove(z3)
z3<-0
for (row in 1:nrow(z)){
  z3[row]<-ifelse(z[row,5]==9&z[row,6]==8,z[row,4],NA)
}
mean(z3,na.rm=TRUE)

z3<-0
good<-complete.cases(z)
z3<-z[good,]
val<-z[1,1]
i<-2
flag<-0
while(i<=nrow(z3)){
  if(val>z3[i,1]&&z3[i,5]==5){
    val<-z3[i,1]
  }
  if(z3[i,5]==6){
    if(flag==0){
      flag<-flag+1
      val2<-z[i,1]
    }
    else{
      if(is.na(val2)){
        val2<-z3[i,1]
      }
      else if(val2>z3[i,1]){
        val2<-z3[i,1]
      }
    }
  }
  if(z3[i,5]==7){
    if(flag==1){
      flag<-flag+1
      val3<-z[i,1]
    }
    else{
      if(is.na(val3)){
        val3<-z3[i,1]
      }
      else if(val3>z3[i,1]){
        val3<-z3[i,1]
      }
    }
  }
  if(z3[i,5]==8){
    if(flag==2){
      flag<-flag+1
      val4<-z[i,1]
    }
    else{
      if(is.na(val4)){
        val4<-z3[i,1]
      }
      else if(val4>z3[i,1]){
        val4<-z3[i,1]
      }
    }
  }
  if(z3[i,5]==9){
    if(flag==3){
      flag<-flag+1
      val5<-z[i,1]
    }
    else{
      if(is.na(val5)){
        val5<-z3[i,1]
      }
      else if(val4>z3[i,1]){
        val5<-z3[i,1]
      }
    }
  }
  
  i<-i+1
}
cat("Month=5: ",val,"\n")
cat("Month=6: ",val2,"\n")
cat("Month=7: ",val3,"\n")
cat("Month=8: ",val4,"\n")
cat("Month=9: ",val5,"\n")

remove(z3)
z3<-0
row<-1
repeat{
  z3[row]<-ifelse(z[row,1]>25&z[row,4]>70,z[row,3],NA)
  if(row==nrow(z)){
    break;
  }
  row<-row+1
}
mean(z3,,na.rm=TRUE)

remove(z3)
z3<-0
row<-1
repeat{
  z3[row]<-ifelse(z[row,5]==9&z[row,6]==8,z[row,4],NA)
  if(row==nrow(z)){
    break;
  }
  row<-row+1
}
mean(z3,,na.rm=TRUE)

z3<-0
good<-complete.cases(z)
z3<-z[good,]
val<-z[1,1]
i<-2
flag<-0
repeat{
  if(val>z3[i,1]&&z3[i,5]==5){
    val<-z3[i,1]
  }
  if(z3[i,5]==6){
    if(flag==0){
      flag<-flag+1
      val2<-z[i,1]
    }
    else{
      if(is.na(val2)){
        val2<-z3[i,1]
      }
      else if(val2>z3[i,1]){
        val2<-z3[i,1]
      }
    }
  }
  if(z3[i,5]==7){
    if(flag==1){
      flag<-flag+1
      val3<-z[i,1]
    }
    else{
      if(is.na(val3)){
        val3<-z3[i,1]
      }
      else if(val3>z3[i,1]){
        val3<-z3[i,1]
      }
    }
  }
  if(z3[i,5]==8){
    if(flag==2){
      flag<-flag+1
      val4<-z[i,1]
    }
    else{
      if(is.na(val4)){
        val4<-z3[i,1]
      }
      else if(val4>z3[i,1]){
        val4<-z3[i,1]
      }
    }
  }
  if(z3[i,5]==9){
    if(flag==3){
      flag<-flag+1
      val5<-z[i,1]
    }
    else{
      if(is.na(val5)){
        val5<-z3[i,1]
      }
      else if(val4>z3[i,1]){
        val5<-z3[i,1]
      }
    }
  }
  if(i<=nrow(z3))
    i<-i+1
}
cat("Month=5: ",val,"\n")
cat("Month=6: ",val2,"\n")
cat("Month=7: ",val3,"\n")
cat("Month=8: ",val4,"\n")
cat("Month=9: ",val5,"\n")

#local
install.packages("imager")
library(imager)
image<- load.image("C:\Users\RM A-225\dota2.jpg")
plot(image)
width(image)
height(image)
size<-resize(image,2000,2000)
width(size)
height(size)
plot(size)
#loading image using function
imageview<- function(imagelocation)
{
 pic<-load.image(imagelocation)
 plot(pic)
}
imageview("C:/Users/RM A-225/cw.jpg")
#resizing image using function
imageresize<- function(imagelocation,width,height)
{
  load<-load.image(imagelocation)
  image1<-resize(load,width,height)
  plot(image1)
}
imageresize("C:/Users/RM A-225/cw.jpg",50,50)
############################################################
############################################################
#web
install.packages("magick")
library(ReadImages)
library(jpeg)
myurl<-"https://upload.wikimedia.org/wikipedia/en/8/8d/Dark_Souls_Cover_Art.jpg"
z<-tempfile()
download.file(myurl,z,mode="wb")
pic<- readJPEG(z)
plot(0:1,0:1, type="n", ann=FALSE,axes=FALSE)
rasterImage(pic,0,0,1,1)
file.remove(z)
#loading image using function
readimage<- function(url)
{
  myurl<- url
  z<-tempfile()
  download.file(myurl,z,mode="wb")
  pic<- readJPEG(z)
  plot(0:1,0:1, type="n", ann=FALSE,axes=FALSE)
  rasterImage(pic,0,0,1,1)
}
readimage("https://upload.wikimedia.org/wikipedia/en/a/aa/Outlast_cover.jpg")

#############################################################################
#############################################################################
#WEB
install.packages("magick")
library(imager)
library(magick)
webimage<-function(source){
  image_read(source)
}
z<-webimage("https://upload.wikimedia.org/wikipedia/en/3/34/Fallout_New_Vegas.jpg")
grayscale(z,method="Luma",drop=TRUE)
#LOCALLY
##LOADING IMAGE
library(imager)
imageview<- function(imagelocation)
{
  pic<-load.image(imagelocation)
  plot(pic)
}
imageview("C:/Users/RM A-225/dota2.jpg")

##RESIZE
imageresize<- function(imagelocation,width,height,filename)
{
  load<-load.image(imagelocation)
  image1<-resize(load,width,height)
  plot(image1)
  x<-"C:/Users/RM A-225/augmented-images/"
  y<-paste(x,filename)
  save.image(image1,y)
}
imageresize("C:/Users/RM A-225/dota2.jpg",300,300,"imgresize.jpg")

##GRAYSCALE
imageview1<- function(imagelocation,grayscale=FALSE,filename)
{
  pic<-load.image(imagelocation)
  if(grayscale==TRUE)
  {
  gs<-grayscale(pic)
  plot(gs)
  x<-"C:/Users/RM A-225/augmented-images/"
  y<-paste(x,filename)
  save.image(gs,y)
  }
  else
  {
  plot(pic)
  x<-"C:/Users/RM A-225/augmented-images/"
  y<-paste(x,filename)
  save.image(pic,y)
  }
}
imageview1("C:/Users/RM A-225/dota2.jpg",TRUE,"grayscale.jpg")
imageview1("C:/Users/RM A-225/dota2.jpg",,"grayscale(FALSE).jpg")


##ROTATE

library(imager)
library(jpeg)
imgrotate<- function(imagelocation,rotate,filename)
{
  pic<-load.image(imagelocation)
  rot<-imrotate(pic,rotate)
  plot(rot)
  x<-"C:/Users/RM A-225/augmented-images/"
  y<-paste(x,filename)
  save.image(rot,y)
}
imgrotate("C:/Users/RM A-225/dota2.jpg",30,"rotate.jpg")



