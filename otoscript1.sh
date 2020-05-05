#!/bin/bash
clear
echo -e " \033[1;35m \n# -------------------------------------------------------- \033[35m #"
echo -e " \033[33m \n#  SEZER ONDER / \033[31mKOLAY KURULUM SCRIPTI \033[31m #"
echo -e " \033[1;35m \n# -------------------------------------------------------- #\033"
echo -e " \033[1;34m \n # Kurulum Secenekleri # \033[1;35m"
echo -e " \033[1;35m \n# -------------------------------------------------------- \033[35m #"
echo -e " \033[1;32m1) \033[33mMTA 32Bit \033[1;36mKur \033[0m"
echo -e " \033[1;32m2) \033[36mMTA 64Bit \033[1;33mKur \033[0m"
echo -e " \033[1;32m3) \033[36mGerekli Bileşenleri \033[1;33mKur \033[0m"
echo -e " \033[1;32m4) \033[36mUzak Masaüstü Kur \033[0m"
echo -e " \033[1;32m5) \033[36mServer Başlat /YAKINDA \033[0m"
echo -e " \033[1;32m6) \033[36mServer Durdur /YAKINDA\033[0m"
echo -e " \033[1;32m7) \033[36mServer Yedeği Al /YAKINDA\033[0m"
echo -e " \033[1;32m8) \033[36mScript Güncelle\033[0m"
echo ""
echo -e " \033[1;35m # -------------------------------------------------------- \033[35m # \n"
echo " Önemli Not: Gerekli Bilesenleri Kurunuz."
echo " Script Versiyon: v3"
echo -e "\033[36m \n Islem Numaranizi Girin...\033[0m"
echo -e " \033[1;35m# -------------------------------------------------------- \033[35m #"
read secenek

case $secenek in
 1)
echo -e "32 Bit MTA Server Kuruluyor.."
wget https://linux.mtasa.com/dl/multitheftauto_linux.tar.gz
tar zxvf multitheftauto_linux.tar.gz
rm -rf multitheftauto_linux.tar.gz
wget http://linux.mtasa.com/dl/baseconfig.tar.gz
tar -xf baseconfig.tar.gz
mv baseconfig/* multitheftauto_linux/mods/deathmatch
rm -fr baseconfig.tar.gz
rm -fr baseconfig
mkdir multitheftauto_linux/mods/deathmatch/resources
cd multitheftauto_linux/mods/deathmatch/resources
wget http://mirror.mtasa.com/mtasa/resources/mtasa-resources-latest.zip
unzip mtasa-resources-latest.zip
rm -f mtasa-resources-latest.zip
cd multitheftauto_linux
echo "Kurulum Tamamlandı !"
sleep 2
clear
;;
 2)
echo -e "64 Bit MTA Server Kuruluyor.."
wget https://linux.mtasa.com/dl/multitheftauto_linux_x64.tar.gz
tar zxvf multitheftauto_linux_x64.tar.gz
rm -rf multitheftauto_linux_x64.tar.gz
wget http://linux.mtasa.com/dl/baseconfig.tar.gz
tar -xf baseconfig.tar.gz
mv baseconfig/* multitheftauto_linux_x64/mods/deathmatch
rm -fr baseconfig.tar.gz
rm -fr baseconfig
mkdir multitheftauto_linux_x64/mods/deathmatch/resources
cd multitheftauto_linux_x64/mods/deathmatch/resources
wget http://mirror.mtasa.com/mtasa/resources/mtasa-resources-latest.zip
unzip mtasa-resources-latest.zip
rm -f mtasa-resources-latest.zip
echo "Kurulum Tamamlandı !"
sleep 2 
clear
;;
 3)
 sudo apt-get update
 sleep 2
 clear
 sudo apt-get upgrade
 sleep 2
 sudo apt-get install unzip
 sleep 2
 clear
 ;;
 4)
sudo apt-get install xrdp
 sleep 2
 clear
 sudo apt-get install xfce4
 sleep 2
 sudo apt-get -y install wget
 sudo dpkg --add-architecture i386 
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main'
sudo apt-get update
 sudo apt install --install-recommends winehq-stable
 clear
 ;;
 8)
 echo "Bash script güncelleniyor, lütfen bekleyiniz..."
 sleep 3
 cd /root
 rm -fr otoscript.sh
 wget https://raw.githubusercontent.com/sezerondrr/otoscript/master/otoscript1.sh
 cp otoscript1.sh otoscript.sh
 chmod +x otoscript.sh
 rm -fr otoscript1.sh
 ./otoscript.sh
esac
