dictionary = {"cat": "chat", "dog": "chien", "horse": "cheval"}
print("Example with keys method")
for key in dictionary.keys():
    print(key, "->", dictionary[key])
    
print("Example with items method")
for english, french in dictionary.items():
    print(english, "->", french)