#project euler 022

data<-read.csv("p022_names.txt",header = F)

data2<-read.csv("p022_names.txt",header = T)

name<-names(data2)
df<-data.frame(sort(name))
df[3627,1]="NA"

name.value<-function(x){
        name.split<-unlist(strsplit(x,split=""))
        z=0
        for ( i in name.split){
                z=z+which(LETTERS==i)
        }
        z       
}



df$value=sapply(df[,1],FUN = name.value)
df$value2<-mapply(FUN = name.value,df[,1])
df$row.value=as.numeric(row.names(df))

df<-transform(df,value=as.numeric(value))
#df<-df[!is.na(df$score),]
df$score=df$value*df$row.value
sum(df$score)


df[is.na(df$score),]