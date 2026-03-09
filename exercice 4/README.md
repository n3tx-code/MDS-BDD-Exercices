## Exercice 4 – Jointures avancées

Ce TP a pour objectif de manipuler différentes formes de **jointures SQL** (INNER, LEFT, CROSS, jointure récursive, filtres, agrégats) sur une base de données de festival (`artist`, `stage`, `concert`, `ticket`, `buyer`).

**Important** : Les requêtes SQL produites et les actions réalisées pour chaque exercice doivent être notées dans un document.

---

### Exercice 1

Rédiger une requête avec `INNER JOIN` qui liste les noms des artistes et le nom de la scène sur laquelle ils jouent.

### Exercice 2

Rédiger une requête avec `LEFT JOIN` qui permet d'identifier les artistes qui ne sont programmés sur **aucun concert** (recherche de valeurs `NULL`).

### Exercice 3

Rédiger une requête avec **trois tables jointes** qui affiche le nom de l'acheteur du ticket, le nom de l'artiste qu'il va voir et l'heure du concert.

### Exercice 4

Utiliser un `CROSS JOIN` pour générer toutes les combinaisons possibles entre tous les artistes et toutes les scènes (simulation de planning).

### Exercice 5

Utiliser la colonne `mentor_id` de la table `artist` pour afficher, sur une même ligne, le nom de l'artiste et le nom de son mentor (jointure de la table sur elle-même).

### Exercice 6

Rédiger une requête qui liste les artistes du style `"Rock"` avec le nom de leur scène respective (jointure + filtre sur le style).

### Exercice 7

Rédiger une requête qui trouve les scènes qui n'accueillent **aucun concert** en utilisant un `LEFT JOIN` et une condition `WHERE ... IS NULL`.

### Exercice 8

Rédiger une requête qui trouve les scènes dont le nom contient `"Main"` (opérateur `LIKE`) et affiche les artistes qui y passent.

### Exercice 9

Rédiger une requête qui liste les concerts avec le nom de l'artiste et la capacité de la scène, triés par **capacité décroissante**.

### Exercice 10

Rédiger une requête qui affiche les **revenus potentiels** (somme des prix des tickets) par artiste pour les concerts ayant lieu le soir (heure du concert strictement supérieure à `20:00:00`).
