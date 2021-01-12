f = open("coe.txt", "w")
line = ""
for i in range (99):
    line += '0'
for i in range (1, 10):
    w_line = line + str(i)
    f.write(w_line + '\n')
f.close()