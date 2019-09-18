FROM amazonlinux:2

RUN yum install -y tar gzip jq && amazon-linux-extras install vim \
 && curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py --user \
 && echo 'export PATH=~/.local/bin:$PATH' >> ~/.bashrc && source ~/.bashrc \
 && pip install awscli --upgrade --user \
 && curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp \
 && mv /tmp/eksctl /usr/local/bin \
 && curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
 && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl

