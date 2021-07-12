# https://docs.jottacloud.com/en/articles/1436855-jottacloud-cli-for-linux-debian-packages
FROM ubuntu
COPY provision.sh /tmp/provision.sh
RUN bash /tmp/provision.sh
CMD [ "jottad", "stdoutlog" ]