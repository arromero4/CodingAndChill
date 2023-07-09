from os import strerror
#Be careful – don't use this kind of read if you're not sure whether the file's contents will fit the available memory.


try:
    binary_file = open('file.bin', 'rb')
    data = bytearray(binary_file.read(5))
    binary_file.close()

    for b in data:
        print(hex(b), end=' ')

except IOError as e:
    print("I/O error occurred:", strerror(e.errno))
    
    