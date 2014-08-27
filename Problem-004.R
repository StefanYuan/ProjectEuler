##project Euler ---004

x<-vector()
for (i in 999:100){
        x1<-i*(999:100)
        x<-c(x,x1)
}

x<-unique(x)
sortX<-sort(x,decreasing = T)
chX<-as.character(sortX)

for(i in 1:length(chX)){
        test<-unlist(strsplit(chX[i],""))
        length(test)->len
        if(all(test[1:(len%/%2)]==test[len:(ceiling(len/2)+1)])){
                print(chX[i])
                break()
        }
}
