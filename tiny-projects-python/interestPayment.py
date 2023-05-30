"""
collect the neccesary inputs: principal, apr, years
calculate the monthly payment
show to the user
"""

def main():
    print("This is a monthly payment loan calculator")
    print("")

    principal = float(input("What is the loan amount? "))
    apr = float(input("What is the anual interest rate? "))
    years = int(input("What is the amount of years?"))

    monthly_interest_rate = apr / 1200
    amount_of_months = years * 12
    monthly_payment = principal * monthly_interest_rate / (1 - (1 + monthly_interest_rate)  ** (-amount_of_months))

    print("The monthly payment for this loan is: %.2f " % monthly_payment)

main()