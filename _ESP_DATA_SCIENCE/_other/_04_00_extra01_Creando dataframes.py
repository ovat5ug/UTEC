import pandas as pd

datos=[0,1,2,3,4,5]
s1=pd.Series(datos)
s2=pd.Series(datos)

indices=['Indice'+str(i) for i in range(6)]##agregara el texto Indice0 hasta Indices "range()adentro del parentesis va el rango conocido"
columnas=['Columna'+str(i) for i in range(6)]##agregara el texto Columna0 hasta Columnas "range()adentro del parentesis va el rango conocido"
# print(indices)#['Indice0', 'Indice1', 'Indice2', 'Indice3', 'Indice4']
s1=pd.DataFrame(data=datos, index=indices)#asigna los valores de cambio a la variabls1
s2=pd.Series(data=datos, index=indices)#asigna los valores de cambio a la variable s2

print(s1,"\n\n",s2)
#------------------------------------------------------------------------------------------------------------#
diccionario={'Indice'+str(i):i+1 for i in range(6)}
# print(diccionario)#{'Indice0': 1, 'Indice1': 2, 'Indice2': 3, 'Indice3': 4, 'Indice4': 5}
s2=pd.Series(diccionario)#asigna los valores de cambio a la variable diccionario
s3=s2+2
print(s3)
sumaSeries = s2+s3#sumando dos series// no se puede sumar series y dataframe
print(sumaSeries)