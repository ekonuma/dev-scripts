#Install Docker
#Update package
echo "\n***Packaged update ***\n"
sudo apt-get update

#Install dependecies
echo "\nDependencies install\n"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

#Add official GPG Key
echo "\nAdd Docker Official GPG Keys\n"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Install docker
echo "\nInstall docker\n"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo service docker start
sudo docker run hello-world

echo "\nScript finished."
