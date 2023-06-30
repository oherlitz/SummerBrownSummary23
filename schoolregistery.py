class School_Registry:
    
    def __init__(self, name, age, course):
        self.name = name
        self.age = age
        self.course = course

    def myfunc(self):
        print(self.name + " is " + self.age + " years old and is taking " + self.course)

p1 = School_Registry("John", "16", "Math")
p1.myfunc()