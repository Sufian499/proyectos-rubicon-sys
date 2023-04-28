### monitor.yml
Playbook de ansible que se ejecutaría a cada rato verificando si el proceso esta levantado o no.
Modificar las rutas `/home/user/velneo/Velneo-vServer/vServer.sh` (script que ejecuta vServer), `/opt/contador/datos.txt` (archivo con la fecha, hora y contador) `/opt/contador/updateCount.sh` (script que aumenta el contador si vServer esta caido) y `/opt/contador/` (ruta de la carpeta donde esta datos.txt)

### generarContador.sh
Archivo para crear el archivo datos.txt que guarde la fecha, hora y contador que cuente las veces que se ha caído.
Modificar ruta: `/opt/contador/datos.txt`
Puede ser usado para hacer tarea cron y reiniciar el contador a 0 cada vez.

### updateCount.sh
Este script compara la fecha y hora actual con la registrada en el archivo datos.txt, si hay una diferencia de 1 hora no hace nada y actualiza la fecha y hora, si no hay diferencia de 1 hora actualiza el contador.
Cambiar ruta `/opt/contador/datos.txt` donde tengas ubicado el archivo. 

