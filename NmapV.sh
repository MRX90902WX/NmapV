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
figlet -f small NmapV
setterm -foreground green
sleep 1
setterm -foreground red
echo "                    v.1.9"
echo ""
setterm -foreground green
echo "ESTA SCRIPT ES PARA ENCONTRAR VULNERABILIDADES EN LA PAGINA DEL OBJETIVO"
sleep 1
echo ""
echo -e "\e[1;34m[+]Escriba el dominio de la pagina ej:(facebook.com)\e[0m"
echo -e -n "\e[1;32m >>\e[0m \e[1;37m\e[0m"
read url
echo ""
setterm -foreground cyan
echo "-----------------------------------------------"
echo "└─> nmap -Pn -script vuln" $url
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
echo ""
echo -e "\e[1;37m[#]Guardando vulnerabilidades espere un momento...\e[0m"

#Esta funcion hace que al ejecutarse nmap -Pn -script vuln $url busque la vulnerabilidad de la misma
setterm -foreground green
sleep 1
echo ""
nmap -Pn -script vuln $url > $archivo.txt
echo ""
exit
;;
2)
echo ""
#! /bin/bash
echo -e "\e[1;37m[#]Buscando vulnerabilidades espere un momento...\e[0m"

#Esta funcion hace que al ejecutarse nmap -Pn -script vuln $url busque la vulerabilidad del dominio
sleep 1
echo ""
echo "=============================================="
nmap -Pn -script vuln $url
echo ""
;;
esac
done

