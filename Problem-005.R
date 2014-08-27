#---Project Euler 005
### 2520 is the smallest number that can be divided by each of the 
### numbers from 1 to 10 without any remainder.
### What is the smallest positive number that is evenly divisible 
### by all of the numbers from 1 to 20?


#--------
 

#y为要检验的数字(质数)
test.prime<-function(y){
        sqrtY<-sqrt(y)
        seqY<-seq(2,floor(sqrtY))
        if(all((y %% seqY )!=0) | any(y==c(1,2,3))){
                return(y)
        }
}

primeUnderN<-function(n){
        unlist(sapply(seq(1,n),test.prime))
}

LestCommonMultiple<-function(n){
        primeUnderNumber<-primeUnderN(n)[-1]
        mapply(FUN = log,base=primeUnderNumber,x=n )->logN
        logN<-floor(logN)
        prod(primeUnderNumber^logN)
        
}