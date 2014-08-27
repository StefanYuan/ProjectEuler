#projectEuler ---009
for (c in 499:333){
        for (a in 1:333){
                b=1000-a-c
                if (a^2+b^2==c^2){
                        print(c(a,b,c))
                        print(prod(a,b,c))
                }
                
        }
}


#--------
a^2+b^2==c^2

a+b+c=1000

c=500
a+b=500
a=sqrt(c^2-b^2)
b=500-a
a=sqrt(c^2-(1000-c-a)^2)

a^2=c^2-(1000-c-a)^2



