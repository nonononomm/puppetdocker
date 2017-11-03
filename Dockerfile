FROM centos:7
RUN rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
RUN yum -y install puppetserver-2.7.2
RUN adduser -g puppet puppet
RUN /opt/puppetlabs/bin/puppet module install saz-sudo
CMD while true; do sleep 1000; done
