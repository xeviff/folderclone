docker build -t xeviff/folderclone:$1 --build-arg external_dir=$1_config .;
rm -r $1_config;