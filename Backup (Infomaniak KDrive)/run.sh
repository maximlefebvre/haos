#!/usr/bin/with-contenv bashio

# Debug : afficher où on est
bashio::log.info "Chemin actuel : $(pwd)"

# Récupération des options
export KDRIVE_TOKEN=$(bashio::config 'kdrive_token')
export KDRIVE_ID=$(bashio::config 'kdrive_id')

bashio::log.info "Lancement de Python..."
python3 /app/sync_kdrive.py