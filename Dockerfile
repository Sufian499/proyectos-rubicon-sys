FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    libglib2.0-0 \
    libgssapi-krb5-2 \
    libglu1-mesa-dev \
    libpulse-mainloop-glib0
COPY velneo-lin64-vserver-setup-31.1.3.d249d02c.tar.gz velneo-lin64-vserver-setup-31.1.3.d249d02>
RUN tar -zxf velneo-lin64-vserver-setup-31.1.3.d249d02c.tar.gz
EXPOSE 690
RUN Velneo-vServer/vServer.sh
