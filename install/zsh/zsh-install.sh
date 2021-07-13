#Install dependencies
sudo apt install git

#Instaill ZSH
echo "*** Start Zsh install... ***\n"
sudo apt install zsh
curl -O https://raw.githubusercontent.com/kima-dev/dev-scripts/main/install/zsh/.zshrc --output ~/
zsh --version

#Install Oh-My-ZSH
echo "\n*** Start Oh My Zsh install... ***\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
