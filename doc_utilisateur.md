# Documentation Utilisateur


## Utilisation de base

### Arboressence des menus

1. ### Cible utilisateur
        1. Information

                1. Date de dernière connexion
                2. Date de la dernière modification du mot de passe
                3. Liste des sessions ouvertes par l'utilisateur
                4. A quelle groupe appartient l'utilisateur
                5. Liste des commandes utiliser par l'utilisateur
                6. Droit et permissions de l'utilisateur sur un dossier
                7. Droit et permissions de l'utilisateur sur un fichier
                8. Recherche des événements dans le fichier log_evt.log pour un utilisateur
                9. Retour au menu précédent

        2. Action
        

                1. Création d'un compte local
                2. Changer le mot de passe d'un compte
                3. Suppression d'un compte utilisateur
                4. Désactivation d'un compte utilisateur local
                5. Ajout a un groupe d'administration
                6. Ajout a un groupe local
                7. Sortie d'un groupe local
                8. Retour au menu précédent

        3. Retour au menu précédent
2. ### Cible Ordinateur
        1. Information

                1. Version de l'OS
                2. Nombre de disque
                3. Partition(nombres,nom,FS,taille)
                4. Espace disque restant sur par partitions
                5. Nom et espace disque d'un dossier(nom de dossier demandé)
                6. Liste des lecteurs monté (disque,CD,etc...)
                7. Liste des applications/paquets installées
                8. Liste des services en cours d'execution
                9. Liste des utilisateurs locaux
                10. Memoire RAM total
                11. Utilisation de la RAM
                12. Recherche des événements dans le fichier log_evt.log pour la machine
                13. Retour au menu précédent

        2. Action

                1. Arrêt
                2. Redémarrage
                3. Verrouillage
                4. Mise a jour du système
                5. Creation de repertoire
                6. Modification de repertoire
                7. Suppression d'un repertoire
                8. Prise de main a distance
                9. Activation du pare-feu
                10. Désactivation du pare-feu
                11. Installation de logiciel
                12. Désinstallation de logiciel
                13. Execution de script sur la machine distante
                14. Retour au menu précédent

        3. Retour au menu précédent

## Comment l'utiliser

Pour utiliser SUMO, une fois le script lancé il vous suffit de naviguer dans les menu en tapant le numero correspondant aux choix que voulez voulez effectuer.

au lancement du script il vous seras demander d'entrer un nom d'utilisateur et de cibler une machine, pour viser la machine il faudra entrer l'adresse IP de la machine distante

Par exemple si vous voulez desactiver le par feu vous devrez effectuer ces action :
1. taper 2 pour cibler un ordinateur
2. taper 2 pour acceder aux actions a effectuer
3. taper 10 pour desactiver le par feu

## Utilisation avancée

vous pouvez retrouver 2 fichiers d'information
- info_utilisateurs_dates.txt qui enrengistre toutes les informations que vous avez demander qui ce trouve dans 
**C:\Users\Administrator\Documents** pour windows et pour Linux il ce trouve dans **/home/Documents/**

- log_evt.log qui enrengistre toutes les activité comme les actions et demande d'information qui
ont été effectué qui ce trouve dans **C:\Windows\System32\LogFiles** et pour linux il ce trouve dans **/var/log** 
