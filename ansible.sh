#!/bin/bash

# --------------------------------------
# Ansible Installation Script for Ubuntu
# --------------------------------------

set -e

echo "=========================================="
echo "🚀 Starting Ansible Installation on Ubuntu"
echo "=========================================="

# Step 1: Update system
echo "🔄 Updating system packages..."
sudo apt update -y && sudo apt upgrade -y

# Step 2: Install dependencies
echo "📦 Installing dependencies..."
sudo apt install -y software-properties-common python3 python3-pip

# Step 3: Add Ansible official PPA
echo "➕ Adding Ansible PPA repository..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Step 4: Install Ansible
echo "⚙️ Installing Ansible..."
sudo apt install -y ansible

# Step 5: Verify installation
echo "✅ Verifying Ansible installation..."
ansible --version

# Step 6: Create default Ansible directories if not present
echo "📁 Setting up /etc/ansible directory..."
sudo mkdir -p /etc/ansible
cd /etc/ansible
