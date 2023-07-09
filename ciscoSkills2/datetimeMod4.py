from datetime import date

'''
What day of the week is it?
One of the more helpful methods that makes working with dates easier is the method called weekday. It returns the day of the week as an integer, where 0 is Monday and 6 is Sunday. Run the code in the editor.
'''
d = date(2023, 7, 8)
print(d.weekday())
print(d.isoweekday())