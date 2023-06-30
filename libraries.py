import math
import random

result1 = math.pow(2,4) # this equals 2^4
print(result1)

result2 = math.sqrt(16) 
print(result2)

result3 =  random.randint(0,2) #random integer in between and including
print(result3)

names = ["Amaryllis", "Godson", "Reina"]
print(names)

random.shuffle(names)
print(names)

result4 = random.choice(names) #To choose an element in a set
print(result4)