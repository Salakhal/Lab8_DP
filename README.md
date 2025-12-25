# Lab 8 : Sauvegarde, Restauration et Optimisation de Bases de Données

## 🎯 Objectif
L'objectif de ce laboratoire est d'apprendre à protéger et restaurer les données via les outils de sauvegarde MySQL (CLI et Workbench), puis d'optimiser les performances des requêtes et du schéma à l'aide des index et des plans d'exécution.

---

## 🛠️ Étapes Réalisées

### 1. Sauvegarde et Restauration (CLI)
* **Sauvegarde complète** : Utilisation de `mysqldump` avec les options `--routines`, `--triggers` et `--events` pour inclure toute la logique métier.
* **Sauvegardes partielles** : Génération de fichiers séparés pour la structure seule (`--no-data`) et les données seules (`--no-create-info`).
* **Restauration** : Importation du fichier SQL dans une base de test `universite_test` via la commande `mysql -u root -p`.

### 2. Export et Import CSV
* Exportation de la table `ETUDIANT` vers un fichier CSV en utilisant `SELECT ... INTO OUTFILE`.
* Importation des données dans une table miroir `etudiant_csv` via la commande `LOAD DATA INFILE`.

### 3. Utilisation de MySQL Workbench
* Exportation et importation de la base de données via l'interface graphique (**Server -> Data Export/Import**).
* Exportation des scores d'examen au format **JSON**.

### 4. Optimisation des Performances
* **Indexation** : Création d'un index sur la colonne `date_inscription` de la table `INSCRIPTION` pour accélérer les recherches.
* **Analyse (EXPLAIN)** : Utilisation de la commande `EXPLAIN` avant et après l'ajout de l'index pour comparer le type de scan (passage de `ALL` à `ref`).
* **Maintenance** : Exécution des commandes `ANALYZE TABLE` et `OPTIMIZE TABLE` pour réorganiser l'espace disque et mettre à jour les statistiques.

---

## 📂 Contenu du Dépôt
* `backup_restore.sh` : Script Bash automatisant la sauvegarde, la restauration et l'optimisation.
* `lab8_indexes.sql` : Script contenant les requêtes de création d'index et les analyses `EXPLAIN`.

---

