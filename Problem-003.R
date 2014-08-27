#ProjectEuler---003
#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?
findMaxPrime<-function(x){
        for(i in 2:sqrt(x)){
                if(x%%i==0){
                        while(x%%i==0){
                                x=x/i
                        }
                        maxprime=i
                }
        }
        print(max(c(maxprime,x)))
}



findMaxPrime2<-function(x){
        i=2
        repeat{
                while(x%%i==0){
                        x=x/i
                }
                i=i+1
                if (i>=x){
                        break
                }
        }
        print(c(x,i))
}

#----------下方为探索过程--------
x=600851475143

sqrt(x)->sqrtX

#y为要检验的数字
test.prime<-function(y){
        #被测试的数字的平方根必须大于等于4才有效，或者说，y必须大于等于15
        sqrtY<-sqrt(y)
        seqY<-seq(3,round(sqrtY),by=2)
        if(all((y %% seqY )!=0)){
                return(y)
        }
}

primeUnderN<-function(n){
        addprime<-unlist(sapply(seq(11,n,by=2),test.prime))
        primeList<-c(2,3,5,7,addprime)
        #因为test.prime函数是从3到sqrtY开始seq的，所以sqrtY必须大于3,在数列中已经排除偶数，而11，13正好是质数，15正好可以被3整除
        #primeList<-c(2,3,5,7)
        #for(i in seq(11,n,by=2)){
        #        test.prime(i)->newprime
        #        primeList<-c(primeList,newprime)
        #}
        print(primeList)
}


debris<-function(x,limit){
        prime<-primeUnderN(limit)
        for(i in prime[-1]){
                if(x %% i == 0 ){maxPrime<-i}
                while(x %% i == 0){
                        x<-x/i
                }
                
                
        }
}

findMaxPrime<-function(x){
        for(i in 2:sqrt(x)){
                if(x%%i==0){
                        while(x%%i==0){
                                x=x/i
                        }
                        maxprime=i
                }
        }
        print(max(c(maxprime,x)))
}





