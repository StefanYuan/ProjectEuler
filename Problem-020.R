#-- project euler 020
sumup<-function(x){        
        options(scipen = 300)
        number.as.str<-as.character(gamma(x+1))
        str.split<-unlist(strsplit(number.as.str,split=""))
        sum(as.numeric(str.split))
}
