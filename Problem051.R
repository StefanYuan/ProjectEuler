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
    return(primeList)
}


#获得n位数的质数清单
n<-6
nDigPrime<-function(n){
    temp<-primeUnderN(10^n)
    x<-length(temp)
    y<-length(which(temp<10^(n-1)))+1
    temp[y:x]
}

primendig<-nDigPrime(n)


#校验某个数字可能性
for (orgNum in primendig) {
    #拆分数列
    seqN<-c()
    temp<-orgNum
    for (i in 1:n) {
        seqN<-c(temp%%10,seqN)
        temp<-temp%/%10
    }
    
    #提取重复值
    tableA<-table(as.numeric(seqN))
    if (max(tableA)>1) {
        re<-as.numeric(names(tableA)[which(tableA>1)])
        #验证是否存在差不多的数字
        for (i in re) {
            repedNum<-c()
            for(j in 0:9){
                c<-seqN
                c[which(c==i)]<-j
                temp2<-0
                for (k in 1:n) {
                    temp2<-temp2*10+c[k]
                }
                repedNum<-c(repedNum,temp2)
                if(sum(repedNum %in% primendig)>=8){
                    print(repedNum)
                    break()
                }
            }
        }
    }
}

