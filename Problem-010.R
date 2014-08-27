#Project Euler ---010
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

#------------
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


primeUnderN(2000000)->x
sum(x)
