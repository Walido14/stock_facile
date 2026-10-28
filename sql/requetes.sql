-- Q1.5.1 : tous les produits
select * from produits;

-- Résultat : 6 lignes
-- 1  Huile d'olive 1 L      18.5   24   1  2026-10-01T09:00:00  1
-- 2  Couscous moyen 1 kg     2.3   40   1  2026-10-01T09:05:00  1
-- 3  Eau minérale 1,5 L      0.85  120  1  2026-10-02T10:00:00  2
-- 4  Jus d'orange 1 L        3.2    0   0  2026-10-02T10:10:00  2
-- 5  Savon de Marseille      2.9   15   1  2026-10-03T11:00:00  3
-- 6  Cahier 96 pages         1.6   60   1  2026-10-04T08:30:00  4

-- Q1.5.2 : produits en rupture de stock
select * from produits where quantite = 0;

-- Résultat : 1 ligne
-- 4  Jus d'orange 1 L        3.2    0   0  2026-10-02T10:10:00  2

-- Q1.5.3 : produits du plus cher au moins cher
select * from  produits order by prix desc;

-- Résultat : 6 lignes
-- 1  Huile d'olive 1 L      18.5   24   1  2026-10-01T09:00:00  1
-- 4  Jus d'orange 1 L        3.2    0   0  2026-10-02T10:10:00  2
-- 5  Savon de Marseille      2.9   15   1  2026-10-03T11:00:00  3
-- 2  Couscous moyen 1 kg     2.3   40   1  2026-10-01T09:05:00  1
-- 6  Cahier 96 pages         1.6   60   1  2026-10-04T08:30:00  4
-- 3  Eau minérale 1,5 L      0.85  120  1  2026-10-02T10:00:00  2

-- Q1.5.4 : nom de chaque produit avec le nom de sa catégorie
select produits.nom as produit, categories.nom as categorie
from produits
INNER JOIN categories on produits.categorie_id = categories.id;

-- Résultat : 6 lignes
-- Huile d'olive 1 L      Alimentation
-- Couscous moyen 1 kg    Alimentation
-- Eau minérale 1,5 L     Boissons
-- Jus d'orange 1 L       Boissons
-- Savon de Marseille     Hygiène
-- Cahier 96 pages        Papeterie

-- Q1.5.5 : nombre de produits par catégorie
select categories.nom as categorie, count(produits.id) as nb_produits
from categories, produits
where produits.categorie_id = categories.id
group by categories.id;

-- Résultat : 4 lignes
-- Alimentation  2
-- Boissons      2
-- Hygiène       1
-- Papeterie     1

-- Q1.5.6 : valeur totale du stock
select sum(prix * quantite) as valeur_stock from produits;

-- Résultat : 777.5