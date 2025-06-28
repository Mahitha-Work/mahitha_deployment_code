#installing java and maven
sudo apt update -y
sudo apt install openjdk-21-jdk -y
sudo apt install maven -y
#installing jenkins
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y

#installing docker
sudo apt install docker.io -y

#starting jenkins and docker
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl start docker
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
