-- Script pour la gestion des index et analyse EXPLAIN

USE universite;

-- 1. Analyse AVANT l'ajout de l'index
-- Observez la colonne 'type' (ALL) et 'rows' dans le résultat
EXPLAIN SELECT * FROM INSCRIPTION WHERE date_inscription = '2023-09-01';

-- 2. Création de l'index pour optimiser la recherche par date
ALTER TABLE INSCRIPTION 
ADD INDEX idx_date_inscr(date_inscription);

-- 3. Analyse APRÈS l'ajout de l'index
-- Le 'type' doit devenir 'ref' ou 'range', ce qui est plus rapide
EXPLAIN SELECT * FROM INSCRIPTION WHERE date_inscription = '2023-09-01';

-- 4. Nettoyage (Suppression de l'index si nécessaire)
-- ALTER TABLE INSCRIPTION DROP INDEX idx_date_inscr;

-- 5. Statistiques de la table
ANALYZE TABLE INSCRIPTION;
OPTIMIZE TABLE INSCRIPTION;
