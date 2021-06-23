#!/bin/bash
#checking if NerdFont is installed
echo "Nerd Font installed ?"
read -p 'y/n' answer
if ["$answer" -eq "n"]
then
#Installs nerdfonts
echo "Installing NerdFont FiraCode"
mkdir ~/.fontstmp123456789 && cd ~/.fontstmp123456789
curl -L -O https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip
mv *.ttf *.otf /usr/share/fonts/
fc-cache -f
sleep 5
echo "Deleting temporary directory"
rm -r ~/.fontstmp123456789
echo "NerdFont FiraCode installation complete"
elif ["$answer" -eq "y"]
then
echo "Continuing installation..."
else
exit
fi

#installing starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
sed -i -e'$aeval \"$(starship init zsh)\"' ~/.zshrc

exit
