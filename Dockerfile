FROM centos:7

# Configure apt to use the grid proxy so it can reach the interwebz
ENV http_proxy "http://10.0.2.20:3128"

# Install the Official PostgreSQL repository
RUN yum install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-centos96-9.6-3.noarch.rpm -y

#Install the build dependencies
RUN yum update -y && \
  yum install \
    postgresql96-server \
    postgresql96-libs \
    postgresql96-devel \
    curl-devel \
    make \
    gcc \
    rpmdevtools \
    yum-utils \
    -y && \
  yum clean all
