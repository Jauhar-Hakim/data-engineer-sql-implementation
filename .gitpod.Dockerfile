FROM gitpod/workspace-base:latest

## Install Kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
   chmod +x ./kubectl && \
   sudo mv ./kubectl /usr/local/bin/kubectl && \
   mkdir ~/.kube

## Install Helm
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && \
    chmod 700 get_helm.sh && \
    ./get_helm.sh

# Add aliases
RUN echo 'alias k="kubectl"' >> /home/gitpod/.bashrc
