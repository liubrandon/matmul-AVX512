import re
import numpy as np
import sys

"Print out index for subadd {-1, 1, -1, 1...}"
for i in range(32):
    if i%2==0:
        sys.stdout.write("-1,")
    else:
        sys.stdout.write("1,")
sys.stdout.write("\n")

"Print out indexes for swapping even and odd indexes"
# indexList = [None] * 64
# isFirst = True
# for i in range(0,64,2):
#     if isFirst:
#         indexList[i] = i+2
#         indexList[i+1] = i+3
#         isFirst = False
#     else:
#         indexList[i] = i-2
#         indexList[i+1] = i-1
#         isFirst = True

# for index in indexList:
#     sys.stdout.write(str(index))
#     sys.stdout.write(',')


"Enumerate unique registers used and print them out"
# f = open("jit_cgemm_60x16.asm", "r")
# text = f.read()
# zmmList = re.findall(r'\bzmm\d+', text)
# temp = np.array(zmmList)
# uniques = np.unique(temp)
# print(uniques)
# print(uniques.size)