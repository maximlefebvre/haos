# Utilisation de l'image de base Home Assistant (choisissez l'architecture adaptée)
# Pour Raspberry Pi 4/5, utilisez : ghcr.io/home-assistant/aarch64-base:latest
# Pour PC/Intel/NUC, utilisez : ghcr.io/home-assistant/amd64-base:latest
ARG BUILD_FROM
FROM $BUILD_FROM

# Installation des paquets nécessaires
RUN apk add --no-cache python3 py3-pip py3-requests bash dos2unix

# On se place dans un répertoire de travail clair
WORKDIR /app

# Copie des fichiers
COPY run.sh .
COPY sync_kdrive.py .

# Conversion forcée du format de fichier (Windows -> Linux) et permissions
RUN dos2unix run.sh && chmod +x run.sh

# On utilise le chemin absolu vers le script
CMD [ "/app/run.sh" ]