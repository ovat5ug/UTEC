import pandas as pd
# read_csv este metodo lee archivos csv
datos = pd.read_csv('data/alquiler.csv', sep=';', header=0)
datos.head(10)

residencial =['Habitación','Casa',' Departamento','Casa en condominio','Casa comercial','Casa de villa']

seleccion=datos['Tipo'].isin(residencial)#consulta a la base de datos de la columna tipo si los valores que estan en residencial hay coincidencias

datos_residencial1 = datos[seleccion]##muestra todos los datos filtrados pero sin orden en el indice

datos_residencial1.index=range(datos_residencial1.shape[0])##muestra todos los datos filtrados pero con orden secuencial en el indice

# print(datos_residencial1)

datos_residencial1.to_csv('alquiler_residencial_sinIndices.csv',sep=";",index=False)#crea un archivo CSV EXPORTANDO el trabajo de limpieza de la BD

datos_residencial2 = pd.read_csv('alquiler_residencial_conIndices.csv', sep=';', header=0)
print(datos_residencial2)#muestra datos con los indices
print(datos_residencial1)#muestra datos sin los indices