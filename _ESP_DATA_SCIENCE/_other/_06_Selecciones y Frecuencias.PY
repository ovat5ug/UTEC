import pandas as pd
# read_csv este metodo lee archivos csv
datos = pd.read_csv('alquiler_residencial_sinIndices.csv', sep=';', header=0)
dat0s=datos.head(10)
print(dat0s)
# el cliente recibio el documento 'alquiler_residencial_sinIndices.csv' y pregunta lo siguiente
# Seleccione solamente los inmuebles clasificados con tipo 'Habitación'
# Seleccione los inmuebles clasificados con tipos 'Casa', 'Casa en condominio' y 'Casa de villa'
# Seleccione los inmuebles con área entre 60 y 100 metros cuadrados, incluyendo los limites
# Seleccione los inmuebles que tengan por lo menos 4 cuartos y alquiler menor que $2,000.00

print("Seleccione solamente los inmuebles clasificados con tipo 'Habitación'")
seleccion=datos['Tipo'] == 'Habitación'
# nDepto=datos[seleccion]#carga la coincidencias de 'Habitación' sobre la BD cargada
nDepto1=datos[seleccion].shape[0]#muestra las filas coincidentes en 'Habitación' sobre la BD cargada
# print(seleccion)              #836 registros o coincidencias
print(nDepto1,"\n")
print("Seleccione los inmuebles clasificados con tipos 'Casa', 'Casa en condominio' y 'Casa de villa'")
seleccion=(datos['Tipo'] == 'Casa')|(datos['Tipo'] == 'Casa en condominio')|(datos['Tipo'] == 'Casa de villa')
nDepto2=datos[seleccion].shape[0]
print(nDepto2,"\n")
print("Seleccione los inmuebles con área entre 60 y 100 metros cuadrados, incluyendo los limites")
seleccion=(datos['Area'] >= 60)&(datos['Area'] <= 100)
nDepto3=datos[seleccion].shape[0]
print(nDepto3,"\n")
print("Seleccione los inmuebles que tengan por lo menos 4 cuartos y alquiler menor que $2,000.00")
seleccion=(datos['Cuartos'] >= 4)&(datos['Valor'] < 2000.00)
nDepto4=datos[seleccion].shape[0]
print(nDepto4,"\n")
