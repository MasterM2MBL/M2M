#Mini Projet de M2M#


##Introduction :##

Ce projet réalisé dans le cadre de l’UE M2M nous a conduits à mettre en place une infrastructure de collectes de données depuis des capteurs et visualisation de celles-ci sur un serveur à l’aide d’une carte Intel Galileo. Le matériel mis à notre disposition est :
* 1 carte Intel Galileo
* 1 Détecteur de présence
* 1 carte SD

L’infrastructure implémentée est celle présenté ci-dessous :
![alt tag](https://raw.githubusercontent.com/MasterM2MBL/M2M/master/images/image001.jpg)

Un résumé des étapes importantes est accessible ici.


##Mise en place :##
 
#####Découverte :#####

Dans un premier temps, pour apprendre à utiliser le capteur, nous avons téléchargé l'environnement de développement Arduino qui nous a permis d'exécuter des sketchs pour agir avec la carte.

Nous avons commencé par quelques sketchs simples (utilisation et modification basique du sketch blink pour faire clignoter la led de manière régulière puis ''irrégulière'') puis un peu plus compliqué (création de sketch pour jouer « Au clair de la lune » au bipper) puis nous avons créé un sketch pour récupérer les valeurs de notre capteur de présence après avoir branché celui-ci.

Lors de cette étape, nous nous sommes aperçus que nous n'arrivions pas à récupérer les valeurs de notre capteur de température et d'humidité. Ce capteur demandait l'utilisation de bibliothèque particulière. Mais, même en utilisant cette bibliothèque et des sketchs prévus pour ce capteur, nous n'avions toujours aucune valeur. Après quelques recherches il semblerait que ce soit une affaire de durée d'émission par le capteur trop longue. Nous n'avons malheureusement pas pu (pour l'instant) pousser les recherches plus loin. Nous avons donc décidé d'abandonner l'utilisation de ce capteur (au moins dans un premier temps) pour avancer le reste du projet avant, nous l'espérions, de pouvoir revenir dessus. 

Ce capteur et celui du groupe voisin du notre nous avaient tout de même donné une idée. La mise en commun de ces capteurs pour déclencher une alarme incendie. Cela ne sera pas fait et nous simulerons des capteurs par la suite pour pouvoir tout de même mettre en place ce point.



##Réalisation :##

###Sur la carte Galileo###

#####Installation d'une distribution plus complète sur le Galileo :#####
Pour pouvoir interagir de façon plus poussée avec la carte Galileo (et l'utiliser autrement qu'en se contentant d'executer des sketchs) nous avons installé une distribution plus importante, contenant, entre autre, ssh. Pour cela nous avons eu recourt à la carte SD fournie et formaté en tant que bootable.

Pour la formater correctement nous avons, sous windows exécuté diskpart.exe, lui demandant de créer une partition ''primary'' avec le label ''BOOTME'' sur notre carte SD.

Une fois la carte SD formatée, nous avons simplement décompressée la distribution choisie (Clanton, version "Yocto Project Linux image w/ Clanton-full kernel + general SDKs + Oracle JDK 8 + Tomcat" -voir [ici](http://ccc.ntu.edu.tw/index.php/en/news/40)-) sur celle-ci. 
À partir de maintenant, si la carte est insérée, la Galileo démarrera sous Clanton.



#####Communication avec la carte sous Clanton :#####
Alors que, dans un premier temps, nous pouvions communiquer avec la carte par USB, opération facilité par l'environnement de développement Arduino. Cette opération est devenue impossible avec l'OS Clanton. Pour profiter de notre carte nous avons donc décidé d'utiliser ssh qui est fourni de base sur la distribution Clanton. Pour cela, il fallait pouvoir donner une adresse à notre carte. Nous avons donc décidé d'installer un serveur dhcp sur notre machine de travail pour qu'il puisse donner une adresse ip à celle-ci. Suite à cela il est devenu possible de se connecter à la carte en ssh.

Il est à noter que, hors des créneaux de TP, il était tout aussi simple de connecter la Galileo sur notre box qui se chargeait alors de lui donner une IP.



#####Installation d'un client mosquitto sur Clanton :#####
À cette étape, nous pouvions utiliser notre carte par ssh, mais nous voulions maintenant lui permettre d'émettre des publications mqtt. Pour cela nous avons décidé d'utiliser un publisher Mosquitto. Seulement, les distributions précompilés de mosquitto ne fonctionnaient pas tel quel sur Clanton. Nous avons donc voulu recompilé Mosquitto directement sur notre Clanton, ce qui nous a également obligé à compiler/installer la bibliothèque nécessaire (c-ares qui n'est pas fournie sur notre distribution Clanton).



##### Une carte qui communique l'état de ses capteurs :#####
Une fois Mosquitto fonctionnel sur notre Galileo, nous avons voulu l'utiliser pour envoyer l'état des capteurs de la carte. Cependant, maintenant que nous utilisions Clanton, il n'était plus possible de pousser des sketchs à exécuter à l'aide de l'environnement de développement Arduino. Nous avons donc cherché un moyen d'exécuter des sketchs sur Clanton.
Ne trouvant pas, nous avons donc décidé de se passer des sketchs et lire directement les valeurs des capteurs (ou leurs en envoyer). Pour cela, nous nous somme aidé d'un tutoriel trouvé sur le site [malinov.com](http://www.malinov.com/Home/sergey-s-blog/intelgalileo-programminggpiofromlinux) . Vu que nous pouvions récupérer les valeurs des capteurs avec des commandes linux, nous avons créé un script shell qui va, régulièrement, lire la valeur du capteur et la publier par mosquitto. Toujours dans l’optique de notre « détecteur d’incendie », nous avons simulé les capteurs température et fumée en envoyant des valeurs aléatoires (0 ou 1 pour la fumée et un entier entre 0 et 100 pour la température) par la suite nous considérerons ces envois comme les résultats de capteurs ordinaires.
Communication avec la carte sous Clanton :

Alors que, dans un premier temps, nous pouvions communiquer avec la carte par USB, opération facilité par l'environnement de développement Arduino. Cette opération est devenue impossible avec l'OS Clanton. Pour profiter de notre carte nous avons donc décidé d'utiliser ssh qui est fourni de base sur la distribution Clanton. Pour cela, il fallait pouvoir donner une adresse à notre carte. Nous avons donc décidé d'installer un serveur dhcp sur notre machine de travail pour qu'il puisse donner une adresse ip à celle-ci. Suite à cela il est devenu possible de se connecter à la carte en ssh.

Il est à noter que, hors des créneaux de TP, il était tout aussi simple de connecter la Galileo sur notre box qui se chargeait alors de lui donner une IP.



#####Installation d'un client mosquitto sur Clanton :#####
À cette étape, nous pouvions utiliser notre carte par ssh, mais nous voulions maintenant lui permettre d'émettre des publications mqtt. Pour cela nous avons décidé d'utiliser un publisher Mosquitto. Seulement, les distributions précompilés de mosquitto ne fonctionnaient pas tel quel sur Clanton. Nous avons donc voulu recompilé Mosquitto directement sur notre Clanton, ce qui nous a également obligé à compiler/installer la bibliothèque nécessaire (c-ares qui n'est pas fournie sur notre distribution Clanton).



#####Une carte qui communique l'état de ses capteurs :#####
Une fois Mosquitto fonctionnel sur notre Galileo, nous avons voulu l'utiliser pour envoyer l'état des capteurs de la carte. Cependant, maintenant que nous utilisions Clanton, il n'était plus possible de pousser des sketchs à exécuter à l'aide de l'environnement de développement Arduino. Nous avons donc cherché un moyen d'exécuter des sketchs sur Clanton.
Ne trouvant pas, nous avons donc décidé de se passer des sketchs et lire directement les valeurs des capteurs (ou leurs en envoyer). Pour cela, nous nous somme aidé d'un tutoriel trouvé sur le site malinov.com . Vu que nous pouvions récupérer les valeurs des capteurs avec des commandes linux, nous avons créé un script shell qui va, régulièrement, lire la valeur du capteur et la publier par mosquitto. Toujours dans l’optique de notre « détecteur d’incendie », nous avons simulé les capteurs température et fumée en envoyant des valeurs aléatoires (0 ou 1 pour la fumée et un entier entre 0 et 100 pour la température) par la suite nous considérerons ces envois comme les résultats de capteurs ordinaires.




###Sur notre machine Linux :###
Nous avons décidé d'utiliser une de nos machines personnelles tournant sous Linux comme serveur pour notre infrastructure. 

#####Installation mosquitto : #####
Pour permettre à nos différentes briques de communiquer entre elles nous avons décidé d'utiliser l'implémentions de MQTT Mosquitto. Il s'agissait ici d'installer le serveur Mosquitto. Pour cela nous avons suivi les informations données ici http://mosquitto.org/2013/01/mosquitto-debian-repository/ 

Une fois mosquitto installé on se contente de lancer le serveur avec la commande ''mosquitto''.



#####Installation mongoDB :#####
MongoDB nous servira à avoir une base de donnée pour enregistrer les informations sur les capteurs. Pour l'installer, nous avons simplement suivit les information données à cet endroit : http://docs.mongodb.org/manual/installation/ .

Nous avons ensuite édité le fichier /etc/init.d/mongodb pour ajouter l'argument  ''--rest'' cela nous permettra, notamment, de consulter le contenus de nos collection via une interface Web.

Nous avons ensuite lancé mongodb (mongo) et créé une base nommée M2M (use ''M2M'' ) puis une collection galileo (db.createCollection(''galileo'') ).



#####Installation Node-Red :#####
Node-Red est un outil visuel basé sur NodeJS. Nous allons l'utiliser pour permettre à MongoDB de récupérer les informations transitant sur Mosquitto. Pour installer Node-Red nous avons suivi les informations données sur le site officiel après avoir installé NodeJS puis nous avons installé les dépendances voulues (celles concernant mqtt par exemple) à l'aide de npm.

Une fois Node-Red lancé, on peut y acceder en entrant l'adresse "http://localhost:1880/". Nous avons branchés 4 entrées mqtt (temperature, fumee, feu, presence) vers mongodb en supprimant les champs ''qos'' et ''retain'' (uniquement dans un souci de lisibilité lorsque nous observions notre base) et ajouté un champ ''timestamp'' (en dehors du payload, toujours pour des raisons de lecture) afin que les données stockées soient réellement utilisables et que l'on puisse les classer dans le temps. 

![alt tag](https://raw.githubusercontent.com/MasterM2MBL/M2M/master/images/image002.png)




#####Installation et configuration d'openHab :#####
L'étape suivante est d'installer et configurer OpenHab pour observer l'état de notre installation.
Pour l'installation et la configuration nous nous somme aidé du site officiel d'openHab (http://www.openhab.org/). Nous avons commencé par récupérer le "runtime core" et les addons.

OpenHab doit nous permettre de 
* récupérer et afficher la température
* récupérer et afficher la présence ou non de fumée
* Déduire de ces deux informations la présence d'un incendie et publier cette information
* récupérer l'information du capteur de présence et afficher un message en fonction de celle-ci et de la présence ou non d'incendie

OpenHab doit donc pouvoir récupérer émettre des informations sur le serveur Mosquitto. Pour cela nous avons ajouté les addons org.openhab.binding.mqtt-1.4.0.jar et org.openhab.persistence.mqtt-1.4.0.jar à notre installation. Puis nous avons modifié le fichier de configuration pour lui renseigner notre broker mqtt (mosquitto) avec l'ajout de la ligne "mqtt:mosquitto.url=tcp://localhost:1883" .

Il nous faut ensuite définir les items qui seront utilisé par openHab. Nous en avons de trois type : 
Les items reçus par openHab depuis Mosquitto (Temperature_Capteur, Fumee_Capteur, Presence) , les items envoyé par OpenHab à Mosquitto (Feu) et les items utiles à OpenHab en interne ou pour de l'affichage (Quelquun, Au_Feu, Fumee). Le fichier peut être récupéré ici. 

On peut voir que pour souscrire, on utilisera un « mqtt="< » alors que pour publier on utilisera « mqtt="> ». 

Il reste à calculer la présence d'un feu et préparer l'affichage.
Pour les "calculs"' et modifications, il faut se pencher sur le fichier galileo.rules

Ce fichier contient des fonctions qui nous permettent de manipuler les items défini plus haut.
Nous avons créé les fonctions Debut, Maj Fumee, Presence de feu, Maj Quelquun. 

La fonction début nous permet d'initialiser certaines variables (le but est surtout d'avoir un affichage par défaut si aucune notification mqtt n'est encore parvenue).

Maj Fumee permet de passer de la valeur 0/1 reçue par mqtt dans Fumee_Capteur à une chaine Oui/Non dans Fumee (l'on pourrait faire ce changement au moment de la reception mqtt, mais il est plus simple de manipuler des nombres que des chaines de caractères et l'on tient donc à garder la valeur 0/1 pour la suite).

Presence de Feu, va définir si oui ou non il y a un incendie. L'idée est simple, si la temperature est supérieure à 40 degrès et qu'il y a de la fumée, alors il y a le feu. 

On règle les deux variables, Au_Feu (chaine de caractère) et Feu (nombre 0/1). Ces deux variables existent pour les même raison que les variables Fumees. 

Maj Quelquun prend en compte la présence ou non d'une personne, et l'existence ou non d'un incendie pour afficher une phrase d'information.

Il ne nous reste maintenant plus qu'à afficher tout ça. Cela se passe dans galileo.sitemap.

Le fichier sitemap permet de définir comment sont organisé et affichés les différentes informations. 

Nous avons décidé de tout simplement aligner la température, un message oui/non pour la présence de fumée. Un message oui/non pour la présence d'un incendie et la phrase prévue par ''Maj Quelquun''. Quelques légères améliorations sont tout de même apportées à l'affichage brut. L'affichage de la température changera de valeur selon la valeur de celle-ci. Les non seront vert et les oui rouge. Et le message d'information aura une couleur différente selon sa ''gravité''. 




##Résumé##
