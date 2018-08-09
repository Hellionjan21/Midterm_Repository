#reading data
data<-read.csv("C:\\Users\\RM A-225\\BARROZO\\Prelim_Repository\\R Nuts and Bolt\\midetrmseatwork_data.csv")
data
#task1
t1<-function(dataname,rownum,colnum)
{
  dataname[rownum,colnum]
}
t1(data,50,1)
#task2
t2<-function(dataname,colnum=c(1:6))
{
  sum(is.na(dataname[,colnum]))
}
t2(data)
#task3
t3<-function(dataname,rowmin=1,rowmax=153,colnum)
{
  mean(dataname[rowmin:rowmax,colnum], ,na.rm=TRUE)
}
t3(data,10,35,2)
