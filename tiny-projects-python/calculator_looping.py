"""
define the functions needed:add, sub, mul, div
print options to the user
ask for the values
call the functions
while loop to continuethe program
"""
def add(a,b):
    answer = a + b
    print(str(a) + " + " + str(b) + " = " + str(answer))

def sub(a,b):
    answer = a - b
    print(str(a) + " - " + str(b) + " = " + str(answer))

def mul(a,b):
    answer = a * b
    print(str(a) + " * " + str(b) + " = " + str(answer))

def div(a,b):
    answer = a / b
    print(str(a) + " / " + str(b) + " = " + str(answer))

print("Welcome to the calculator")
print("A. Addition")
print("B. Subtraction")
print("C. Multiplication")
print("D. Division")
print("E. Exit")

choice = input("Enter your choice: ").lower()
polling_active = True

while polling_active:
    a = int(input("Enter the first number: "))
    b = int(input("Enter the second number: "))


    if choice == "a":    
        add(a,b)
    elif choice == "b":
        sub(a,b)
    elif choice == "c":
        mul(a,b)
    elif choice == "d":
        div(a,b)
    elif choice == "e":
        break
    #Find out if anyone else is going to take the poll.
    repeat = input("Would you like to let another person respond? (yes/ no) ")
    if repeat == 'no':
        polling_active = False