'''
systemname — stores the name of the operating system;
nodename — stores the machine name on the network;
release — stores the operating system release;
version — stores the operating system version;
machine — stores the hardware identifier, e.g., x86_64.

'''
import platform, os

print(platform.uname())
print('--------------------------------')
#os.mkdir("my_first_directory")

#print(os.listdir())
print('--------------------------------')
os.removedirs("my_first_directory/my_second_directory")
print(os.listdir())
os.makedirs("my_first_directory/my_second_directory")
os.chdir("my_first_directory")
print(os.listdir())

print('--------------------------------')
print(os.getcwd())
print('--------------------------------')

os.chdir("my_second_directory")
print(os.getcwd())
print('--------------------------------')
os.mkdir("my_first_directory")
print(os.listdir())
os.rmdir("my_first_directory")
print(os.listdir())
print('--------------------------------')
returned_value = os.system("mkdir my_first_directory")
print(returned_value)
print('--------------------------------')