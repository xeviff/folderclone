# folderclone

Conjunto de utilidades basadas en multifolderclone pensadas para ejecutar clonados de carpetas o Team Drives enteros de una forma muy simple por lo que respecta a los comandos y sus parámetros. Utiliza dockers, en concreto se crean y se destruyen al momento. Después de tener la estructura de carpetas correcta y generar una imagen por cada cuenta que quieras utilizar, sólo hay que ejecutar un comando sencillisimo con 3 parámetros: nombre de la cuenta, orígen y destino.

Requerimientos: Si no tienes ya tus accounts creados, hay que haber generado primero los accounts que se utilizarán, por ejemplo con fcmanager (el otro poyecto que he creado para complementar a éste). Con esta carpeta que contendrá credenciales+token+accounts, copiándola a la raíz de éste proyecto (con el formato {nombrecuenta}_config) habrá que generar una imagen Docker de esta cuenta (de forma muy sencilla y explicada en el readme.txt). También como comentaba hay que tener la estructura de carpetas siguiente:

/volume1/docker/folderclone/git_repo/folderclone/{nombrecuenta}_config ---> (1 o varias) Carpeta/s de cuentas con su credentials.json, token.json y carpeta accounts. Se utilizan para meter esta información dentro de la imágen Docker (después de generar la imágen, ya puedes borrar esta carpeta ;-D )

/volume1/docker/folderclone/git_repo/folderclone/ ---> Aquí deberás alojar el código del proyecto descargado de GIT. Contiene el script build.sh para generar la imagen Docker de la cuenta que quieras y run.sh que ejecutará el clonado
