### project euler  021

find.divisors<-function(x){
        divisors<-1
        for(i in 2:sqrt(x)){
                if(x%%i==0){
                        divisors[c(length(divisors)+1,length(divisors)+2)]=c(i,x/i)
                }
        }
        unique(divisors)
}

divisors.sum<-function(x){
        sum(find.divisors(x))
}




dn.list<-data.frame(number=1:10000,dn=sapply(1:10000,divisors.sum))

dn.list$dn2<-sapply(dn.list$dn,divisors.sum)

dn.list2<-dn.list[(dn.list$number==dn.list$dn2 & dn.list$dn!=dn.list$dn2) ,][c(-1,-2),]

#`~~~~~~~~~
z=0

for(i in 1:10000){
        if(i==divisors.sum(divisors.sum(i))){
                z=z+i+divisors.sum(i)
        }
}


z=0
for(i in which(dn.list$dn<10000)){
        if(i==dn.list[dn.list[i,2],2]){
                z=z+dn.list[i,2]+i
        }
}



dn.list$sum=dn.list$number+dn.list$dn
dn.list$multiple=dn.list$number*dn.list$dn
dn.list$dv1=dn.list$number/dn.list$dn
dn.list$dv2=dn.list$dn/dn.list$number

amicable<-dn.list[duplicated(dn.list$sum)&duplicated(dn.list$multiple),]
amicable2<-dn.list[duplicated(dn.list$sum,fromLast = T)&duplicated(dn.list$multiple,fromLast = T),]

sum(amicable[,1],amicable[,2])
