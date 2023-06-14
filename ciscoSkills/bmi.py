"""
Evaluating the BMI
Let's get started on a function to evaluate the Body Mass Index (BMI).

As you can see, the formula gets two values:

weight (originally in kilograms)
height (originally in meters)
It seems that this new function will have two parameters. Its name will be bmi, but if you prefer any other name, use it instead.
"""
def ft_and_inch_to_m(ft, inch = 0.0):
    return ft * 0.3048 + inch * 0.0254
 
 
def lb_to_kg(lb):
    return lb * 0.4535923
 
 
def bmi(weight, height):
    if height < 1.0 or height > 2.5 or weight < 20 or weight > 200:
        return None
 
    return weight / height ** 2
 
 
print(bmi(weight = lb_to_kg(176), height = ft_and_inch_to_m(5, 7)))