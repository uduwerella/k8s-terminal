FROM ubuntu:latest
RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime
RUN apt-get update && apt-get install -y mysql-client vim iputils-ping curl telnet dnsutils python3-pip go-bindata libseccomp-dev uidmap golang runc make git
RUN pip install awscli
RUN git clone https://github.com/genuinetools/img && cd img && make && make install && cp img /usr/local/bin/.
CMD ["sh", "-c", "tail -f /dev/null"]
