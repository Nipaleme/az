# README Patchs Formation Lyon

*Ecrit par Adrien Zanni*


Utilisation de trois logiciels : 
1. Panoramix pour la spatialisation de sources sonores
2. IanniX pour la génération de trajectoires spatio-temporelles
3. Max en tant qu'interface de communication entre Panoramix et IanniX


-----------------

## Téléchargement :
 - Panoramix : https://forum.ircam.fr/projects/detail/panoramix/
 - IanniX : https://www.iannix.org/fr/download-iannix/
 - Max : https://cycling74.com/downloads
 - Librairie Spat : https://forum.ircam.fr/projects/detail/spat/
 - Librairie Ease : Depuis le package manager de Max
 - Librairie Dada : Depuis le package manager de Max
 - Librairie Bach : Depuis le package manager de Max



## Installation:
1. Installer Panoramix, IanniX, Max avec leurs installeurs respectifs
2. Copier le package Spat dans Document/Max 8/packages et redémarrer Max
3. Installer les librairies Ease, Dada et Bach depuis le package Manager de Max (file -> "Show Package Manager")
4. Ajouter le dossier 3-Patchs Max aux File Preferences de Max et penser à activer la case "subfolders" (Options -> "File Preference..."). 

-------------------

## Lancement:
1. Ouvrir Panoramix
2. Ouvrir IanniX et ajouter le répertoire "2-Session Panoramix" aux "Files" puis double-clicker sur Base pour ouvrir la partition Base.iannix
3. Ouvrir Max et lancer le projet "Interface_IanniX_Pano.maxproj" qui se trouve dans le dossier "4-Projet_Max/Interface_IanniX_Pano".
4. Ouvrir les trois patchs qui se trouvent dans le projet Max : 
    - Interface_010.maxpat
    - dada.bounce.lyon_003.maxpat
    - ht.dada.boids.Lyon_003.maxpat
5. Clicker sur "OPEN" dans l'interface du Patch Max et sélectionner le preset Panoramix Base.txt qui se trouve dans "2-Session Panoramix" 
6. Vérifier qu'il n'y a pas d'erreurs en rouge dans la console de Max.

-----------------

## NOTES
- Les sources Mono crées dans Panoramix apparaitrons sous forme de curseurs dans IanniX et pourront être asservis à des courbes IanniX ou des modèles physique depuis l'interface de Max.

- <span style="color: red;"><span>
Pour voir apparaitre les courbes de IanniX dans Max il faudra faire Ctrl+S (ou Cmd+S sur Mac) dans l'interface de IanniX au moins une fois. A chaque création d'une nouvelle courbe dans IanniX, penser à faire Ctrl+S pour la faire apparaitre dans l'interface Max. 
- <span style="color: red;"><span>
Pour des courbes crées depuis l'interface GUI de IanniX une seconde sauvegarde ( Ctrl+S ) de IanniX sera necessaire, la première servant à conformer l'ID de la courbe nouvellement crée. 
- Le dossiers "1-Partition Iannix" n'est pas nécessaire à l'utilisateur.

