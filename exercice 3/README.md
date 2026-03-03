## Exercice 3 – Gestion d'un catalogue de jeux vidéo

Ce TP a pour objectif de manipuler les **INSERT**, **SELECT**, **UPDATE** et **DELETE** sur un petit catalogue de jeux vidéo (éditeurs, plateformes, jeux).

---

### Exercice 1

Rédigez les requêtes pour ajouter l'éditeur **"Nintendo"** dans la table `editor` et la plateforme **"Switch"** dans la table `platform`.

### Exercice 2 

Ajoutez le jeu **"The Legend of Zelda"** dans la table `game`. Utilisez les IDs générés précédemment (**Prix : 59.99**, **Stock : 10**).

### Exercice 3

Ajoutez les éditeurs **"Ubisoft"** et **"Sony"** en utilisant **deux requêtes** `INSERT`.

### Exercice 4

Ajoutez les plateformes **"PS5"**, **"Xbox Series"** et **"PC"** en **une seule** requête `INSERT`.

### Exercice 5

Ajoutez **deux jeux** pour l'éditeur **"Sony"** sur la plateforme **"PS5"** (ex : *Spider-Man* et *God of War*) avec des **prix** et **stocks** différents.

### Exercice 6

Affichez **toutes les colonnes** des jeux dont le stock est compris **entre 1 et 20** (opérateur `BETWEEN`).

### Exercice 7

Affichez **uniquement les noms** des éditeurs, triés par ordre alphabétique (**A-Z**).

### Exercice 8

Affichez les **titres de tous les jeux** qui contiennent le mot **"Legend"** dans leur nom (utilisation de `LIKE`).

### Exercice 9

Affichez le **titre** et le **prix** des jeux dont le prix est **strictement supérieur à 50€**, triés du **plus cher au moins cher**.

### Exercice 10 

Modifiez le nom de l'éditeur **"Ubisoft"** pour qu'il devienne **"Ubisoft Montpellier"** dans la table `editor`.

### Exercice 11

Augmentez de **5€** le prix de tous les jeux liés à la plateforme **"Switch"** (en utilisant son `id`).

### Exercice 12

Définissez le **stock à 50** pour tous les jeux dont le stock actuel est **inférieur à 5**.

### Exercice 13

Suite à une erreur, tous les jeux de **l'éditeur avec l'id 2** doivent être transférés sur la **plateforme avec l'id 3**. Modifiez leur `platform_id`.

### Exercice 14

Tentez de **supprimer la plateforme "Switch"** de la table `platform`.  
Observez le **message d'erreur**. Expliquez **pourquoi** l'opération est bloquée.

### Exercice 15

Supprimez d'abord **tous les jeux liés à la Switch**, puis supprimez la plateforme **"Switch"** elle-même.

### Exercice 16

Supprimez tous les jeux dont le prix est **inférieur à 10€** (fin de licence).

### Exercice 17

Réaliser le processus de suppression de l'éditeur **"Sony"** de la table `editor`. 
