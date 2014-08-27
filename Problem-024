##project euler 024

lp<-function(x){
        df<-data.frame(divisor=NA,remainder=NA)
        df[11,1]=x-1
        for( i in 10:1){
                df[i,1]=df[i+1,1]%%gamma(i)
                df[i,2]=df[i+1,1]%/%gamma(i)
        }
        
        seqe<-df[,2]+1
        y=0:9
        z=vector()
        for(i in 10:1){
                z[11-i]=y[seqe[i]]
                y=y[-seqe[i]]
        }
        paste(z,collapse = "")
}


