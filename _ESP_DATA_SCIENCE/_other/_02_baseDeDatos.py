## pip install pandas (instalas la libreria de "pandas")
## pip -1 pandas (instalas la libreria de "pandas")
## REPORTE DE ANALISIS
import pandas as pd
CSV='data/alquiler.csv'
datos = pd.read_csv(CSV, sep=';', header=0)##read_csv este metodo lee archivos csv
print(datos)
print(type(datos))##<class 'pandas.core.frame.DataFrame'>
print(datos.info())##retorna la informacion que contiene el dataframe
print(datos.head(15))##muestra 15 registros desde la cabecera (desde la primera posicion)