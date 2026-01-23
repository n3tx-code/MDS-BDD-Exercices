# Exercices de Base de Données

Ces exercices s'appuient sur le schéma de base de données défini dans le fichier `schema.sql`.

**Important** : Les résultats, les requêtes SQL produites par phpMyAdmin et les actions réalisés de chaque exercice doivent être notés dans un document.

## Exercice 1

1. Ouvrir l'onglet "Concepteur".
2. Réorganiser les tables pour que le schéma soit lisible.
3. Prendre une capture d'écran du schéma et la joindre au document.
4. Indiquer quelle table est la table mère (celle qui n'a pas de clé étrangère mais qui est pointée par les autres).

## Exercice 2

1. Parcourir la table `utilisateur`.
2. Lister les colonnes et justifier pourquoi tel type a été choisi.
3. Trouver une colonne qui pourrait être optimisée.

## Exercice 3

1. Trouver une publication précise dans la table `publication`.
2. Noter la valeur de sa clé primaire (id).
3. Aller dans la table `commentaire` et retrouver tous les messages liés à cette publication en utilisant la clé étrangère.

## Exercice 4

1. Insérer manuellement une nouvelle ligne dans `utilisateur` via l'onglet "Insérer".
2. Ajouter une nouvelle publication dans la table `publication` dont l'auteur est l'utilisateur nouvellement créé.
3. Indiquer comment faire pour que l'utilisateur nouvellement créé ai un commentaire sur sa propre publication.

## Exercice 5

1. Essayer d'insérer un commentaire lié à un utilisateur qui n'existe pas (id = 999 par exemple).
2. Indiquer la requête SQL produite par phpMyAdmin et la raison pour laquelle elle a échoué.

## Exercice 6 : Le simulateur de recherche visuel

1. Utiliser l'onglet "Rechercher" de phpMyAdmin pour trouver tous les utilisateurs dont le mail contient "gmail".
2. Noter la requête SQL que phpMyAdmin a générée automatiquement en haut de l'écran pour préparer la session 2.

## Exercice 7 : Test des valeurs nulles

1. Essayer de créer un utilisateur sans lui donner de pseudo.
2. Observer la contrainte NOT NULL en action et comprendre pourquoi certaines informations sont obligatoires.

## Exercice 8

1. Noter le nombre de publications et de commentaires d'un utilisateur actif avant suppression.
2. Supprimer cet utilisateur actif (qui a déjà posté des messages ou des commentaires).
3. Observer ce qui se passe dans la table `publication` et `commentaire` pour vérifier les éléments liés à cet utilisateur, que c'est-il passé ?
4. Indiquer la requête SQL produite par phpMyAdmin et expliquer le comportement de suppression en cascade.

## Exercice 9

1. Dans la table `commentaire`, repérer une ligne où `parent_commentaire_id` n'est pas vide.
2. Expliquer ce que ça veut dire.
3. Retrouver le contenu du commentaire original (le parent) d'un thread de commentaires.

## Exercice 10

1. Identifier un commentaire qui a des enfants (des commentaires qui le référencent comme parent via `parent_commentaire_id`).
2. Tenter de supprimer ce commentaire parent.
3. Observer le blocage et indiquer la requête SQL produite par phpMyAdmin ainsi que le message d'erreur.
4. Expliquer pourquoi MySQL bloque la suppression et quelle est la différence avec le comportement observé dans l'exercice 8.

## Exercice 11

1. Trouver tous les commentaires qui sont une réponse directe à une publication.
2. Indiquer comment identifier ces commentaires dans la table `commentaire`.

## Exercice 12

1. Exporter toute la table `utilisateur` sans les données (juste le schéma/structure).
1.1. Exporter la table `utilisateur` avec la structure et les données.
2. Pour l'export de structure, corriger l'erreur que vous avez relevée dans l'exercice 2 (par exemple, changer le type de la colonne `age` de TEXT à INT).
