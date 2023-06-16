print("Modifying and adding values")
dictionary = {"cat": "chat", "dog": "chien", "horse": "cheval"}
 
dictionary['cat'] = 'minou'

#Adding value and key to dictionary
dictionary['swan'] = 'cygne'
print(dictionary)


#Adding an item to dictionary
dictionary.update({"duck": "canard"})
print(dictionary)

#Removing an item from dictionary
del dictionary['dog']
print(dictionary)

#Removing the last item from dictionary
dictionary.popitem()
print(dictionary)