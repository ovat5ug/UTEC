import pandas as pd

print("---ENTRADA 01---")
# In [1]:
datos = {'A': {'X': 1, 'Y': 3}, 'B': {'X': 2, 'Y': 4}}
df = pd.DataFrame(datos)
print(df)

# Out [1]:
#     A    B
# X   1    2
# Y   3    4
print("---ENTRADA 02---")
# In [2]:
datos = [('A', 'B'), ('C', 'D')]
df = pd.DataFrame(datos, columns = ['L1', 'L2'],  index = ['C1', 'C2'])
print(df)

# Out [2]:
#      C1    C2
# L1    A    C
# L2    B    D
print("---ENTRADA 03---")
# In [3]:
datos = [[1, 2, 3], [4, 5, 6]]
index = 'X,Y'.split(',')
columns = list('CBA')[::-1]
df = pd.DataFrame(datos, index, columns)
print(df)

# Out [3]:
#      A    B    C
# X    1    2    3
# Y    4    5    6
print("---ENTRADA 04---")
# In [4]:
df1 = pd.DataFrame({'A': {'X': 1}, 'B': {'X': 2}})
df2 = pd.DataFrame({'C': {'X': 3}, 'D': {'X': 4}})
print(pd.concat([df1, df2]))

# Out [4]:
#       A    B    C    D
# X     1    2    3    4

