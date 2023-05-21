"""
email slicer
collect email from user
split the email using the @
hello@gmail.com
the first part as the username
the second part as the domain
split domain using dot 
"""

def main():
    print("Welcome the email slicer!")
    print("")
    email_input = input("Enter your email: ")

    (username, domain) = email_input.split("@")
    (domain, extension) = domain.split(".")

    print("username: ", username)
    print("domain: ", domain)
    print("extension: ", extension)

main()