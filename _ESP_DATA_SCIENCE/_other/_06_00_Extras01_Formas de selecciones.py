import pandas as pd
# print(alumnos,"\n")
X=list("15 27 56 32".split())#<class 'list'>
data=[(7,5,2,4),(5,7,1,0),(1,0,8,2),(9,7,6,5)]#<class 'list'>
lista=type(data)

df=pd.DataFrame(data,X,"42 21 19 35".split())#<class 'pandas.core.frame.DataFrame'>
dataframe=type(df)

series=type(df['42'])#<class 'pandas.core.series.Series'>

DF1=df['42']
DF2=df.loc[['15','56']]#seleccion por filas
DF3=df.loc['56','42']#interseccion, conocido como la celda
DF4=df.iloc[2,0]#interseccion, conocido como la celda por la pocicion de los indicess
print(df)
print(DF1)
print(DF2)
print(DF3)
print(DF4)
