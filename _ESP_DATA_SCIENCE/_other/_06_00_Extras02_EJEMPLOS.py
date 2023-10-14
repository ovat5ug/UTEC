import pandas as pd
alumnos = pd.DataFrame({
'Nombre': ['Ary', 'Katia', 'Denis', 'Beto', 'Bruna', 'Dara', 'Carlos', 'Alice'], 
'Sexo': ['M', 'F', 'M', 'M', 'F', 'F', 'M', 'F'], 
'Edad': [15, 27, 56, 32, 42, 21, 19, 35], 
'Notas': [7.5, 2.5, 5.0, 10, 8.2, 7, 6, 5.6], 
'Aprobado': [True, False, False, True, True, True, False, False]},
columns = ['Nombre', 'Edad', 'Sexo', 'Notas', 'Aprobado'])
print(alumnos,"\n")

print("Cree un DataFrame sólo con los estudiantes aprobados.")
seleccion = alumnos['Aprobado'] == True
aprobados = alumnos[seleccion]
print(aprobados,"\n")

print("Cree un DataFrame sólo con las estudiantes aprobadas.")

seleccion = (alumnos.Aprobado == True) & (alumnos.Sexo == 'F')
aprobados = alumnos[seleccion]
print(aprobados,"\n")

print("Cree sólo una visualización de los alumnos con edades entre 10 a 20 años o con edad mayor/igual a 40 años.")
seleccion = (alumnos.Edad > 10) & (alumnos.Edad < 20) | (alumnos.Edad >= 40)
grupos_edad = alumnos[seleccion]
print(grupos_edad,"\n")

seleccion = (alumnos.Edad > 10) & (alumnos.Edad < 20) | (alumnos.Edad >= 40)
alumnos[seleccion]
