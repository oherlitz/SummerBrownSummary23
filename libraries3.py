from math import pow as p
from math import sqrt as sr
from random import shuffle as sh
from random import choice as c
from random import randint as r

result1 = p(2,4) # this equals 2^4
print(result1)

result2 = sr(16) 
print(result2)

result3 =  r(0,2) #random integer in between and including
print(result3)

names = ["Amaryllis", "Godson", "Reina"]
print(names)

sh(names)
print(names)

result4 = c(names) #To choose an element in a set
print(result4)