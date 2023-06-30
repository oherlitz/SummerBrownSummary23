from math import pow
from math import sqrt
from random import shuffle
from random import choice
from random import randint

result1 = pow(2,4) # this equals 2^4
print(result1)

result2 = sqrt(16) 
print(result2)

result3 =  randint(0,2) #random integer in between and including
print(result3)

names = ["Amaryllis", "Godson", "Reina"]
print(names)

shuffle(names)
print(names)

result4 = choice(names) #To choose an element in a set
print(result4)