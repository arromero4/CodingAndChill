"""
Scenario
Imagine a list ‒ not very long, not very complicated, just a simple list containing some integer numbers. Some of these numbers may be repeated, and this is the clue. We don't want any repetitions. We want them to be removed.

Your task is to write a program which removes all the number repetitions from the list. The goal is to have a list in which all the numbers appear not more than once.

Note: assume that the source list is hard-coded inside the code ‒ you don't have to enter it from the keyboard. Of course, you can improve the code and add a part that can carry out a conversation with the user and obtain all the data from her/him.

Hint: we encourage you to create a new list as a temporary work area ‒ you don't need to update the list in situ.

We've provided no test data, as that would be too easy. You can use our skeleton instead.

"""
my_list = [1, 2, 4, 4, 1, 4, 2, 6, 2, 9]
#
# Write your code here.
#
my_list2 = my_list[:]
uniqueNumbers = []
for number in my_list2:
    if number not in uniqueNumbers:
        uniqueNumbers.append(number)


print("The list with original elements:")
print(my_list)
print("The list2 with copy of the elements:")
print(my_list)
print("The uniqueNumbers with a unique elements only:")
print(uniqueNumbers)

