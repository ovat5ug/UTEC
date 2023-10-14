import pandas as pd

data=[[1,2,3],[4,5,6],[7,8,9]]
dato=[["a","b","c"],["D","3","F"],["g","H","i"]]

df1=pd.DataFrame(data=data)
df2=pd.DataFrame(data=dato)

i=0
indice1=['Indice'+str(i) for i in range(3)]##agregara el texto Indice0 hasta Indice2 "range()adentro del parentesis va el rango conocido"
indice2=['Indice'+str(i) for i in range(3)]##agregara el texto Indice0 hasta Indice2 "range()adentro del parentesis va el rango conocido"

columna1=['Columna'+str(i) for i in range(3)]##agregara el texto Columna0 hasta Columna2 "range()adentro del parentesis va el rango conocido"
columna2=['Columna'+str(i) for i in range(3)]##agregara el texto Columna0 hasta Columna2 "range()adentro del parentesis va el rango conocido"

df1=pd.DataFrame(data=data, index=indice1, columns=columna1)#asigna los valores de cambio a la variable df1
df2=pd.DataFrame(data=dato, index=indice1, columns=columna2)#asigna los valores de cambio a la variable df2

print(df1,"\n\n",df2)
print("#-------------------------------------------------------------------------------------------------------------#")
diccionario={'Columna0':{'Indice0':1,'Indice1':4,'Indice2':7},
             'Columna1':{'Indice0':2,'Indice1':5,'Indice2':8},
             'Columna2':{'Indice0':3,'Indice1':6,'Indice2':9}
             }
df3=pd.DataFrame(diccionario)##Formateando el diccionario para convertirlo en dataframe
print(df3)
print("#-------------------------------------------------------------------------------------------------------------#")
listaDeTuplas=[("a","b","c"),["D","E","F"],("g","H","i")]
df4=pd.DataFrame(data=listaDeTuplas, index=indice1, columns=columna1)
print(df4)
print("#-------------------------------------------------------------------------------------------------------------#")
df1[df1>0]="X"
#df2[str(df2=="E")]="X"
print("#-------------------------------------------------------------------------------------------------------------#")
df5=pd.concat([df1,df2,df3,df4])#concatena en columnas "VERTICALMENTE"[12 rows x 3 columns]
print(df5)
df6=pd.concat([df1,df2,df3,df4],axis=1)#concatena en filas "HORIZONTALMENTE"[3 rows x 12 columns]
print(df6)