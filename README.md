Sistema Gestor de Activos: Soluciones Integrales para la Gestión de Recursos Informáticos

Descripción del Proyecto

El Sistema Gestor de Activos es una aplicación diseñada para facilitar la gestión de colaboradores y sus recursos tecnológicos en una organización. Permite registrar y rastrear los equipos IT y dispositivos de seguridad (como YubiKeys) asignados a cada colaborador, así como mantener un historial detallado de las asignaciones y devoluciones.

El objetivo principal del sistema es optimizar la gestión de activos, asegurando un control eficiente sobre el inventario y garantizando que los dispositivos se asignen y devuelvan correctamente.

Funcionalidades clave:

•	Gestión de colaboradores, incluyendo su información y asignación de equipos IT y YubiKeys.

•	Historial de asignación y devolución de equipos.

•	Generación de documentos en PDF para registrar la asignación y devolución de equipos.

•	Inventario de equipos y YubiKeys con vista separada para dispositivos disponibles y asignados.

Tecnologías Utilizadas

Este proyecto está desarrollado utilizando las siguientes tecnologías:

•	Python: Lenguaje de programación principal para la lógica del sistema.

•	SQLite: Base de datos ligera para almacenar información de los colaboradores, equipos y YubiKeys.

•	Tkinter: Biblioteca de Python para la creación de interfaces gráficas de usuario (GUI).

•	ReportLab: Utilizada para la generación de documentos PDF que registran asignaciones y devoluciones.

•	Git: Sistema de control de versiones utilizado para gestionar el código.

•	GitHub: Plataforma donde se aloja el repositorio del proyecto.

Configuración del Entorno de Desarrollo

Para configurar el entorno de desarrollo y ejecutar este proyecto localmente, sigue los pasos a continuación:

1.	Clonar el repositorio:

git clone https://github.com/SanchezIvan08/Sistema_gestor.git
cd Sistema_gestor

2.	Crear un entorno virtual

Para evitar conflictos entre dependencias, se recomienda crear un entorno virtual antes de instalar las dependencias.

1.	En Windows:

python -m venv venv
venv\Scripts\activate

2.	En macOS/Linux:

python3 -m venv venv
source venv/bin/actívate

3. Instalar las dependencias

Una vez activado el entorno virtual, instala las dependencias que se encuentran listadas en el archivo requirements.txt:
pip install -r requirements.txt

4. Configurar la base de datos

El archivo de base de datos bd_resguardos.db ya está configurado y se encuentra en la carpeta database. Si necesitas generar la estructura de la base de datos desde cero, puedes usar el archivo schema en la misma carpeta para reconstruirla.

Para cargar el esquema de la base de datos, puedes hacerlo manualmente con DB Browser for SQLite o mediante un script si es necesario.

Cómo Ejecutar el Proyecto

1.	Asegúrate de que tu entorno virtual esté activado.

2.	Para ejecutar la aplicación, simplemente ejecuta el archivo principal del proyecto (por ejemplo, un archivo llamado main.py, si es que lo has establecido como tal):

python main.py

Contribuir al Proyecto

Si deseas contribuir al proyecto, sigue estos pasos:

1.	Haz un fork del repositorio.

2.	Crea una nueva rama (feature branch) para tu contribución:

git checkout -b mi-nueva-funcionalidad

3.	Realiza los cambios necesarios y haz commit

git commit -m "Añadir nueva funcionalidad"

4.	Haz push a tu rama.

git push origin mi-nueva-funcionalidad

5.	Abre un pull request en el repositorio original para que revisemos tus cambios.

Contacto

Si tienes preguntas o problemas, no dudes en ponerte en contacto con el administrador del proyecto.
