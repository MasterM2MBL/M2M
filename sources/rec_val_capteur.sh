#!/bin/bash
# indique au système que l'argument qui suit est le programme utilisé pour exécuter ce fichier.
# En cas général les "#" servent à faire des commentaires comme ici

#Ici preparation (ouverture du gpio, le mettre en lecture, etc etc)
echo -n "24" > /sys/class/gpio/export
echo -n "in" > /sys/class/gpio/gpio24/direction
N=2
A=2

while true

do


#ici recuperation de la valeur du capteur (donc lecture sur le gpio)
N=$(cat /sys/class/gpio/gpio24/value)

#./mosquitto_pub -h (192.168.1.1 ip de la machine qui a lancé le serveur mosquitto) -t {nom du topic} -m {la variable récuperée}

./mosquitto_pub -h 192.168.1.1 -t presence -m ${N}
sleep 2
./mosquitto_pub -h 192.168.1.1 -t temperature -m $[(RANDOM % ($[100 - 0] + 1))]
sleep 2
./mosquitto_pub -h 192.168.1.1 -t fumee -m $[(RANDOM % ($[1 - 0] + 1))]
sleep 2
##	for i in {2..10}
##	do
##	     	./mosquitto_pub -d -h 192.168.1.1 -t toto -m "$i"
##		sleep 2
##	done

done  

 
exit 0
