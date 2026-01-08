# Utilisation de l'image de base Home Assistant (choisissez l'architecture adaptée)
# Pour Raspberry Pi 4/5, utilisez : ghcr.io/home-assistant/aarch64-base:latest
# Pour PC/Intel/NUC, utilisez : ghcr.io/home-assistant/amd64-base:latest
ARG BUILD_FROM
FROM $BUILD_FROM

# Installation des dépendances
RUN apk add --no-cache python3 py3-pip py3-requests dos2unix

# Copie de toute l'arborescence rootfs dans la racine du conteneur
COPY rootfs /
COPY sync_kdrive.py /sync_kdrive.py

# On s'assure que le script de service est au format Linux et exécutable
RUN dos2unix /etc/services.d/kdrive/run && chmod +x /etc/services.d/kdrive/run