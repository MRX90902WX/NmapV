#! /bin/bash

white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"


#directory verification
directory=$(pwd)


if which nmap >/dev/null; then
sleep 1
echo ""
echo -e "$blue(nmap)$nc ................................................... Instalado [$green✓$nc]"
else
sleep 1
echo -e "$red(nmap)$nc No instalado [$red✗$nc]"
sleep 1
echo -e "\e[1;33mInstalando\e[0m \e[1;34mnmap ...\e[0m"
sleep 3
setterm -foreground blue
pkg install nmap -y
fi

#directory verification
directory=$(pwd)
   
                                                                                                                                                                                                                                                                                         
if which figlet >/dev/null; then
sleep 1
echo ""
echo -e "$blue(figlet)$nc ................................................... Instalado [$green✓$nc]"
else
sleep 1
echo -e "$red(figlet)$nc No instalado [$red✗$nc]"
sleep 1
echo -e "\e[1;33mInstalando\e[0m \e[1;34mfiglet ...\e[0m"
sleep 3
setterm -foreground blue
pkg install figlet -y
fi

clear
setterm -foreground cyan
echo " ----------------------------------------------"
echo "|  _  _               __   __                  |"
echo "| | \| |_ __  __ _ _ _\ \ / /                  |"
echo "| | .  | °  \/ _° | °_ \ V /                   |"
echo "| |_|\_|_|_|_\__,_| .__/\_/                    |"
echo "|                |_|                           |"
echo "|                    v.1.9                     |"
echo "|                   by.DemoX                   |"
echo "|                                              |"
echo " ----------------------------------------------"
echo ""
sleep 1
setterm -foreground green
echo " ESCANEA VULNERABILIDADES EN UN <IP-SERVIDOR>"
sleep 1
echo ""
echo -e -n "\e[1;34m[+]Escriba la IP Objetivo >>\e[0m \e[1;32m\e[0m"
read url
echo ""
setterm -foreground cyan
echo "-----------------------------------------------"
echo "└─> nmap -sV -sC --script vuln $url"
echo "-----------------------------------------------"
echo ""
while :
do
setterm -foreground green
echo "[1]Guardar las vulnerabilidades en un archivo txt"
echo "[2]No guardar"
echo -n "[~]Opcion >> "
read opcion
case $opcion in
1)
echo ""
#! /bin/bash
echo -e -n "\e[1;31m[~]Nombre del archivo txt ej:(scan)>> \e[0m"
read archivo
setterm -foreground red
echo ""
echo "                     #####"
echo "                    #######"
echo "                #####      #####"
echo "                ####        ####"
echo "                 ##   \  /   ##"
echo "                 ##          ##"
echo "                  ##        ##"
echo "                    ########"
echo ""
echo -e "\e[1;37m[#]Guardando vulnerabilidades espere un momento...\e[0m"

#Esta funcion hace que al ejecutarse nmap -sV -sC --script vuln $url busque la vulnerabilidad de la IP
setterm -foreground green
sleep 1
echo ""
nmap -sV -sC --script vuln $url > $archivo.txt
echo ""
echo -e "\e[1;37m--[\e[0m \e[1;34mEscaneo completado de\e[0m \e[1;31m$url\e[0m"
sleep 1
echo -e "\e[1;37m╽\e[0m"
echo -e "\e[1;37m--[\e[0m \e[1;34mInformación guardada, puertos & msf-modulos\e[0m"
sleep 1
echo -e "\e[1;37m╽\e[0m"
echo -e "\e[1;37m--[\e[0m \e[1;31m$archivo.txt\e[0m \e[1;37mguardado en este directorio\e[0m"
exit
;;
2)
echo ""
#! /bin/bash
setterm -foreground red
echo "                     #####"
echo "                    #######"
echo "                #####      #####"
echo "                ####        ####"
echo "                 ##   \  /   ##"
echo "                 ##          ##"                                          
echo "                  ##        ##"                                            
echo "                    ########"
echo ""
echo -e "\e[1;37m[#]Buscando vulnerabilidades espere un momento...\e[0m"

#Esta funcion hace que al ejecutarse nmap -sV -sC --script vuln $url busque la vulerabilidad de la IP
sleep 1
echo ""
echo "=============================================="
nmap -sV -sC --script vuln $url
echo ""
exit
;;
esac
done
