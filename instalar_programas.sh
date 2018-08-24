###############################################
#### Script para descargar diferentes #########
#### programas utilizados para analisis  ######
#### 		filogéneticos #####################
#### Realizado en Bash por Andrés Ordoñez #####
#### 23 de agosto de 2018 #####################

#### Crear una carpeta en home, donde esten todos los programas ####

cd ## nos ubica en home

mkdir software ## crear la carpeta

####### TNT #######

mkdir ~/software/tnt/  #ubicarse en la carpeta para los programas

cd ~/software/tnt/

wget http://www.lillo.org.ar/phylogeny/tnt/tnt64.zip  #dirección web del programa

unzip ~/software/tnt/tnt64.zip  #descomprimir el archivo

chmod +x ~/software/tnt/tnt  #dar permisos para ejecución, modificación y demás

cd /~/software/tnt/  #ejecutar tnt

./tnt zzz /;

####### PAUP ########

cd ~/software  #ubicarse en la carpeta para los programas

wget http://phylosolutions.com/paup-test/paup4a163_ubuntu64.gz   #dirección web del programa

gzip -d paup4a159_ubuntu64.gz  #descomprimir el archivo

chmod +x paup4a159 #dar permisos para ejecución, modificación y demás

./paup4a159  #ejecutar paup

#en este caso hay un error ya que la version esta desactualizada, la version mas reciente tiene licencia


###### Mesquite ######

## si no tiene java

apt-get install default-jdk #instalar

apt-get update #actualizar el sistema

##ahora sí Mesquite

cd ~/software  #ubicarse en la carpeta para los programas

wget https://github.com/MesquiteProject/MesquiteCore/releases/download/untagged-8cc6db36651fb5d9acec/Mesquite351-Linux.tgz #dirección web del programa

tar -xzvf Mesquite351-Linux.tgz  #descomprimir el archivo

cd Mesquite_Folder #entrar a la carpeta de Mesquite

java -jar Mesquite.jar #ejecutar Mesquite con java



















