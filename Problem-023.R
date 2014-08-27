##project euler 023


find.divisors<-function(x){
        #该函数检测2时，会出错，多处一个divisor=2
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

dn.list<-data.frame(number=1:28123,dn=sapply(1:28123,divisors.sum))
dn.list[2,"dn"]=1 #修复函数当x=2时候的错误

abundantNumbers<-dn.list[which(dn.list$number<dn.list$dn),][,1]

testIfSum<-function(x){
        for(i in abundantNumbers[which(abundantNumbers<=(x/2))]){
                testNum<-x-i
                if(testNum %in% abundantNumbers){
                        return(x)
                        break
                }
        }
        NA
}


testNotSum<-function(x){
        for(i in abundantNumbers[which(abundantNumbers<=(x/2))]){
                testNum<-x-i
                if(testNum %in% abundantNumbers){
                        return(0)
                        break
                }
        }
        x
}

sumList<-sapply(1:28123,testIfSum)

notList<-sapply(1:n,testNotSum)
sum(sapply(1:n,testNotSum))