# Exercice 2

## Contexte
Import d'une table unique `import_ventes` de lignes mal structurées qui provient d'un fichier Excel d'un service fictif de ventes de produits.

**Important** : Les requêtes SQL produites et les actions réalisés de chaque exercice doivent être notés dans un document.

## Bloc 1 : Exercices d'audit et de critique (détecter les défauts)

### Exercice 1
Compter le nombre de clients réels vs le nombre total des ventes.

### Exercice 2
Lister les produits sans prix (`NULL`).

### Exercice 3
Trouver les codes postaux invalides avec `NOT LIKE`.

## Bloc 2 : Exercices de production de rapports (répondre à un besoin)

### Exercice 4
Retourner les clients de Paris, Lyon et Toulouse (IN)

### Exercice 4.1
Retourner les mêmes clients que l'exercice 4 mais que si le nom du client est "Martin" ou "Dupont" .

### Exercice 4.2
Retourner les mêmes clients que l'exercice 4 mais dont le prénom commence par un "N" (LIKE)

### Exercice 4.3
Retourner les mêmes clients que l'exercice 4 mais dont le nom contient un "E" et le prénom commence par un "A" (LIKE)

### Exercice 5
Retourner les ventes de décembre 2025 et dont le montant est supérieur à 500€, triées par prix décroissant.

### Exercice 6
Retourner les comptes clients qui ont des mails invalides.

### Exercice 6.1
Retourner les comptes clients qui n'ont pas de mail.

### Exercice 6.2
Retourner les comptes clients qui n'ont pas de mail ou qui ont un mail invalide.

### Exercice 7
Retourner les marques qui ont des produits avec un prix entre 100€ et 1000€, afficher qu'une fois le nom de la marque.

### Exercice 7.1
Faites la même requête que l'exercice 7 mais afficher en plus le prix moyen, le prix maximum et le prix minimum des produits de la marque.

### Exercice 8
Retourner le nom, prénom, mail des clients qui se sont inscrit le jour même de leur premier achat.

## Bloc 3 : Exercices de logique avancée et défis syntaxiques

### Exercice 9
Trouver les produits qui sont soit de la marque "Apple", soit de la marque "Samsung" **ET** dont le prix est inférieur à 100€.

### Exercice 10
Générer un annuaire des clients trié par pays (ordre alphabétique), puis par ville (ordre alphabétique), puis par date d'inscription (de la plus récente à la plus ancienne).

### Exercice 11
Lister les ventes qui n'ont pas été faites en France, Italie ou Espagne (`NOT IN`) et dont le montant est supérieur à 100€.

### Exercice 12
Trouver les adresses de livraison qui ont eu lieu en 2024 et où l'adresse de livraison est une place.

### Exercice 13
Créer une requête qui affiche le "nom du produit", son "prix TTC" (prix * 1.20), son "prix HT" (colonne produit_prix) et sa "disponibilité" en renommant chaque colonne avec un alias lisible.

### Exercice 14
Proposer un schéma en 3 tables pour corriger la base.
