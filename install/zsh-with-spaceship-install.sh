#!/bin/bash
#install zsh
echo "Start zsh install..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Successfully installed!"
zsh --version

#install spaceship
echo "Start spaceship setup..."
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
zshrc=~/.zshrc
zshtheme="spaceship"
zshplugin=(git jenv spring ng node npm mvn docker gcloud)
sed "s/^ZSH_THEME=.*/ZSH_THEME=${zshtheme}/" $zshrc
sed "s/^plugins=.*/plugins=${zshplugin}/" $zshrc
echo SPACESHIP_USER_SHOW=always \
SPACESHIP_PROMPT_ADD_NEWLINE=false \
SPACESHIP_CHAR_SYMBOL="❯" \
SPACESHIP_CHAR_SUFFIX=" " \ 
SPACESHIP_GCLOUD_SHOW=false >> $zshrc
echo "Spaceship config completed!"
echo "script finished."

