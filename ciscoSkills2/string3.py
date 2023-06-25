# Demonstrating the capitalize() method:
print('aBcD'.capitalize())
print("Alpha".capitalize())
print('ALPHA'.capitalize())
print(' Alpha'.capitalize())
print('123'.capitalize())
print("αβγδ".capitalize())

# Demonstrating the center() method:
print('[' + 'alpha'.center(10) + ']')
print('[' + 'Beta'.center(2) + ']')
print('[' + 'Beta'.center(4) + ']')
print('[' + 'Beta'.center(6) + ']')


# Demonstrating the endswith() method:
if "epsilon".endswith("on"):
    print("yes")
else:
    print("no")

t = "zeta"
print(t.endswith("a"))
print(t.endswith("A"))
print(t.endswith("et"))
print(t.endswith("eta"))


# Demonstrating the find() method:
print("Eta".find("ta"))
print("Eta".find("mma"))

t = 'theta'
print(t.find('eta'))
print(t.find('et'))
print(t.find('the'))
print(t.find('ha'))

the_text = """A variation of the ordinary lorem ipsum
text has been used in typesetting since the 1960s 
or earlier, when it was popularized by advertisements 
for Letraset transfer sheets. It was introduced to 
the Information Age in the mid-1980s by the Aldus Corporation, 
which employed it in graphics and word-processing templates
for its desktop publishing program PageMaker (from Wikipedia)"""

fnd = the_text.find('the')
while fnd != -1:
    print(fnd)
    fnd = the_text.find('the', fnd + 1)


print('kappa'.find('a', 1, 4))
print('kappa'.find('a', 2, 4))


# Demonstrating the isalnum() method:
print('lambda30'.isalnum())
print('lambda'.isalnum())
print('30'.isalnum())
print('@'.isalnum())
print('lambda_30'.isalnum())
print(''.isalnum())

t = 'Six lambdas'
print(t.isalnum())

t = '&Alpha;&beta;&Gamma;&delta;'
print(t.isalnum())

t = '20E1'
print(t.isalnum())


# Example 1: Demonstrating the isapha() method:
print("Moooo".isalpha())
print('Mu40'.isalpha())
    
# Example 2: Demonstrating the isdigit() method:
print('2018'.isdigit())
print("Year2019".isdigit())

# Example: Demonstrating the islower() method:
print("Moooo".islower())
print('moooo'.islower())


# Example: Demonstrating the isspace() method:
print(' \n '.isspace())
print(" ".isspace())
print("mooo mooo mooo".isspace())

# Example: Demonstrating the isupper() method:
print("Moooo".isupper())
print('moooo'.isupper())
print('MOOOO'.isupper())

# Demonstrating the join() method:
print(",".join(["omicron", "pi", "rho"]))

# Demonstrating the lower() method:
print("SiGmA=60".lower())

# Demonstrating the lstrip() method:
print("[" + " tau ".lstrip() + "]")
print("www.cisco.com".lstrip("w."))

# Demonstrating the replace() method:
print("www.netacad.com".replace("netacad.com", "pythoninstitute.org"))
print("This is it!".replace("is", "are"))
print("Apple juice".replace("juice", ""))

print("This is it!".replace("is", "are", 1))
print("This is it!".replace("is", "are", 2))

# Demonstrating the rfind() method:
print("tau tau tau".rfind("ta"))
print("tau tau tau".rfind("ta", 9))
print("tau tau tau".rfind("ta", 3, 9))

# Demonstrating the rstrip() method:
print("[" + " upsilon ".rstrip() + "]")
print("cisco.com".rstrip(".com"))

# Demonstrating the split() method:
print("phi       chi\npsi".split())

# Demonstrating the startswith() method:
print("omega".startswith("meg"))
print("omega".startswith("om"))

print()