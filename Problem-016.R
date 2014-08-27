# project euler --016

options(scipen=500)
n=2^1000
nc=as.character(n)
ncs=strsplit(nc,split = "")
ncsn<-as.numeric(unlist(ncs))
sum(ncsn)
