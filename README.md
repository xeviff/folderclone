# folderclone

Conjunto de utilidades basadas en multifolderclone pensadas para ejecutar clonados de carpetas o Team Drives enteros de una forma muy simple por lo que respecta a los comandos y sus parámetros. Utiliza dockers, en concreto se crean y se destruyen al momento. Después de tener la estructura de carpetas correcta y generar una imagen por cada cuenta que quieras utilizar, sólo hay que ejecutar un comando sencillisimo con 3 parámetros: nombre de la cuenta, orígen y destino.

Requerimientos: Si no tienes ya tus accounts creados, hay que haber generado primero con fcmanager (el otro poyecto de este Set) los accounts que se utilizarán. Con esta carpeta que contendrá credenciales+token+accounts, copiándola a la raíz de éste proyecto habrá que generar una imagen Docker de esta cuenta (de forma muy sencilla y explicada en el readme.txt). También como comentaba hay que tener la estructura de carpetas siguiente:

/volume1/docker/folderclone/git_repo --> Directorio raíz donde alojarás las carpetas de los dos proyectos (fcmanager y folderclone)

/volume1/docker/folderclone/sas_packs ---> Aquí, después de haber ejecutado correctamente los comandos del proyecto fcmanager tendrás en la carpeta de la cuenta que has seleccionado, todos los accounts+keys (sas). Deberás copiarlo a la siguiente carpeta: /volume1/docker/folderclone/git_repo/folderclone/{nombrecuenta}_config (después de generar la imágen, ya puedes borrar esta carpeta ;-D y así solo te quedas con la de que está en sas_packs, ya que la otra se quedará dentro de la imagen Docker, para siempre)

/volume1/docker/folderclone/git_repo/folderclone/ ---> Aquí deberás alojar el código del proyecto descargado de GIT. Contiene el script build.sh para generar la imagen Docker de la cuenta que quieras y run.sh que ejecutará el clonado
