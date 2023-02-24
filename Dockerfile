FROM ubuntu:20.04
EXPOSE 690
COPY velneo-lin64-vserver-setup-31.1.3.d249d02c.tar.gz velneo-lin64-vserver-setup-31.1.3.d249d02c.tar.gz
RUN apt-get update && apt-get install -y \
    libglib2.0-0 \
    libgssapi-krb5-2 \
    libglu1-mesa-dev \
    libpulse-mainloop-glib0 && \
    rm -rf /var/lib/apt/lists/* && \
    tar -zxf velneo-lin64-vserver-setup-31.1.3.d249d02c.tar.gz && rm velneo-lin64-vserver-setup-31.1.3.d249d02c.tar.gz
CMD nohup /Velneo-vServer/vServer.sh & sleep infinity

