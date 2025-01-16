FROM ubuntu:24.10

ENV HTTP_PROXY=http://proxy.codepulse.cn:10809
ENV HTTPS_PROXY=http://proxy.codepulse.cn:10809

COPY ./s3csi /home/csi/
COPY ./mount-s3.deb /tmp/
RUN apt-get update && apt-get install -y /tmp/mount-s3.deb && apt-get install -y fuse3
COPY ./rclone.conf /home/csi/
COPY ./rclone /usr/bin/
RUN chmod 755 /usr/bin/rclone
RUN apt install -y s3fs

WORKDIR /home/csi/

ENV HTTP_PROXY=""
ENV HTTPS_PROXY=""

ENTRYPOINT ["/home/csi/s3csi"]