# Alias pour permettre sudo [un_alias]
alias sudo='sudo '

# Alias pour nvim
alias nvim='gnome-terminal -- nvim '

# Alias pour raccourci Desktop
alias d='cd /home/samuel/Desktop'

# Aliases pour Serveur Apache
alias apacheserv='sudo service apache2'

# Aliases pour Intellij-Community
alias intellij='~/.config/i3/appCO.sh $$ intellij-idea-community'
alias intellijU='~/.config/i3/appCO.sh $$ /app/JetBrains/idea-IU-222.4167.29/bin/idea.sh'
# Aliases pour PHP Storm
alias phpstorm='~/.config/i3/appCO.sh $$ /app/JetBrains/PhpStorm-222.4167.33/bin/phpstorm.sh'
#Aliases pour Visual Studio Code
alias vscode='~/.config/i3/appCO.sh $$ code'

#Aliases pour SGBD
alias sqldev="~/.config/i3/appCO.sh $$ /app/SGBD/sqldeveloper/sqldeveloper.sh"

#Aliases pour Mozilla Firefox
alias ffox='~/.config/i3/appCO.sh $$ firefox'
alias mail='ffox https://outlook.live.com/mail/0/'
alias upjv='ffox https://www.u-picardie.fr/ent/dashboard'
alias webmail='ffox https://webmail.etud.u-picardie.fr/imp/dynamic.php\?page\=mailbox'
alias moodle='ffox https://pedag.u-picardie.fr/moodle/upjv/my/index.php'
alias github='ffox https://github.com/SamDWRay?tab=repositories'
alias gdrive='ffox https://drive.google.com/drive/my-drive'
alias wordref='ffox https://www.wordreference.com/fr/'
alias ytb='ffox https://www.youtube.com'
alias ytbmusic='ffox https://music.youtube.com/'
alias wheut='ffox https://matias.ma/nsfw/'

#Aliases pour lecteur audio / vidéo
alias vlc='~/.config/i3/appCO.sh $$ vlc'
#Aliases pour lecteur image
alias eye='~/.config/i3/appCO.sh $$ eog'
#Aliases pour Lecteur pdf
alias pdf='~/.config/i3/appCO.sh $$ evince'
#Aliases pour flameshot
alias fshot='flameshot'

#Aliases pour LibreOffice
alias lo='~/.config/i3/appCO.sh $$ libreoffice'

#Aliases pour logiciel Windows
alias exe='~/.config/i3/appCO.sh $$ wine'
#Aliases pour Looping
alias looping='~/.config/i3/appCO.sh $$ exe /app/Looping/Looping.exe'

#Aliases disk
alias mount_DD='sudo mount -o rw,uid=1000,gid=1000,user,exec,umask=003 /dev/sda1 /home/samuel/DD-SAM-1T'
alias umount_DD='sudo umount /dev/sda1'
