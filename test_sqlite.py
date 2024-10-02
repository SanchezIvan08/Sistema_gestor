import sqlite3

# Conectar a una base de datos en memoria (esto es solo para pruebas)
conn = sqlite3.connect(':memory:')
print("Conexión exitosa a la base de datos SQLite")

# Crear un cursor y ejecutar una simple consulta
cursor = conn.cursor()
cursor.execute("CREATE TABLE IF NOT EXISTS prueba (id INTEGER PRIMARY KEY, nombre TEXT)")
cursor.execute("INSERT INTO prueba (nombre) VALUES ('Prueba')")
conn.commit()

# Verificar que los datos se insertaron correctamente
cursor.execute("SELECT * FROM prueba")
print(cursor.fetchall())

# Cerrar la conexión
conn.close()
print("Prueba de SQLite completada.")
