#!/usr/bin/bash

# Récupération des options du config.yaml via jq
export KDRIVE_TOKEN=$(bashio::config 'kdrive_token')
export KDRIVE_ID=$(bashio::config 'kdrive_id')

echo "Démarrage de la synchronisation kDrive..."

# On lance le script Python
python3 /sync_kdrive.py

echo "Synchronisation terminée."
