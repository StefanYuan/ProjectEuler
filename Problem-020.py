__author__ = 'Stefan'

s=1
for i in range(1,100):
    s=s*i

ss=str(s)

s2=0

for i in range (len(ss)):
    s2=s2+int(ss[i])

s2