FROM setzero/folderclone
ENV internal_dir=/config_fc
WORKDIR $internal_dir
ENTRYPOINT ["multifolderclone"]