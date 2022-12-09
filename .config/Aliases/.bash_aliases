# Alias pour permettre sudo [un_alias]
alias sudo='sudo'

# Alias appCO.sh
alias app='~/.config/i3/appCO.sh $$'
alias appC='app -c'
# Alias pour raccourci Desktop
alias d='cd ~/Desktop'

# Alias pour nvim
alias gvim='gnome-terminal & nvim'
# Alias pour Mysql
alias mysql='sudo mysql -uroot -p'
# Alias pour Serveur Apache
alias apache='sudo service apache2'
# Alias pour LibreOffice
alias lo='app libreoffice'

# Alias pour Intellij-Idea
alias intellij='app intellij-idea-community'
alias intellijC='appC intellij-idea-community'
alias intellijU='app intellij-idea-ultimate'
alias intellijUC='appC intellij-idea-ultimate'
# Alias pour PHP Storm
alias phpstormC='appC phpstorm'
# Alias pour Visual Studio Code
alias vscode='app code'
alias vscodeC='appC code'
# Alias pour SGBD
alias sqldev='app /app/SGBD/sqldeveloper/sqldeveloper.sh'
alias sqldevC='appC /app/SGBD/sqldeveloper/sqldeveloper.sh'

# Alias pour Mozilla Firefox
alias ffox='app firefox'
alias ffoxC='appC firefox'
alias wheut='ffox https://matias.ma/nsfw/'

# Alias pour lecteur audio / vidéo
alias watch='app vlc'
alias watchC='appC vlc'
# Alias pour lecteur image
alias look='app eog'
alias lookC='appC eog'
# Alias pour Lecteur pdf
alias pdf='app evince'
alias pdfC='appC evince'
# Alias pour flameshot
alias screenshot='flameshot'
# Alias pipette
alias pip='app kcolorchooser'
alias pipC='appC kcolorchooser'

# Alias pour logiciel Windows
alias exe='app wine'
alias exeC='appC wine'
# Alias pour Looping
alias looping='exe /app/Looping/Looping.exe'
alias loopingC='exeC /app/Looping/Looping.exe'

# Alias disk
alias mount_HD='sudo mount -o rw,uid=1000,gid=1000,user,exec,umask=003 /dev/sda1 /home/samuel/DD-SAM-1T'
alias umount_HD='sudo umount /dev/sda1'

# Alias perso
alias project='cd ~/Desktop/MonoGame_Project0/ ; vscode ~/Desktop/MonoGame_Project0/'
