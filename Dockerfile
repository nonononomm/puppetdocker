FROM centos:7
RUN rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
RUN yum -y install puppetserver
RUN adduser -g puppet puppet
CMD while true; do sleep 1000; done
