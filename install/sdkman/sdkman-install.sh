#Install SDKMan

#Install necessary packages 
sudo apt install unzip
sudo apt install zip

#Download and run in zsh
curl -s "https://get.sdkman.io" | zsh
sudo su
source /root/.sdkman/bin/sdkman-init.sh
source $HOME/.sdkman/bin/sdkman-init.sh
exit
sdk version
