FROM centos:centos7
MAINTAINER Gregor Schwab <gregor.schwab@uibk.ac.at>

RUN rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs && \
    rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm

RUN yum update -y && yum install yum-utils -y && \
    yum-config-manager --enable centosplus >& /dev/null && \
    yum clean all
    
RUN yum install -y puppet \
    && yum clean all && uname -a && cat /etc/redhat-release && puppet --version
