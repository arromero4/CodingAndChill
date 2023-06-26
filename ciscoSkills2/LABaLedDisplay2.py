'''
LAB   A LED Display
You've surely seen a seven-segment display.

It's a device (sometimes electronic, sometimes mechanical) designed to present one decimal digit using a subset of seven segments. If you still don't know what it is, refer to the following Wikipedia article.

Your task is to write a program which is able to simulate the work of a seven-display device, although you're going to use single LEDs instead of segments.

Each digit is constructed from 13 LEDs (some lit, some dark, of course) – that's how we imagine it:

  # ### ### # # ### ### ### ### ### ###
  #   #   # # # #   #     # # # # # # # 
  # ### ### ### ### ###   # ### ### # # 
  # #     #   #   # # #   # # #   # # # 
  # ### ###   # ### ###   # ### ### ###
Note: the number 8 shows all the LED lights on.

Your code has to display any non-negative integer number entered by the user.

Tip: using a list containing patterns of all ten digits may be very helpful.

Complete Test DataTest Data
Sample input:

123

Sample output:

# ### ### 
  #   #   # 
  # ### ### 
  # #     # 
  # ### ### 
Output

Sample input:

9081726354

Sample output:

### ### ###   # ### ### ### ### ### # # 
# # # # # #   #   #   # #     # #   # # 
### # # ###   #   # ### ### ### ### ### 
  # # # # #   #   # #   # #   #   #   # 
### ### ###   #   # ### ### ### ###   # 
'''
# Define LED patterns for each digit
digits = [
    ["###", "# #", "# #", "# #", "###"],   # 0
    ["  #", "  #", "  #", "  #", "  #"],   # 1
    ["###", "  #", "###", "#  ", "###"],   # 2
    ["###", "  #", "###", "  #", "###"],   # 3
    ["# #", "# #", "###", "  #", "  #"],   # 4
    ["###", "#  ", "###", "  #", "###"],   # 5
    ["###", "#  ", "###", "# #", "###"],   # 6
    ["###", "  #", "  #", "  #", "  #"],   # 7
    ["###", "# #", "###", "# #", "###"],   # 8
    ["###", "# #", "###", "  #", "###"]    # 9
]

# Function to display a number using LED patterns
def display_number(number):
    # Convert number to string and iterate over each digit
    for digit in str(number):
        digit = int(digit)  # Convert digit back to integer
        # Print each line of the LED pattern for the current digit
        for line in digits[digit]:
            print(line.replace("#", "*").replace(" ", " "), end="\n")  # Replace '#' with '*' for display
        print()  # Move to the next line after printing a digit

# Get input from the user
number = int(input("Enter a non-negative integer number: "))

# Display the number using LED patterns
display_number(number)
