#project euler ---014
#The following iterative sequence is defined for the set of positive integers:
        
#        n → n/2 (n is even)
#n → 3n + 1 (n is odd)

#Using the rule above and starting with 13, we generate the following sequence:
        
#        13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

#Which starting number, under one million, produces the longest chain?

#NOTE: Once the chain starts the terms are allowed to go above one million.


longestChain<-function(n){
        #先形成一个data.frame，col1放数字，col2放这个数字的chain长度
        nlist<-data.frame(num=1,chain=1)
        for(i in 2:n){
                j=0
                while (! i %in% nlist[,1]){
                        nlist[nrow(nlist)+1,1]<-i   ##如果这个数字不在data.frame里面，就写入data.frame，并进行运算
                        j=j+1
                        if(i%%2==0){
                                i<-i/2
                        }
                        else {
                                i=i*3+1
                        }
                }
                #直到其子项存在在data.frame里面，就找出这个子项的chain长度，读取后推出循环中i的chain长度
                if (j != 0){
                        which(nlist[,1]==i)->cn  #chain number
                        nn<-nlist[cn,2]
                        nr<-nrow(nlist)
                        nlist[nr:(nr-j+1),2]<-(nn+1):(nn+j)       
                }
        }
        #全局赋值，找出chain最大值，输出该值
        nlist<<-nlist
        which.max(nlist[,2])->max.N
        nlist[max.N,]
        
}




#----------- 探索过程1
for (i in 1:1000000){
        
        n<-n/2
        
        n<-3n+1
}
df$x[i]


2^(1:20)

z<-vector()
for(i in 1:20){
which(xcsdf[,2]==i)->whichi
xcsdf[whichi,1]->nu
z<-c(z,sum(as.numeric(as.character(nu))))

}
