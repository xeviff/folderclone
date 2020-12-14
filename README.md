# folderclone

Conjunto de utilidades basadas en multifolderclone pensadas para ejecutar clonados de carpetas o Team Drives enteros de una forma muy simple por lo que respecta a los comandos y sus parámetros. Utiliza dockers, en concreto se crean y se destruyen al momento. Después de tener la estructura de carpetas correcta y tener los accounts listos, sólo hay que ejecutar un comando sencillisimo con 3 parámetros: nombre de la cuenta, orígen y destino.

Requerimientos: Haber generado primero los accounts que se utilizarán, por ejemplo con fcmanager (el otro poyecto que he creado para complementar a éste). También como comentaba hay que tener la estructura de carpetas siguiente:

/volume1/docker/folderclone/sas_packs/{nombrecuenta}_config ---> Carpeta de cuenta, con su credentials.json, token.json y carpeta accounts. Contiene los SAS de una cuenta. Puedes utilizar tantas cuentas como quieras.

/volume1/docker/folderclone/git_repo/folderclone/ ---> Aquí deberás alojar el código del proyecto descargado de GIT. Contiene el script run.sh que ejecutará el clonado.
