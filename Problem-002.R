#---Problem 2
#Each new term in the Fibonacci sequence is generated 
#by adding the previous two terms. 
#By starting with 1 and 2, the first 10 terms will be:
#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

#By considering the terms in the Fibonacci sequence whose 
#values do not exceed four million, find the sum of the 
#even-valued terms.
#----------------------

#Construct a Fibonacci Sequence

projectEuler002 <- function(limit){
        i=1
        j=1
        seqFibo<-1
        while(i<limit & j<limit){
                seqFibo[length(seqFibo)+1]<-j
                i=i+j
                j=i+j
                seqFibo[length(seqFibo)+1]<-i
        }
        if(i>=limit){seqFibo=seqFibo[-length(seqFibo)]}
        evenNum<-(1:(length(seqFibo)%/%3))*3
        sumN<-sum(seqFibo[evenNum])
        print(sumN)
}
####the answer is correct!!