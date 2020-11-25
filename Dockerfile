FROM setzero/folderclone
ENV internal_dir=/config_fc
ARG external_dir
ADD $external_dir $internal_dir
WORKDIR $internal_dir
VOLUME ["/config_fc"]
ENTRYPOINT ["multifolderclone"]