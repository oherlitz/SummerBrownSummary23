x = input("Hours or Minutes?")
if x == "Hours":
    hours = int(input("How many hours?"))
    min = hours*60
    print(f'There are {min} minutes in {hours} hours')
elif x == "Minutes":
    min = int(input("How many minutes?"))
    hours = min/60
    print(f'There are {hours} hours in {min} minutes')