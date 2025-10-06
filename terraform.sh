#!/bin/bash
set -e

echo "🔍 Updating system packages..."
sudo apt-get update -y

echo "📦 Installing required dependencies..."
sudo apt-get install -y wget unzip curl

echo "🌍 Fetching latest Terraform version..."
LATEST_VERSION=1.13.3

echo "⬇️ Downloading Terraform v${LATEST_VERSION}..."
wget https://releases.hashicorp.com/terraform/${LATEST_VERSION}/terraform_${LATEST_VERSION}_linux_amd64.zip

echo "📂 Unzipping Terraform binary..."
unzip terraform_${LATEST_VERSION}_linux_amd64.zip

echo "🚀 Moving Terraform binary to /usr/local/bin..."
sudo mv terraform /usr/local/bin/

echo "🧹 Cleaning up..."
rm terraform_${LATEST_VERSION}_linux_amd64.zip

echo "✅ Verifying installation..."
terraform -version

echo "🎉 Terraform v${LATEST_VERSION} has been installed successfully!"
