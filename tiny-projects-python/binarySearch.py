"""
a function that takes a list and target parameter
multiple variables: middle, start, end, steps
recursion or while loop
increase the steps each the split is done
conditions to track target position
[1,2,3,4,5,6,7,8,9,10]

"""
def binary_search(list, target):
    middle = 0
    start = 0
    end = len(list)
    steps = 0

    while start <= end:
        print("Step", steps, ":", str(list[start:end+1]), "\nMiddle: ",middle, "\n")

        steps += 1
        middle = (start + end) // 2


        if target == list[middle]: 
            return middle
        
        if target < list[middle]:
            end = middle - 1
            print("se actualiza end: ", end)
        else:
            start = middle + 1
            print("se actualiza start: ",start)
    return -1

my_list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
          #0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
target = 16
binary_search(my_list, target)