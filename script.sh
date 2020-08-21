#remove teamviewer
sudo apt-get remove teamviewer;


#install teamviewer 12
wget /home/usuario/Descargas https://download.teamviewer.com/download/version_12x/teamviewer_i386.deb;
dpkg -i /home/usuario/Descargas/teamviewer*;
#remove package
rm /home/usuario/Descargas/teamviewer*;


#install anydesk
anydesk --version;
if [ $? == 0 ]
then
    echo 'Anydesk ya se encuentra instalado...';
    sleep 1;
else 
    sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -;
    sudo echo "deb http://deb.anydesk.com/ all main" >> /etc/apt/sources.list;
    sudo apt-get update;
    sudo apt install -y anydesk;
fi


#run teamviewer
teamviewer;