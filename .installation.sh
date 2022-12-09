#bin/bash

sudo apt update
sudo apt upgrade
sudo chmod 755 -R Desktop
sudo apt install git
cd ~
echo "Enter Github address mail : "
read GitMail
echo "Enter Github name : "
read GitName

echo "Press only Enter"
ssh-keygen -t ed25519 -C "$GitMail"
eval "$"(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519

echo "Go to Github -> Settings -> SSH and GPG keys
-> [Past the key] -> Add SSH key :"
sudo cat ~/.ssh/id_ed25519.pub
read nothing

sudo apt install vim lua5.4 packer zsh flameshot libreoffice vlc curl apache2 python2 python3-neovim python3.10-venv pulseaudio xbacklight gcc g++ openjdk-18-jdk mysql-server mysql-client mysql-common nodejs screen npm
sudo snap install nvim --classic

#Dotnet
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sudo apt-get install -y dotnet-sdk-7.0
sudo apt-get install -y aspnetcore-runtime-7.0

#LinuxBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
sudo chsh -s /bin/zsh

sudo snap install discord
sudo snap install intellij-idea-community --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install phpstorm --classic

#Keyboard/Mouse
sudo mkdir -p /etc/X11/xorg.conf.d
sudo touch /etc/X11/xorg.conf.d/90-touchpad.conf
sudo chmod 777 /etc/X11/xorg.conf.d/90-touchpad.conf
sudo echo 'Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection' >> /etc/X11/xorg.conf.d/90-touchpad.conf
sudo chmod 755 /etc/X11/xorg.conf.d/90-touchpad.conf


sudo apt autoremove

git config --global user.mail "$GitMail"
git config --global user.name "$GitName"
cd ~
git clone git@github.com:SamDWRay/LinuxConfig.git
mv -t ~/.config ~/LinuxConfig/.config/*
mv ~/LinuxConfig/.zshrc ~
rm -rf ~/LinuxConfig
