FROM registry.fedoraproject.org/fedora-toolbox:38

RUN dnf install -y ansible git nodejs python3-netaddr python3-pip

RUN pip3 install hcloud

RUN npm install -g @bitwarden/cli
