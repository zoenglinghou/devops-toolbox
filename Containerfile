FROM registry.fedoraproject.org/fedora-toolbox:38

RUN dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
RUN dnf install -y ansible git nodejs python3-netaddr python3-pip terraform

RUN pip3 install hcloud

RUN npm install -g @bitwarden/cli
