import os

filePath = '.\\'
name_list = os.listdir(filePath)
line = 0
for name in name_list:
    if(name[-1] == 'v'):
        f = open(name, 'r')
        content = f.read()
        line += content.count('\n')
        f.close()
print(line)
 