FROM 5003/systemd
RUN yum clean all && \
    yum --assumeyes install epel-release && \
    yum --assumeyes install sudo \
                            PyYAML \
                            python-httplib2 \
                            python-jinja2 \
                            python-keyczar \
                            python-paramiko \
                            python-setuptools \
                            python-pip \
                            make \
                            git && \
    yum clean all
RUN sed --in-place '/Defaults\s*requiretty/d' /etc/sudoers