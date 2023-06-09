# Read two numbers 
number1 = int(input("Enter the first number: ")) 
number2 = int(input("Enter the second number: ")) 
# Choose the larger number 
if number1 > number2: 
    larger_number = number1 
else: 
    larger_number = number2 

# Print the result 
print("The larger number is:", larger_number)

# Read two numbers 
number1 = int(input("Enter the first number: "))
number2 = int(input("Enter the second number: ")) 
# Choose the larger number 
if number1 > number2: 
    larger_number = number1 
else: 
    larger_number = number2 
# Print the result \
print("The larger number is:", larger_number)


#Example with break 
largest_number = -99999999
counter = 0

while True:
    number = int(input("Enter a number or type -1 to end the program: "))
    if number == -1:
        break
    counter += 1
    if number > largest_number:
        largest_number = number

if counter != 0:
    print("The largest number is", largest_number)
else:
    print("You haven't entered any number.")

# Example with  continue
largest_number = -99999999
counter = 0

number = int(input("Enter a number or type -1 to end program: "))

while number != -1:
    if number == -1:
        continue
    counter += 1

    if number > largest_number:
        largest_number = number
    number = int(input("Enter a number or type -1 to end the program: "))

if counter:
    print("The largest number is", largest_number)
else:
    print("You haven't entered any number.")

