## pip install pandas (instalas la libreria de "pandas")
## pip -1 pandas (instalas la libreria de "pandas")
## REPORTE DE ANALISIS
import pandas as pd
CSV='data/alquiler.csv'
datos = pd.read_csv(CSV, sep=';', header=0)##read_csv este metodo lee archivos csv
##print(datos.dtypes)
valor = pd.DataFrame(datos.dtypes, columns = ['Tipos de Datos'])##agrega un nombre a la segunda columna "Tipos de Datos"
valor.columns.name = "Variables"##agrega un nombre a la primer columna "Variable"
print(valor)
cantColYfil = datos.shape
print(cantColYfil)##".shape" devuelve la cantidad de las columnas y de las filas "(32960, 9)"

print("la base de datos presenta {} registros (inmuebles) y {} variables".format(datos.shape[0],datos.shape[1]))