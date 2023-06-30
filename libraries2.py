import math as m
import random as r

result1 = m.pow(2,4) # this equals 2^4
print(result1)

result2 = m.sqrt(16) 
print(result2)

result3 =  r.randint(0,2) #random integer in between and including
print(result3)

names = ["Amaryllis", "Godson", "Reina"]
print(names)

r.shuffle(names)
print(names)

result4 = r.choice(names) #To choose an element in a set
print(result4)