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
pkg install nmap
fi

clear
setterm -foreground cyan
figlet -f small NmapV
setterm -foreground green
sleep 2
setterm -foreground red
echo "                    v.1.7"
echo ""
setterm -foreground green
echo "ESTA SCRIPT ES PARA ENCONTRAR VULNERABILIDADES EN LA PAGINA DEL OBJETIVO"
sleep 1
echo ""
echo -e -n "\e[1;35m[+]\e[0m\e[1;33mEscriba la url de la victima ej:(facebook.com)\e[0m \e[1;32m>> \e[0m"
read url
echo ""
setterm -foreground cyan
echo "-------------------------------------------------"
echo "└─> nmap -Pn -script vuln" $url
echo "-------------------------------------------------"
echo ""
echo -e "\e[1;35m[+]\e[0m\e[1;33mBuscando vulnerabilidades espere un momento...\e[0m"

#Esta funcion hace que al ejecutarse nmap -Pn -script vuln $url busque la vulnerabilidad de la misma
setterm -foreground green
sleep 1
echo ""
nmap -Pn -script vuln $url

#Una vez ejecutado se copia lo vulnerable
echo ""
echo -e "\e[1;35m[+]\e[0m\e[1;33mCopie la vulnerabilidad si la encontro ej:(cve2014-3704)\e[0m"
sleep 1
echo ""
setterm -foreground cyan
echo -n "/////Ejecutando metasploit framework\\\\\\"
echo ""
#Esta funcion hace que despues de ejecutarse nmap -Pn -script vuln $url se ejecute metasploit
msfconsole

#Salir de la script NmapV
echo -e "\e[1;32mGracias por utilizar esta script Adios\e[0m"
#
