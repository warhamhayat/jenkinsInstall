#update system
sudo apt update

#install Java
sudo apt install openjdk-11-jre

echo "validate installation"
java -version

#install Jenkins
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

#updatepackage
sudo apt-get update

sudo apt-get install jenkins -y

#startJenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
