echo Empieza el clonado
directori_saspacks=/volume1/docker/folderclone/sas_packs;
docker run -it --rm -v $directori_saspacks/$1_config:/config_fc xeviff/folderclone -s $2 -d $3;