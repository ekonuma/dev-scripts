#Install dependencies
sudo apt install git

#Instaill ZSH
echo "*** Start Zsh install... ***\n"
sudo apt install zsh
zsh --version

#Install Oh-My-ZSH
echo "\n*** Start Oh My Zsh install... ***\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install Spaceship theme
echo "\n*** Start spaceship setup... ***\n"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

#Setting preferences
sed -i "s/^ZSH_THEME=.*/ZSH_THEME=spaceship/" ~/.zshrc
sed -i "s/^plugins=.*/plugins=(git jenv spring ng node npm mvn docker gcloud)/" ~/.zshrc
echo SPACESHIP_USER_SHOW=always >> ~/.zshrc
echo SPACESHIP_PROMPT_ADD_NEWLINE=false >> ~/.zshrc
echo SPACESHIP_CHAR_SYMBOL="❯" >> ~/.zshrc
echo SPACESHIP_CHAR_SUFFIX=" " >> ~/.zshrc
echo SPACESHIP_GCLOUD_SHOW=false >> ~/.zshrc

echo "\n*** script finished. ***"
