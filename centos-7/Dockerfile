FROM centos:7

VOLUME ["/exports"]
EXPOSE 111/udp 2049/tcp

ENTRYPOINT ["/nfs_setup.sh"]

RUN rpmkeys --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 && \
    yum -y --setopt=tsflags=nodocs install nfs-utils && \
    yum clean all
COPY nfs_setup.sh /
