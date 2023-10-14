import pandas as pd
# read_csv este metodo lee archivos csv
datos = pd.read_csv('data/alquiler.csv', sep=';', header=0)
datos.head(10)
resultados=list(datos['Tipo'].drop_duplicates())#TypeError: 'method' object is not iterable "NO OLVIDAR PARENTECIS DEL METODO dXD"
# ['Habitaci�n', 'Casa', 'Local comercial', 'Departamento', 'Casa en condominio', 'Edificio completo', 'Flat', 'Tienda/Sal�n', 
# 'Almac�n', 'Casa comercial', 'Casa de villa', 'Terreno', 'Cochera', 'Loft', 'Tienda en Centro Comercial', 'Chacra', 
# 'Terreno em condominio', 'Oficina', 'Chalet', 'Studio', 'Hotel', 'Local industrial']

residencial =['Habitación','Casa',' Departamento','Casa en condominio','Casa comercial','Casa de villa']

print(residencial)
print("\n")
print(datos.head(10))

seleccion=datos['Tipo'].isin(residencial)#consulta a la base de datos de la columna tipo si los valores que estan en residencial hay coincidencias
print("\n")
print(seleccion)

datos_residencial = datos[seleccion]##muestra todos los datos filtrados pero sin orden en el indice
print(datos_residencial)

print(datos_residencial.shape[0])##cantidad de registros (3313)

datos_residencial.index=range(datos_residencial.shape[0])##muestra todos los datos filtrados pero con orden secuencial en el indice

print(datos_residencial)

