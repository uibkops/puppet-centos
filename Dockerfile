FROM centos:centos6
MAINTAINER Gregor Schwab <gregor.schwab@uibk.ac.at>

ENV PUPPET_VERSION 3.8.7

RUN rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs && \
    rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm

RUN yum install yum-utils -y && \
    yum-config-manager --enable centosplus >& /dev/null && \
    yum clean all
    
RUN yum install -y puppet-$PUPPET_VERSION \
    && yum clean all
