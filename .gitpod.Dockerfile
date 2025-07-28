FROM gitpod/workspace-full

# Install AWS CLI v2, Node.js (for CDK), Python, and Terraform
RUN sudo apt-get update && sudo apt-get install -y \
    unzip \
    curl \
    python3-pip \
    zip \
    less \
    groff \
    jq \
    software-properties-common \
    gnupg2 \
    lsb-release

# Install Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list && \
    sudo apt update && sudo apt install -y terraform

# Install AWS CLI v2 (already included in .gitpod.yml but keeping here too for Docker build)
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo ./aws/install
RUN code --install-extension .gitpod/extensions/redhat.vscode-yaml.vsix

