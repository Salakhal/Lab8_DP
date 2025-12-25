# Lab 8 : Sauvegarde, Restauration et Optimisation de Bases de Données

## 🎯 Objectifs
Ce laboratoire traite de l'administration avancée des bases de données MySQL/MariaDB, en mettant l'accent sur la sécurité des données et l'amélioration des performances.

---

## 📂 Structure du Dépôt
* **`universite_full.sql`** : Sauvegarde intégrale (Structure + Données + Routines + Triggers).
* **`backup_restore.sh`** : Script Bash pour l'automatisation des tâches.
* **`lab8_indexes.sql`** : Script contenant les requêtes d'indexation et d'analyse.
* **`etudiants.csv`** : Exportation de la table ETUDIANT.
* **`examens.json`** : Exportation des scores au format JSON.
* **`Ex1.jpg`** : Capture d'écran de la restauration et vérification.
* **`Ex2.jpg`** : Capture d'écran de l'optimisation et analyse EXPLAIN.

---

## 🛠️ Réalisations

### 1. Sauvegarde et Restauration
Nous avons effectué une sauvegarde complète via `mysqldump` incluant la logique métier (procédures et déclencheurs). Les données ont ensuite été restaurées dans une base de test `universite_test`.

#### Vérification de la Restauration :
![Ex1](https://github.com/user-attachments/assets/145176a7-e4e9-4c62-b66a-c2b30c789e86)


### 2. Exports de Données
* **CSV** : Utilisation de `SELECT ... INTO OUTFILE` avec des délimiteurs spécifiques pour l'interopérabilité.
* **JSON** : Exportation réalisée via l'interface MySQL Workbench pour des besoins d'intégration Web.

### 3. Optimisation et Performance
* **Indexation** : Création d'un index sur `date_inscription` pour accélérer les recherches.
* **Analyse** : Utilisation de `EXPLAIN` pour comparer le coût des requêtes avant et après optimisation.
* **Maintenance** : Application des commandes `ANALYZE` et `OPTIMIZE TABLE`.

#### Analyse des Performances (EXPLAIN) :
![Ex2](https://github.com/user-attachments/assets/66fce6af-25f6-411d-a6b9-22c93ee580e6)

---

## 👤 Auteur

* **École Normale Supérieure de Marrakech**
  
* **Réalisé par :** SALMA LAKHAL
  
* **Filière  :** CLE_INFO_S5
  
* **Date :**  21/12/2025
  
* **Encadré par :** Pr. Mohamed LACHGAR

* **Module :** `BASE DE DONNEE `
