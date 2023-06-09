'''
You already know how split() works. Now we want you to prove it.

Your task is to write your own function, which behaves almost exactly like the original split() method, i.e.:

it should accept exactly one argument – a string;
it should return a list of words created from the string, divided in the places where the string contains whitespaces;
if the string is empty, the function should return an empty list;
its name should be mysplit()
Use the template in the editor. Test your code carefully.


Expected output
['To', 'be', 'or', 'not', 'to', 'be,', 'that', 'is', 'the', 'question']
['To', 'be', 'or', 'not', 'to', 'be,that', 'is', 'the', 'question']
[]
['abc']
[]
'''
def mysplit(strng):
    words = []
    current_word = ""

    for char in strng:
        if char != " ":
            current_word += char
        elif current_word:
            words.append(current_word)
            current_word = ""
    
    if current_word:
        words.append(current_word)
    return words


print(mysplit("To be or not to be, that is the question")) #['To', 'be', 'or', 'not', 'to', 'be,', 'that', 'is', 'the', 'question']
print(mysplit("To be or not to be,that is the question"))#['To', 'be', 'or', 'not', 'to', 'be,that', 'is', 'the', 'question']
print(mysplit("   ")) #[]
print(mysplit(" abc "))#['abc']
print(mysplit(""))#[]

#Converting int and float to string
itg = 13
flt = 1.3
si = str(itg)
sf = str(flt)

print(si + ' ' + sf)


#The reverse transformation (string-number)
si = '13'
sf = '1.3'
itg = int(si)
flt = float(sf)

print(itg + flt)
    