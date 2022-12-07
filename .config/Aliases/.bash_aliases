# Alias pour permettre sudo [un_alias]
alias sudo='sudo '

# Alias appCO.sh
alias appCO='~/.config/i3/appCO.sh'
# Alias pour raccourci Desktop
alias d='cd ~/Desktop'

# Alias pour nvim
alias nvim='gnome-terminal -- nvim'
# Alias pour Mysql
alias msql='sudo mysql -uroot -p'
# Alias pour Serveur Apache
alias apacheserv='sudo service apache2'
# Alias pour LibreOffice
alias lo='appCO $$ libreoffice'

# Alias pour Intellij-Community
alias intellij='appCO $$ intellij-idea-community'
alias intellijU='appCO $$ intellij-idea-ultimate'
# Alias pour PHP Storm
alias phpstorm='appCO $$ phpstorm'
# Alias pour Visual Studio Code
alias vscode='appCO $$ code'
# Alias pour SGBD
alias sqldev='appCO $$ /app/SGBD/sqldeveloper/sqldeveloper.sh'

# Alias pour Mozilla Firefox
alias ffox='appCO $$ firefox'
alias wheut='appCO $$ firefox https://matias.ma/nsfw/'

# Alias pour lecteur audio / vidéo
alias vlc='appCO $$ vlc'
# Alias pour lecteur image
alias eye='appCO $$ eog'
# Alias pour Lecteur pdf
alias pdf='appCO $$ evince'
# Alias pour flameshot
alias fshot='flameshot'
# Alias pipette
alias pip='kcolorchooser'

# Alias pour logiciel Windows
alias exe='appCO $$ wine'
# Alias pour Looping
alias looping='appCO $$ exe /app/Looping/Looping.exe'

# Alias disk
alias mount_DD='sudo mount -o rw,uid=1000,gid=1000,user,exec,umask=003 /dev/sda1 /home/samuel/DD-SAM-1T'
alias umount_DD='sudo umount /dev/sda1'
