'''
systemname — stores the name of the operating system;
nodename — stores the machine name on the network;
release — stores the operating system release;
version — stores the operating system version;
machine — stores the hardware identifier, e.g., x86_64.

'''
import platform

print(platform.uname())
