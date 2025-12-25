#!/bin/bash
# Script pour automatiser la sauvegarde, la restauration et l'optimisation

USER="root"
DB_NAME="universite"
BACKUP_FILE="universite_full.sql"

echo "--- Sauvegarde en cours ---"
# mysqldump pour la sauvegarde complète
mysqldump -u $USER -p --routines --triggers --events --single-transaction $DB_NAME > $BACKUP_FILE

echo "--- Optimisation des tables ---"
# Analyse et optimisation demandées
mysql -u $USER -p -e "ANALYZE TABLE universite.INSCRIPTION; OPTIMIZE TABLE universite.INSCRIPTION;"

echo "--- Restauration de test ---"
mysql -u $USER -p -e "CREATE DATABASE IF NOT EXISTS universite_test;"
mysql -u $USER -p universite_test < $BACKUP_FILE
