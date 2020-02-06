
1 Installation

Le depot scripts doit etre installé dans un repertoire local à partir du dépot github.

ce répertoire doit contenir un fichier <nom du projet>.cnf qui contient la configuration de l'environnement du projet (voir par exemple cbi-test-38.cnf )

. subrepo doit etre installé voir https://github.com/ingydotnet/git-subrepo
. clone du dépot Moodle
. créer une branche pour le projet par exemple cbi-test-38 à partir de la branche MOODLE_38_STABLE

2 Liste des commandes avec leurs parametres 

. checkplugin : teste si le plugin est à jour dans le depot local et le met à jour si $4='O' 
# 1 : projet
# 2 : nom du plug in
# 3 : branche du plug in (défaut master)
# 4 : O update if necessary

. checkproject : teste si tous les plugins d'un projet sont à jour
# 1 : projet

. chgversion : restore une version source précédente du projet 

# 1 nom du projet
# 2 version

. clone : clone un plugin sur un depot (github, bitbucket) dans un dépot git local

# 1 nom du projet
# 2 github bitbucket
# 3 parametre nom du propriétaire du dépot 
# 4 parametre nom du plugin frankenstyle 
# 5 nom de la branche à récuperer; par défaut master
# 6 nom dans le depot upstream (par defaut idem parametre 3

. deploy : construit un nouveau build

# 1 nom du projet
# 2 message du tag créé lors du déploiement (optionel)

. majprojectweekly : mets à jour la branche projet avec les derniéres mises de la branche stable Moodle

# 1 nom du projet

. projectupdm : utiliser lors d'un changement majeure de version; création d'une nouvelle base de code à partir de la liste existante des plugins
la liste des projets se trouve dans $SCRIPTS_MOODLE/$PROJECT.plugins
cette liste est mise à jour lors de l'éxécution  de la commande updm

# 1 : projet

. purge version
 les diffrentes versions sont dans   $RACINE/services/web/$PROJECT/releases

# 1 nom du PROJECT
# 2 tag  de la version

. rmplugin : suprimer un plugin de la base de code 
# 1 : PROJECT
# 2 : nom du module à supprimer

. updm : ajout d'un plugin à la base de code
# 1 : PROJECT
# 2 : nom du module à ajouter
# 3 : branche du plug in (défaut master)

3 Pour ajouter un plugin :

 . clone d'un plugin dans le depot local : clone 
 . mise à jour de la base de code : updm
 . deploiement : deploy 
 
 That's All !