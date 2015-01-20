FROM olavgg/docker-debian-jessie

#ADD xca-1.1.0.tar.gz /root/

RUN apt-get update && apt-get upgrade -y && apt-get install -y build-essential openssh-client openssl libssl-dev pkg-config qt4-dev-tools libltdl-dev linuxdoc-tools groff wget \
  && wget -nd -O xca-1.1.0.tar.gz http://sourceforge.net/projects/xca/files/xca/1.1.0/xca-1.1.0.tar.gz/download \
 && cd /root/ && tar xzvf xca-1.1.0.tar.gz && cd xca-1.1.0 && ./configure && make \
 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

