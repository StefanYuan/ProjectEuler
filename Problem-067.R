#project Euler 067

x<-readLines("Project Euler/p067_triangle.txt")

x.split<-strsplit(x,split=" ")

library(reshape2)
x.melt<-melt(x.split)
x.melt2<-transform(x.melt,value=as.numeric(as.character(value)))

data.length<-length(x.split)
df<-data.frame(matrix(nrow = data.length,ncol=data.length))

for (i in 1:data.length){
        writein<-x.melt2[x.melt2$L1==i,1]
        df[i,1:i]=writein
}

for (i in (nrow(df)-1):1){
        for(j in 1:i){
                df[i,j]=df[i,j]+max(df[i+1,j],df[i+1,j+1])
        }
}
