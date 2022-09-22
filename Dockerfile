FROM almalinux:latest

RUN dnf upgrade --refresh -y && dnf install nano openssh-clients openssl python39 python39-pip -y

RUN pip3 install --upgrade pip setuptools pyopenssl

RUN pip3 install --upgrade ansible ansible-lint

VOLUME /ansible

COPY configure.sh /run

RUN chmod +x /run/configure.sh

ENTRYPOINT ["/bin/bash", "/run/configure.sh"]
