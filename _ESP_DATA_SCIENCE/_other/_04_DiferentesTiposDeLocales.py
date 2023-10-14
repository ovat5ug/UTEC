## pip install pandas (instalas la libreria de "pandas")
## pip -1 pandas (instalas la libreria de "pandas")
## pip install openpyxl (instala libreria de compatibilidad para excel)
## pip install lxml (instala libreria de compatibilidad para leer paginas webs)
## pip install utopep8(instala formateador)
## REPORTE DE ANALISIS
import pandas as pd
##-------------------------------------------------------------------------------------------------------------
CSV='data/alquiler.csv'
datasets = pd.read_csv(CSV, sep=';', header=0)#.head(10)##"read_csv" este metodo lee archivos csv y
                                                       ##".head(10)" solo trae 10 registros
tipo_de_inmueble=datasets['Tipo']##lee archivos csv y "print(datasets.Tipo)" hace lo mismo que el print de esta linea
##print(tipo_de_inmueble.drop_duplicates())

tipo_de_inmueble.drop_duplicates(inplace=True)#reduce valores duplicados dejando solo valores unicos

print(tipo_de_inmueble.index)## "Index muestra todos los indices del documento en analisis"
print(type(tipo_de_inmueble))## "<class 'pandas.core.series.Series'>"

tipo_de_inmueble = pd.DataFrame(tipo_de_inmueble)## cambiamos el tipo de datos de "tipo_de_inmueble"
print(type(tipo_de_inmueble))## "<class 'pandas.core.frame.DataFrame'>"

tipo_de_inmueble.shape[0]## me dice cuantos datos tiene

##print(range(tipo_de_inmueble.shape[0]))## genera rangos del 0 al 22

# for i in range(tipo_de_inmueble.shape[0]):
#     print(i)##muestra conteo iterativo del 0 al 22

tipo_de_inmueble.index=range(tipo_de_inmueble.shape[0])## añade los indices que genera los rangos del 0 al 22

##print(tipo_de_inmueble.index)##RangeIndex(start=0, stop=22, step=1)
##print(tipo_de_inmueble)## me muestra los rangos añadidos del 0 al 22 en el campo de los indices siguiendo la secuencia

tipo_de_inmueble.columns.name='id' ##renombra la primer columna como "id"
print(tipo_de_inmueble)
# tipo_de_inmueble.index = range(len(tipo_de_inmueble))
# print(tipo_de_inmueble)