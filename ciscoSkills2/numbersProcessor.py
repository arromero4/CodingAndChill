# Numbers Processor Option 1

# line = input("Enter a line of numbers - separate them with spaces: ")
# strings = line.split()
# total = 0
# try:
#     for substr in strings:
#         total += float(substr)
#     print("The total is:", total)
# except:
#     print(substr, "is not a number.")

# Numbers Processor Option 2 using list comprehension and ValueError handling
line = input("Enter a line of numbers - separate them with spaces: ")
strings = line.split()
total = 0
try:
    total =sum([float(substr) for substr in strings])
    print("The total is:", total)
except ValueError as e:
    print(e, "is not a number.")