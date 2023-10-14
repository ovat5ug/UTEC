## pip install pandas (instalas la libreria de "pandas")
## pip -1 pandas (instalas la libreria de "pandas")
## pip install openpyxl (instala libreria de compatibilidad para excel)
## pip install lxml (instala libreria de compatibilidad para leer paginas webs)
## REPORTE DE ANALISIS
import pandas as pd
##-------------------------------------------------------------------------------------------------------------
CSV='data/alquiler.csv'
datos1 = pd.read_csv(CSV, sep=';', header=0)##read_csv este metodo lee archivos csv

JSON='extra/datos/alquiler.json'
datos2 = pd.read_json(JSON)##read_json este metodo lee archivos json
FJSON = open('extra/datos/alquiler.json')

TXT='extra/datos/alquiler.txt'
datos3 = pd.read_table(TXT)##read_table este metodo lee archivos txt
FTXT = open('extra/datos/alquiler.txt')

EXCEL='extra/datos/alquiler.xlsx'
datos4 = pd.read_excel(EXCEL)##read_excel este metodo lee archivos excel

HTML1='extra/datos/datos_html_1.html'
datos5 = pd.read_html(HTML1)##read_excel este metodo lee archivos de informacion de pagina web
transformar1=datos5[0]

HTML2='extra/datos/datos_html_2.html'
datos6 = pd.read_html(HTML2)##read_excel este metodo lee archivos de informacion de pagina web
transformar2=datos6[0]
##-------------------------------------------------------------------------------------------------------------
print(FTXT.read())##muestra la estructura tal cual de txt
print()##salto de linea
print(FJSON.read())##muestra la estructura tal cual de json
print()##salto de linea
##-------------------------------------------------------------------------------------------------------------
print(datos1)##lee archivos csv
print(datos2)##lee archivos json
print(datos3)##lee archivos txt
print(datos4)##lee archivos excel
print(transformar1)##lee archivos pagina web
print(len(transformar2))##devuelve el tamaño del archivos pagina web
