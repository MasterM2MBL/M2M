Mini Project de M2M
===

##Introduction :##

Ce mini-projet consiste a mettre en place une infrastructure de collecte de données capteur. L'acquisition des mesures de capteurs distribués se fait sur une carte de type arduino (Intel Galileo). Les données sont remontées dans des messages vers un serveur via un "broker". Les données peuvent être visualisées en direct avec l'aide de ''OpenHab'', et elles peuvent être stockées dans une base de données (MongoDB). Le matériel mis à notre disposition est :

*1 carte Intel Galileo
*1 Détecteur de présence
*1 carte SD

Pour mieux expliquer le structure de mini-projet, l’infrastructure implémentée est celle présenté ci-dessous :


##Mise en place :##

###Découverte :###

Dans un premier temps, pour apprendre à utiliser le capteur, nous avons téléchargé l'environnement de développement Arduino qui nous as permis d'executer des sketchs pour agir avec la carte.

Nous avons commencé par quelques sketchs simples (utilisation et modification basique du sketch blink pour faire clignoter la led de manière régulière puis ''irrégulière'') puis un peu plus compliqué (création de sketch pour jouer « Au clair de la lune » au bipper) puis nous avons créé un sketch pour récupérer les valeurs de notre capteur de présence après avoir branché celui-ci.

Lors de cette étape, nous nous sommes aperçus que nous n'arrivions pas à récupérer les valeurs de notre capteur de température et d'humidité. Ce capteur demandait l'utilisation de bibliothèque particulière. Mais, même en utilisant cette bibliothèque et des sketchs prévu pour ce capteur, nous n'avions toujours aucune valeur. Après quelques recherche il semblerait que ce soit une affaire de durée d'émission par le capteur trop longue. Nous n'avons malheureusement pas pu (pour l'instant) pousser les recherches plus loin. Nous avons donc décidé d'abandonner l'utilisation de ce capteur (au moins dans un premier temps) pour avancer le reste du projet avant, nous l’espérions, de pouvoir revenir dessus. 



##Réalisation :##

###Sur la carte Galileo :###

#####Installation d'une distribution plus complète sur le Galileo :#####
Pour pouvoir interagir de façon plus poussée avec la carte Galileo (et l'utiliser autrement qu'en se contentant d’exécuter des sketchs) nous avons installé une distribution plus importante, contenant, entre autre, ssh. Pour cela nous avons eu recourt à la carte SD fournie et formaté en tant que bootable.
Pour la formater correctement nous avons, sous windows exécuté diskpart.exe, lui demandant de créer une partition ''primary'' avec le label ''BOOTME'' sur notre carte SD.
Une fois la carte SD formatée, nous avons simplement décompressée la distribution fournie (clanton) sur celle-ci. 
À partir de maintenant, si la carte est insérée, la Galileo démarera sous clanton.



#####Communication avec la carte sous Clanton :#####

Alors que, dans un premier temps, nous pouvions communiquer avec la carte par USB, opération facilité par l'environnement de développement Arduino. Cette opération est devenue impossible avec l'OS clanton. Pour profiter de notre carte nous avons donc décidé d'utiliser ssh qui est fourni de base sur la distribution clanton. Pour cela, il fallait pouvoir donner une adresse à notre carte. Nous avons donc décidé d'installer un serveur dhcp sur notre machine de travail pour qu'il puisse donner une adresse ip à celle-ci. Suite à cela il est devenu possible de se connecter à la carte en ssh.
Il est à noter que, hors des créneaux de TP, il était tout aussi simple de connecter la Galileo sur notre box qui se chargeait alors de lui donner une IP.



#####Installation d'un client mosquitto sur Clanton :#####

À ce moment là, nous pouvions utiliser notre carte par ssh, mais nous voulions maintenant lui permettre d'emetre des publications mqtt. Pour cela nous avons décidé d'utiliser un publisher Mosquitto. Seulement, les distribution précompilés de mosquitto ne fonctionnaient pas tel quel sur Clanton. Nous avons donc voulu recompilé Mosquitto dirrectement sur notre Clanton, ce qui nous a également obligé à compiler/installer la bibliothèque necessaire (c-ares qui n'est pas fournie sur notre distribution Clanton).



#####Une carte qui communique l'état de ses capteurs :#####

Une fois Mosquitto fonctionnel sur notre Galileo, nous avons voulu l'utiliser pour envoyer l'état des capteurs de la carte. Cependant, maintenant que nous utilisions clanton, il n'était plus possible de pousser des sketchs à exécuter à l'aide de l'environnement de développement Arduino. Nous avons donc cherché un moyen d’exécuter des sketchs sur clanton.
Ne trouvant pas, nous avons donc décidé de se passer des sketchs et lire directement les valeurs des capteurs (ou leurs en envoyer). Pour cela, nous nous somme aidé d'un tutoriel trouvé sur le site malinov.com . Vu que nous pouvions récupérer les valeurs des capteurs avec des commandes linux, nous avons créé un script shell qui va, régulièrement, lire la valeur du capteur et la publier par mosquitto.






###Sur notre machine Linux :###

Nous avons décidé d'utiliser une machine Linux (un Xubuntu 32 bits 13.10, le choix de la distribution ayant été fait en raison d'un autre projet il n'a pas vraiment d'importance ici) comme serveur pour notre infrastructure. 


#####Installation mosquitto : #####

Pour permettre à nos différentes briques de communiquer entre elles nous avons décider d'utiliser l’implémentions de MQTT Mosquitto. Il s'agissait ici d'installer le serveur Mosquitto. Pour cela nous avons suivit les informations données ici http://mosquitto.org/2013/01/mosquitto-debian-repository/ 

Une fois mosquitto installé on se contente de lancer le serveur avec la commande ''mosquitto''.



#####Installation mongoDB :#####

MongoDB nous servira à avoir une base de donnée pour enregistrer les informations sur les capteurs. Pour l'installer, nous avons simplement suivit les information données à cet endroit : http://docs.mongodb.org/manual/installation/ .

Nous avons ensuite édité le fichier /etc/init.d/mongodb pour ajouter l'argument  ''--rest'' cela nous permettra, notamment, de consulter le contenus de nos collection via une interface Web.

Nous avons ensuite lancé mongodb (mongo) et créé une base nommée M2M (use ''M2M'' ) puis une collection galileo (db.createCollection(''galileo'') ).



#####Installation Node-Red :#####

Node-Red est un outil visuel basé sur NodeJS. Nous allons l'utiliser pour permettre à MongoDB de récupérer les informations transitant sur Mosquitto. Pour installer Node-Red nous avons suivit les informations données sur le site officiel après avoir installé NodeJS puis nous avons installé les dépendances voulues (celles concernants mqtt par exemple) à l'aide de npm.

Une fois Node-Red lancé, on peut y acceder en entrant l'adresse "http://localhost:1880/". Nous avons branchés 4 entrées mqtt (température, fumée, feu, présence) vers mongodb en supprimant les champs ''qos'' et ''retain'' (uniquement dans un soucis de lisibilité lorsque nous observions notre base) et ajouté un champ ''timestamp'' (en dehors du payload, toujours pour des raisons de lecture) afin que les données stockées soient réellement utilisables et que l'on puisse les classer dans le temps. 




#####Installation et configuration d'OpenHab#####

L'étape suivante est d'installer et configurer OpenHab pour observer l'état de notre installation.
Pour l'installation et la configuration nous nous somme aidé du site officiel d'openHab (http://www.openhab.org/). Nous avons commencé par récuperer le "runtime core" et les addons.

OpenHab doit nous permettre de 
récupérer et afficher la température
récupérer et afficher la présence ou non de fumée
Déduire de ces deux informations la présence d'un incendie et publier cette information
récupérer l'information du capteur de présence et afficher un message en fonction de celle ci et de la présence ou non d'incendie

OpenHab doit donc pouvoir récupérer emmètre des informations sur le serveur Mosquitto. Pour cela nous avons ajouté les addons org.openhab.binding.mqtt-1.4.0.jar et org.openhab.persistence.mqtt-1.4.0.jar à notre installation. Puis nous avons modifié le fichier de configuration pour lui renseigner notre broker mqtt (mosquitto) avec l'ajout de la ligne ''mqtt:mosquitto.url=tcp://localhost:1883'' .
Il nous faut ensuite définir les items qui seront utilisé par openHab. Nous en avons de trois type : 
Les items reçus par openHab depuis Mosquitto (Température_Capteur, Fumée_Capteur, Présence) , les items envoyé par OpenHab à Mosquitto (Feu) et les items utiles à OpenHab en interne ou pour de l'affichage (Quelqu’un, Au_Feu, Fumée). Le fichier peut être récupéré ici. 
On peut voir que pour un suscribe, on utilisera un « mqtt="< » alors que pour publier on utilisera « mqtt="> ». 

Il reste à calculer la présence d'un feu et préparer l'affichage.
Pour les ''calculs'' et modifications, il faut se pencher sur le fichier galileo.rules

Ce fichier contient des fonctions qui nous permettent de manipuler les items défini plus haut.
Nous avons créé les fonctions Début, Maj Fumée, Présence de feu, Maj Quelqu’un. 
La fonction début nous permet d'initialiser certaines variables (le but est surtout d'avoir un affichage par défaut si aucune notification mqtt n'est encore parvenue).
Maj Fumee permet de passer de la valeur 0/1 reçue par mqtt dans Fumée_Capteur à une chaîne Oui/Non dans Fumée (l'on pourrait faire ce changement au moment de la réception mqtt, mais il est plus simple de manipuler des nombres que des chaînes de caractères et l'on tien donc à garder la valeur 0/1 pour la suite).
Présence de Feu, va définir si oui ou non il y a un incendie. L'idée est simple, si la température est supérieure à 40 degrés et qu'il y a de la fumée, alors il y a le feu. 
On règle les deux variables, Au_Feu (chaîne de caractère) et Feu (nombre 0/1). Ces deux variables existent pour les même raison que les variables Fumées. 
Maj Quelqu’un prend en compte la présence ou non d'une personne, et l'existence ou non d'un incendie pour afficher une phrase d'information.


Il ne nous reste maintenant plus qu'à afficher tout ça. Cela se passe dans galileo.sitemap.
Le fichier sitemap permet de définir comment sont organisé et affichés les differentes informations. 
Nous avons décidé de tout simplement aligner la temperature, un message oui/non pour la présence de fumée. Un message oui/non pour la présence d'un incendie et la phrase prévue par ''Maj Quelquun''. Quelques légères améliorations sont tout de même apportées à l'affichage brut. L'affichage de la temperature changera de valeur selon la valeur de celle ci. Les non seront vert et les oui rouge. Et le message d'information aura une couleur différente selon sa ''gravité''. 
