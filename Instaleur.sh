#!/bin/bash
testVar=${testVar//$'\r'}
#clear -x
#https://pub.phyks.me/sdz/sdz/ersonnalisez-votre-shell-en-couleur.html
#https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php operateur liste
echo 
[ -d /home/instaleur ] && echo -e "                      \033[42m[OK]\033[00m" 
[ ! -d /home/instaleur ] && echo -e "                    \033[41m[ERREUR]\033[00m" && mkdir /home/instaleur | tr -d '\r'
#
echo -e "\033[45m                                               \033[00m"
echo -e "               \033[33m\033[01mBonjour \033[32m\033[01m$USER\033[00m"
echo 
echo -e "  \033[32m\033[01mChoisisez les aplication a ne \033[31mpas instalez\033[00m"
echo -e "\033[45m                                               \033[00m"
echo 
echo 
echo -e "\033[36m 	 ╔═══════════════════════╗\033[00m"
echo -e "\033[36m 	 ║\033[33m Python      \033[37m1         \033[36m║ \033[00m"
echo -e "\033[36m  	 ║\033[33m Discord     \033[37m2         \033[36m║ \033[00m"
echo -e "\033[36m  	 ║\033[33m WhatsApp    \033[37m3         \033[36m║ \033[00m"
echo -e "\033[36m  	 ║\033[33m Xampp       \033[37m4         \033[36m║ \033[00m"
echo -e "\033[36m  	 ╚═══════════════════════╝\033[00m"
#
echo -e "\033[32m Entre les App a installer\033[00m"
echo -e "\033[32m Exemple : 1-2-3\033[00m"
echo 
# | tr -d '\r' permet de suprimer le retoure de ligne de windows txt
read -p " : " u #
#
# récupérer le nombre de caractaire
i=${#u} #
#-----------------------------
#
for (( j=1; j <= $i; j++)); #
do #
	x=$(echo "$u" | cut -d- -f$[j]) #
	echo #
	echo $x #
	[ $x = 1 ] && echo -e "Python va s'installer" && sudo apt install python3.7 #
	[ $x = 2 ] && echo -e "Discord va s'installer" && cd /home/instaleur && sudo apt-get update && sudo apt-get install /home/instaleur/discord.deb#
done
#