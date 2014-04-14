M2M
==

<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=unicode">
<meta name=ProgId content=Word.Document>
<meta name=Generator content="Microsoft Word 14">
<meta name=Originator content="Microsoft Word 14">
<link rel=File-List href="rapport_m2mAVANCE_fichiers/filelist.xml">
<link rel=Edit-Time-Data href="rapport_m2mAVANCE_fichiers/editdata.mso">

<link rel=themeData href="rapport_m2mAVANCE_fichiers/themedata.thmx">
<link rel=colorSchemeMapping
href="rapport_m2mAVANCE_fichiers/colorschememapping.xml">

<style>

</style>

<meta name=CREATED content="0;0">
<meta name=CHANGEDBY content="M2M ">
<meta name=CHANGED content="20140414;194256277835623">
<meta name=CHANGEDBY content="M2M ">

</head>

<body lang=FR link=blue vlink=purple style='tab-interval:35.4pt'>

<div class=WordSection1>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:14.2pt'><b><span
style='font-size:16.0pt;font-family:"Arial","sans-serif";color:black'>Introduction&nbsp;:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Ce projet
réalisé dans le cadre de l’UE M2M nous a conduits à mettre en place une
infrastructure de collectes de données depuis des capteurs et visualisation de celles-ci
sur un serveur à l’aide d’une carte Intel Galileo. Le matériel mis à notre
disposition est&nbsp;:<o:p></o:p></span></p>

<p style='margin-top:5.0pt;margin-right:0cm;margin-bottom:0cm;margin-left:36.0pt;
margin-bottom:.0001pt;text-indent:-18.0pt;line-height:14.2pt;mso-list:l0 level1 lfo1;
tab-stops:list 36.0pt'><![if !supportLists]><span style='font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>1 carte Intel Galileo</span></p>

<p style='margin-top:5.0pt;margin-right:0cm;margin-bottom:0cm;margin-left:36.0pt;
margin-bottom:.0001pt;text-indent:-18.0pt;line-height:14.2pt;mso-list:l0 level1 lfo1;
tab-stops:list 36.0pt'><![if !supportLists]><span style='font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>1 Détecteur de présence</span></p>

<p style='margin-top:5.0pt;margin-right:0cm;margin-bottom:0cm;margin-left:36.0pt;
margin-bottom:.0001pt;text-indent:-18.0pt;line-height:14.2pt;mso-list:l0 level1 lfo1;
tab-stops:list 36.0pt'><![if !supportLists]><span style='font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>1 carte SD</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>L’infrastructure
implémentée est celle présenté ci-dessous&nbsp;:</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='mso-no-proof:yes'><!--[if gte vml 1]><v:shapetype id="_x0000_t75"
 coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe"
 filled="f" stroked="f">
 <v:stroke joinstyle="miter"/>
 <v:formulas>
  <v:f eqn="if lineDrawn pixelLineWidth 0"/>
  <v:f eqn="sum @0 1 0"/>
  <v:f eqn="sum 0 0 @1"/>
  <v:f eqn="prod @2 1 2"/>
  <v:f eqn="prod @3 21600 pixelWidth"/>
  <v:f eqn="prod @3 21600 pixelHeight"/>
  <v:f eqn="sum @0 0 1"/>
  <v:f eqn="prod @6 1 2"/>
  <v:f eqn="prod @7 21600 pixelWidth"/>
  <v:f eqn="sum @8 21600 0"/>
  <v:f eqn="prod @7 21600 pixelHeight"/>
  <v:f eqn="sum @10 21600 0"/>
 </v:formulas>
 <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"/>
 <o:lock v:ext="edit" aspectratio="t"/>
</v:shapetype><v:shape id="Image_x0020_3" o:spid="_x0000_i1026" type="#_x0000_t75"
 style='width:711pt;height:124.5pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="rapport_m2mAVANCE_fichiers/image001.jpg" o:title="m2m"/>
</v:shape><![endif]--><![if !vml]><img width=948 height=166
src="rapport_m2mAVANCE_fichiers/image001.jpg" v:shapes="Image_x0020_3"><![endif]></span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Un résumé
des étapes importantes est accessible ici.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:14.2pt'><b><span
style='font-size:18.0pt;font-family:"Arial","sans-serif";color:black'>Mise en
place&nbsp;:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Découverte&nbsp;:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Dans un
premier temps, pour apprendre à utiliser le capteur, nous avons téléchargé
l'environnement de développement <span class=SpellE>Arduino</span> qui nous a
permis d'exécuter des sketchs pour agir avec la carte.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Nous
avons commencé par quelques sketchs simples (utilisation et modification
basique du sketch <span class=SpellE>blink</span> pour faire clignoter la <span
class=SpellE>led</span> de manière régulière puis ''irrégulière'') puis un peu
plus compliqué (création de sketch pour jouer «&nbsp;Au clair de la lune&nbsp;»
au bipper) puis nous avons créé un sketch pour récupérer les valeurs de notre
capteur de présence après avoir branché celui-ci.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Lors de
cette étape, nous nous sommes aperçus que nous n'arrivions pas à récupérer les
valeurs de notre capteur de température et d'humidité. Ce capteur demandait
l'utilisation de bibliothèque particulière. Mais, même en utilisant cette
bibliothèque et des sketchs prévus pour ce capteur, nous n'avions toujours
aucune valeur. Après quelques recherches il semblerait que ce soit une affaire
de durée d'émission par le capteur trop longue. Nous n'avons malheureusement
pas pu (pour l'instant) pousser les recherches plus loin. Nous avons donc
décidé d'abandonner l'utilisation de ce capteur (au moins dans un premier
temps) pour avancer le reste du projet avant, nous l'espérions, de pouvoir
revenir dessus. </p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Ce
capteur et celui du groupe voisin du notre nous avaient tout de même donné une
idée. La mise en commun de ces capteurs pour déclencher une alarme incendie.
Cela ne sera pas fait et nous simulerons des capteurs par la suite pour pouvoir
tout de même mettre en place ce point.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;mso-line-height-alt:14.2pt'><b><span
style='font-size:16.0pt;font-family:"Arial","sans-serif";color:black'>Réalisation&nbsp;:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:13.5pt;font-family:"Arial","sans-serif";color:black'>Sur la
carte Galileo</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Installation
d'une distribution plus complète sur le Galileo&nbsp;:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Pour
pouvoir interagir de façon plus poussée avec la carte Galileo (et l'utiliser
autrement qu'en se contentant d'<span class=SpellE>executer</span> des sketchs)
nous avons installé une distribution plus importante, contenant, entre autre, <span
class=SpellE>ssh</span>. Pour cela nous avons eu recourt à la carte SD fournie
et formaté en tant que <span class=SpellE>bootable</span>.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Pour la
formater correctement nous avons, sous <span class=SpellE>windows</span> exécuté
diskpart.exe, lui demandant de créer une partition ''<span class=SpellE>primary</span>''
avec le label ''BOOTME'' sur notre carte SD.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Une fois
la carte SD formatée, nous avons simplement décompressée la distribution choisie
(<span class=SpellE>Clanton</span>, version &quot;<span class=SpellE>Yocto</span>
Project Linux image w/ <span class=SpellE>Clanton</span>-full <span
class=SpellE>kernel</span> + <span class=SpellE>general</span> SDKs + Oracle
JDK 8 + <span class=SpellE>Tomcat</span>&quot; -voir <a
href="http://ccc.ntu.edu.tw/index.php/en/news/40">ici</a>-) sur celle-ci. </p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>À partir
de maintenant, si la carte est insérée, la Galileo démarrera sous <span
class=SpellE>Clanton</span>.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Communication
avec la carte sous <span class=SpellE>Clanton</span>&nbsp;:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Alors
que, dans un premier temps, nous pouvions communiquer avec la carte par USB,
opération facilité par l'environnement de développement <span class=SpellE>Arduino</span>.
Cette opération est devenue impossible avec l'OS <span class=SpellE>Clanton</span>.
Pour profiter de notre carte nous avons donc décidé d'utiliser <span
class=SpellE>ssh</span> qui est fourni de base sur la distribution <span
class=SpellE>Clanton</span>. Pour cela, il fallait pouvoir donner une adresse à
notre carte. Nous avons donc décidé d'installer un serveur <span class=SpellE>dhcp</span>
sur notre machine de travail pour qu'il puisse donner une adresse <span
class=SpellE>ip</span> à celle-ci. Suite à cela il est devenu possible de se
connecter à la carte en <span class=SpellE>ssh</span>.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Il est à
noter que, hors des créneaux de TP, il était tout aussi simple de connecter la
Galileo sur notre box qui se chargeait alors de lui donner une IP.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Installation
d'un client <span class=SpellE>mosquitto</span> sur <span class=SpellE>Clanton</span>&nbsp;:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>À cette
étape, nous pouvions utiliser notre carte par <span class=SpellE>ssh</span>,
mais nous voulions maintenant lui permettre d'émettre des publications <span
class=SpellE>mqtt</span>. Pour cela nous avons décidé d'utiliser un <span
class=SpellE>publisher</span> <span class=SpellE>Mosquitto</span>. Seulement, les
distributions précompilés de <span class=SpellE>mosquitto</span> ne
fonctionnaient pas tel quel sur <span class=SpellE>Clanton</span>. Nous avons
donc voulu recompilé <span class=SpellE>Mosquitto</span> directement sur notre <span
class=SpellE>Clanton</span>, ce qui nous a également obligé à compiler/installer
la bibliothèque nécessaire (<span class=SpellE>c-ares</span> qui n'est pas
fournie sur notre distribution <span class=SpellE>Clanton</span>).</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Une carte
qui communique l'état de ses capteurs&nbsp;:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Une fois <span
class=SpellE>Mosquitto</span> fonctionnel sur notre Galileo, nous avons voulu
l'utiliser pour envoyer l'état des capteurs de la carte. Cependant, maintenant
que nous utilisions <span class=SpellE>Clanton</span>, il n'était plus possible
de pousser des sketchs à exécuter à l'aide de l'environnement de développement <span
class=SpellE>Arduino</span>. Nous avons donc cherché un moyen d'exécuter des
sketchs sur <span class=SpellE>Clanton</span>.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Ne
trouvant pas, nous avons donc décidé de se passer des sketchs et lire directement
les valeurs des capteurs (ou leurs en envoyer). Pour cela, nous nous somme aidé
d'un tutoriel trouvé sur le site <a
href="http://www.malinov.com/Home/sergey-s-blog/intelgalileo-programminggpiofromlinux">malinov.com</a>
. Vu que nous pouvions récupérer les valeurs des capteurs avec des commandes
linux, nous avons créé un script <span class=SpellE>shell</span> qui va,
régulièrement, lire la valeur du capteur et la publier par <span class=SpellE>mosquitto</span>.
Toujours dans l’optique de notre «&nbsp;détecteur&nbsp;d’incendie&nbsp;», nous
avons simulé les capteurs température et fumée en envoyant des valeurs aléatoires
(0 ou 1 pour la fumée et un entier entre 0 et 100 pour la température) par la
suite nous considérerons ces envois comme les résultats de capteurs ordinaires.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:13.5pt;font-family:"Arial","sans-serif";color:black'>Sur notre
machine Linux&nbsp;:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Nous
avons décidé d'utiliser une de nos machines personnelles tournant sous Linux
comme serveur pour notre infrastructure. </p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Installation
<span class=SpellE>mosquitto</span>&nbsp;: </span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='color:black'>Pour permettre à nos différentes briques de communiquer
entre elles nous avons décidé d'utiliser l'implémentions de MQTT <span
class=SpellE>Mosquitto</span>. Il s'agissait ici d'installer le serveur <span
class=SpellE>Mosquitto</span>. Pour cela nous avons suivi les informations
données ici </span><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'><a href="http://mosquitto.org/2013/01/mosquitto-debian-repository/">http://mosquitto.org/2013/01/mosquitto-debian-repository/</a>
</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Une fois <span
class=SpellE>mosquitto</span> installé on se contente de lancer le serveur avec
la commande ''<span class=SpellE>mosquitto</span>''.</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Installation
<span class=SpellE>mongoDB</span>&nbsp;:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
class=SpellE><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>MongoDB</span></span><span style='font-size:10.0pt;font-family:
"Arial","sans-serif";color:black'> nous servira à avoir une base de <span
class=GramE>donnée</span> pour enregistrer les informations sur les capteurs.
Pour l'installer, nous avons simplement suivit <span class=GramE>les
information</span> données à cet endroit&nbsp;: <a
href="http://docs.mongodb.org/manual/installation/">http://docs.mongodb.org/manual/installation/</a>
.</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Nous
avons ensuite édité le fichier </span><span style='font-size:10.0pt;font-family:
"Arial","sans-serif"'>/<span class=SpellE>etc</span>/<span class=SpellE>init.d</span>/<span
class=SpellE>mongodb</span></span><span style='color:black'> </span><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>pour
ajouter l'argument &nbsp;''--<span class=SpellE>rest</span>'' cela nous
permettra, notamment, de consulter le contenus de nos collection via une interface
Web.</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Nous
avons ensuite lancé <span class=SpellE>mongodb</span> (mongo) et créé une base nommée
M2M (use <span class=GramE>''M2M''&nbsp;)</span> puis une collection <span
class=SpellE>galileo</span> (<span class=SpellE>db.createCollection</span>(''<span
class=SpellE>galileo</span>'') ).</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Installation
<span class=SpellE>Node-Red</span></span></b><span style='color:black'>&nbsp;</span><b><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>:</span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
class=SpellE><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>Node-Red</span></span><span style='font-size:10.0pt;font-family:
"Arial","sans-serif";color:black'> est un outil visuel basé sur <span
class=SpellE>NodeJS</span>. Nous allons l'utiliser pour permettre à <span
class=SpellE>MongoDB</span> de récupérer les informations transitant sur <span
class=SpellE>Mosquitto</span>. Pour installer <span class=SpellE>Node-Red</span>
nous avons suivi les informations données sur le site officiel après avoir
installé <span class=SpellE>NodeJS</span> puis nous avons installé les
dépendances voulues (celles concernant <span class=SpellE>mqtt</span> par
exemple) à l'aide de <span class=SpellE>npm</span>.</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Une fois <span
class=SpellE>Node-Red</span> lancé, on peut y <span class=SpellE>acceder</span>
en entrant l'adresse &quot;<a href="http://localhost:1880/">http://localhost:1880/</a>&quot;.
Nous avons branchés 4 entrées <span class=SpellE>mqtt</span> (<span
class=SpellE>temperature</span>, <span class=SpellE>fumee</span>, feu, <span
class=SpellE>presence</span>) vers <span class=SpellE>mongodb</span> en
supprimant les champs ''<span class=SpellE>qos</span>'' et ''<span
class=SpellE>retain</span>'' (uniquement dans un souci de lisibilité lorsque
nous observions notre base) et ajouté un champ ''<span class=SpellE>timestamp</span>''
(en dehors du <span class=SpellE>payload</span>, toujours pour des raisons de
lecture) afin que les données stockées soient réellement utilisables et que
l'on puisse les classer dans le temps. </span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='mso-no-proof:yes'><!--[if gte vml 1]><v:shape id="Image_x0020_2" o:spid="_x0000_i1025"
 type="#_x0000_t75" style='width:1020.75pt;height:444pt;visibility:visible;
 mso-wrap-style:square'>
 <v:imagedata src="rapport_m2mAVANCE_fichiers/image002.png" o:title="node_red"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=1361 height=592
src="rapport_m2mAVANCE_fichiers/image002.png" v:shapes="Image_x0020_2"><![endif]></span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><b><span
style='font-size:9.0pt;font-family:"Arial","sans-serif";color:black'>Installation
et configuration d'<span class=SpellE>openHab</span></span></b></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>L'étape
suivante est d'installer et configurer <span class=SpellE>OpenHab</span> pour
observer l'état de notre installation.</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Pour
l'installation et la configuration nous nous somme aidé du site officiel d'<span
class=SpellE>openHab</span> (<a href="http://www.openhab.org/">http://www.openhab.org/</a>).
Nous avons commencé par récupérer le <span style='font-size:10.0pt;font-family:
"Arial","sans-serif";color:black'>&quot;<span class=SpellE>runtime</span> <span
class=SpellE>core</span>&quot; et les <span class=SpellE>addons</span>.</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
class=SpellE><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>OpenHab</span></span><span style='font-size:10.0pt;font-family:
"Arial","sans-serif";color:black'> doit nous permettre de </span></p>

<p style='margin-top:5.0pt;margin-right:0cm;margin-bottom:0cm;margin-left:36.0pt;
margin-bottom:.0001pt;text-indent:-18.0pt;line-height:14.2pt;mso-list:l1 level1 lfo2;
tab-stops:list 36.0pt'><![if !supportLists]><span style='font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>récupérer et afficher la température</span></p>

<p style='margin-top:5.0pt;margin-right:0cm;margin-bottom:0cm;margin-left:36.0pt;
margin-bottom:.0001pt;text-indent:-18.0pt;line-height:14.2pt;mso-list:l1 level1 lfo2;
tab-stops:list 36.0pt'><![if !supportLists]><span style='font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>récupérer et afficher la présence ou non de fumée</span></p>

<p style='margin-top:5.0pt;margin-right:0cm;margin-bottom:0cm;margin-left:36.0pt;
margin-bottom:.0001pt;text-indent:-18.0pt;line-height:14.2pt;mso-list:l1 level1 lfo2;
tab-stops:list 36.0pt'><![if !supportLists]><span style='font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>Déduire de ces deux informations la présence d'un incendie et
publier cette information</span></p>

<p style='margin-top:5.0pt;margin-right:0cm;margin-bottom:0cm;margin-left:36.0pt;
margin-bottom:.0001pt;text-indent:-18.0pt;line-height:14.2pt;mso-list:l1 level1 lfo2;
tab-stops:list 36.0pt'><![if !supportLists]><span style='font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol'><span style='mso-list:Ignore'>·<span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>récupérer l'information du capteur de présence et afficher un
message en fonction de celle-ci et de la présence ou non d'incendie</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
class=SpellE><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>OpenHab</span></span><span style='font-size:10.0pt;font-family:
"Arial","sans-serif";color:black'> doit donc pouvoir récupérer émettre des
informations sur le serveur <span class=SpellE>Mosquitto</span>. Pour cela nous
avons ajouté les <span class=SpellE>addons</span>
org.openhab.binding.mqtt-1.4.0.jar et org.openhab.persistence.mqtt-1.4.0.jar à
notre installation. Puis nous avons modifié le fichier de configuration pour
lui renseigner notre broker <span class=SpellE>mqtt</span> (<span class=SpellE>mosquitto</span>)
avec l'ajout de la ligne ''<span class=SpellE>mqtt:mosquitto.url</span>=tcp://<span
class=GramE>localhost:1883'' .</span></span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Il nous
faut ensuite définir les items qui seront utilisé par <span class=SpellE>openHab</span>.
Nous en avons de trois <span class=GramE>type</span>&nbsp;: </span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Les items
reçus par <span class=SpellE>openHab</span> depuis <span class=SpellE>Mosquitto</span>
(<span class=SpellE>Temperature_Capteur</span>, <span class=SpellE>Fumee_Capteur</span>,
<span class=SpellE>Presence</span><span class=GramE>)&nbsp;,</span> les items
envoyé par <span class=SpellE>OpenHab</span> à <span class=SpellE>Mosquitto</span>
(Feu) et les items utiles à <span class=SpellE>OpenHab</span> en interne ou
pour de l'affichage (<span class=SpellE>Quelquun</span>, <span class=SpellE>Au_Feu</span>,
<span class=SpellE>Fumee</span>). Le fichier peut être récupéré ici. </span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>On peut
voir que pour souscrire, on utilisera un «&nbsp;<span class=SpellE>mqtt</span>=&quot;&lt;&nbsp;»
alors que pour publier on utilisera «&nbsp;<span class=SpellE>mqtt</span>=&quot;&gt;&nbsp;».
</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Il reste
à calculer la présence d'un feu et préparer l'affichage.</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Pour les
''calculs'' et modifications, il faut se pencher sur le fichier <span
class=SpellE>galileo.rules</span></span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Ce
fichier contient des fonctions qui nous permettent de manipuler les items
défini plus haut.</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Nous
avons créé les fonctions <span class=SpellE>Debut</span>, <span class=SpellE>Maj</span>
<span class=SpellE>Fumee</span>, <span class=SpellE>Presence</span> de feu, <span
class=SpellE>Maj</span> <span class=SpellE>Quelquun</span>. </span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>La fonction
début nous permet d'initialiser certaines variables (le but est surtout d'avoir
un affichage par défaut si aucune notification <span class=SpellE>mqtt</span>
n'est encore parvenue).</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
class=SpellE><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>Maj</span></span><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'> <span class=SpellE>Fumee</span> permet de passer de la valeur 0/1
reçue par <span class=SpellE>mqtt</span> dans <span class=SpellE>Fumee_Capteur</span>
à une chaine Oui/Non dans <span class=SpellE>Fumee</span> (l'on pourrait faire
ce changement au moment de la <span class=SpellE>reception</span> <span
class=SpellE>mqtt</span>, mais il est plus simple de manipuler des nombres que
des chaines de caractères et l'on tient donc à garder la valeur 0/1 pour la
suite).</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
class=SpellE><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>Presence</span></span><span style='font-size:10.0pt;font-family:
"Arial","sans-serif";color:black'> de Feu, va définir si oui ou non il y a un
incendie. L'idée est simple, si la <span class=SpellE>temperature</span> est
supérieure à 40 <span class=SpellE>degrès</span> et qu'il y a de la fumée,
alors il y a le feu. </span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>On règle
les deux variables, <span class=SpellE>Au_Feu</span> (chaine de caractère) et
Feu (nombre 0/1). Ces deux variables existent pour <span class=GramE>les même raison</span>
que les variables <span class=SpellE>Fumees</span>. </span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
class=SpellE><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'>Maj</span></span><span style='font-size:10.0pt;font-family:"Arial","sans-serif";
color:black'> <span class=SpellE>Quelquun</span> prend en compte la présence ou
non d'une personne, et l'existence ou non d'un incendie pour afficher une
phrase d'information.</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Il ne
nous reste maintenant plus qu'à afficher tout ça. Cela se passe dans <span
class=SpellE>galileo.sitemap</span>.</span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Le
fichier <span class=SpellE>sitemap</span> permet de définir comment sont
organisé et affichés les différentes informations. </span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><span
style='font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Nous
avons décidé de tout simplement aligner la température, un message oui/non pour
la présence de fumée. Un message oui/non pour la présence d'un incendie et la
phrase prévue par ''<span class=SpellE>Maj</span> <span class=SpellE>Quelquun</span>''.
Quelques légères améliorations sont tout de même apportées à l'affichage brut.
L'affichage de la température changera de valeur selon la valeur de celle-ci.
Les non seront vert et les oui rouge. Et le message d'information aura une
couleur différente selon sa ''gravité''. </span></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'>Résumé</p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

<p style='margin-bottom:0cm;margin-bottom:.0001pt;line-height:14.2pt'><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>
