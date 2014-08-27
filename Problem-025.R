#-- project euler 025

x=c(1,1)

repeat{
        if(nchar(x[length(x)])>=1000){print(x[length(x)])
                                      break}
        x[length(x)+1]=x[length(x)]+x[length(x)-1]
}
