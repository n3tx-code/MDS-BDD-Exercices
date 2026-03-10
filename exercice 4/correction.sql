correction.sql_bug
-- Exercice 4 – Corrections des requêtes de jointures

-- Exercice 1 : Inner Join
-- Lister les noms des artistes et le nom de la scène sur laquelle ils jouent.
SELECT
    a.artist_name,
    s.stage_name
FROM concert c
INNER JOIN artist a ON c.artist_id = a.artist_id
INNER JOIN stage  s ON c.stage_id = s.stage_id;


-- Exercice 2 : Left Join (NULL)
-- Identifier les artistes qui ne sont programmés sur aucun concert.
SELECT
    a.artist_id,
    a.artist_name,
    a.style
FROM artist a
LEFT JOIN concert c ON c.artist_id = a.artist_id
WHERE c.concert_id IS NULL;


-- Exercice 3 : Jointure triple
-- Afficher le nom de l'acheteur, le nom de l'artiste et l'heure du concert.
SELECT
    b.buyer_name,
    a.artist_name,
    c.concert_time
FROM ticket t
INNER JOIN buyer   b ON t.buyer_id  = b.buyer_id
INNER JOIN concert c ON t.concert_id = c.concert_id
INNER JOIN artist  a ON c.artist_id  = a.artist_id;


-- Exercice 4 : Cross Join
-- Générer toutes les combinaisons possibles entre artistes et scènes.
SELECT
    a.artist_name,
    s.stage_name
FROM artist a
CROSS JOIN stage s;


-- Exercice 5 : Jointure récursive (self join)
-- Afficher le nom de l'artiste et le nom de son mentor.
SELECT
    child.artist_name  AS artist_name,
    mentor.artist_name AS mentor_name
FROM artist child
LEFT JOIN artist mentor
    ON child.mentor_id = mentor.artist_id;


-- Exercice 6 : Jointure & filtre
-- Lister les artistes de style "Rock" avec le nom de leur scène.
SELECT DISTINCT
    a.artist_name,
    s.stage_name
FROM artist a
INNER JOIN concert c ON c.artist_id = a.artist_id
INNER JOIN stage  s ON s.stage_id  = c.stage_id
WHERE a.style = 'Rock';


-- Exercice 7 : Jointure & exclusion
-- Trouver les scènes qui n'accueillent aucun concert.
SELECT
    s.stage_id,
    s.stage_name,
    s.capacity
FROM stage s
LEFT JOIN concert c ON c.stage_id = s.stage_id
WHERE c.concert_id IS NULL;


-- Exercice 8 : Jointure & LIKE
-- Trouver les scènes dont le nom contient "Main" et afficher les artistes qui y passent.
SELECT DISTINCT
    s.stage_name,
    a.artist_name
FROM stage s
INNER JOIN concert c ON c.stage_id = s.stage_id
INNER JOIN artist  a ON a.artist_id = c.artist_id
WHERE s.stage_name LIKE '%Main%';


-- Exercice 9 : Jointure & tris
-- Lister les concerts avec nom de l'artiste et capacité de la scène,
-- triés par capacité décroissante.
SELECT
    c.concert_id,
    a.artist_name,
    s.stage_name,
    s.capacity
FROM concert c
INNER JOIN artist a ON c.artist_id = a.artist_id
INNER JOIN stage  s ON c.stage_id  = s.stage_id
ORDER BY s.capacity DESC;


-- Exercice 10 : Défi mixte
-- Afficher les revenus potentiels (somme des tickets) par artiste
-- pour les concerts ayant lieu le soir (> 20h).
SELECT
    a.artist_name,
    SUM(t.price) AS total_revenue
FROM concert c
INNER JOIN artist a ON c.artist_id   = a.artist_id
INNER JOIN ticket t ON t.concert_id  = c.concert_id
WHERE c.concert_time > TIME '20:00:00'
GROUP BY a.artist_name
ORDER BY total_revenue DESC;

