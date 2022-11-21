#! /bin/bash

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
