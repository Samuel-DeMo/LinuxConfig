# Alias pour permettre sudo [un_alias]
alias sudo='sudo '

# Aliases pour Serveur Apache
alias apacheserv='sudo service apache2'

# Aliases pour Intellij-Community
alias intellij='gnome-terminal & screen intellij-idea-community '
alias intellijU='gnome-terminal & screen /app/JetBrains/idea-IU-222.4167.29/bin/idea.sh '
# Aliases pour PHP Storm
alias phpstorm='gnome-terminal & screen /app/JetBrains/PhpStorm-222.4167.33/bin/phpstorm.sh'
#Aliases pour Visual Studio Code
alias vscode='gnome-terminal & screen code'

#Aliases pour SGBD
alias sqldev="gnome-terminal & screen /app/SGBD/sqldeveloper/sqldeveloper.sh"

#Aliases pour Mozilla Firefox
alias ffox='gnome-terminal & screen firefox'
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
alias vlc='screen vlc '
#Aliases pour lecteur image
alias eye='gnome-terminal & screen eog '
#Aliases pour Lecteur pdf
alias pdf='gnome-terminal & screen evince '
#Aliases pour flameshot
alias fshot='gnome-terminal & screen flameshot'

#Aliases pour LibreOffice
alias lo='gnome-terminal & screen libreoffice '

#Aliases pour logiciel Windows
alias exe='gnome-terminal & screen wine '
#Aliases pour Looping
alias looping='cd /app/Looping & exe ./looping.exe'

#Aliases disk
alias mount_DD='sudo mount -o rw,uid=1000,gid=1000,user,exec,umask=003 /dev/sda1 /home/samuel/DD-SAM-1T'
alias umount_DD='sudo umount /dev/sda1'
