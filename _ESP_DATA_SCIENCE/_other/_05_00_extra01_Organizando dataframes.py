import pandas as pd

datos = [[1,2,3],["D","E","F"],[7,8,9],["J","K","L"]]
CDF=pd.DataFrame(datos)

conteoF=len(CDF.axes[0])#de esta forma se cuentan las filas
conteoC=len(CDF.axes[1])#de esta forma se cuentan las columnas
print("Son ",conteoF," Filas y Son: ",conteoC,"Columnas","\n")

F=list("ABC4")
C=list("G56")

# print(d)
DF=pd.DataFrame(datos,F,C)
print(DF,"\n")
DF.sort_index(inplace=True)#ordena los datos por el indices
print(DF,"\n")
DF.sort_index(inplace=True, axis=1)#ordena los datos por el indices y columnas por orden ascendente
print(DF,"\n")
# DF.sort_values(by='5',inplace=True)#ordena los datos por el indices y columnas por orden ascendente
# print(DF,"\n")
# DF.sort_values(by='8',axis=1,inplace=True)#ordena los datos por el indices y columnas por orden ascendente
# print(DF)
