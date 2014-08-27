# project Euler -- 007
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
#we can see that the 6th prime is 13.
#What is the 10 001st prime number

#--------

test.prime<-function(y){
        #被测试的数字的平方根必须大于等于4才有效，或者说，y必须大于等于15
        sqrtY<-sqrt(y)
        seqY<-seq(3,round(sqrtY),by=2)
        if(all((y %% seqY )!=0)){
                return(y)
        }
}

primeNo.n<-function(n){
        #因为test.prime函数是从3到sqrtY开始seq的，所以sqrtY必须大于3,在数列中已经排除偶数，而11，13正好是质数，15正好可以被3整除
        primeList<-c(2,3,5,7)
        for(i in seq(11,900000,by=2)){
                test.prime(i)->newprime
                primeList<-c(primeList,newprime)
                if(length(primeList)==n){
                        print(primeList[n])
                        break()
                }
        }
        listP<<-primeList
}