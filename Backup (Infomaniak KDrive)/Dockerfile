# Utilisation de l'image de base Home Assistant (choisissez l'architecture adaptée)
# Pour Raspberry Pi 4/5, utilisez : ghcr.io/home-assistant/aarch64-base:latest
# Pour PC/Intel/NUC, utilisez : ghcr.io/home-assistant/amd64-base:latest
ARG BUILD_FROM
FROM $BUILD_FROM

# 1. Installation de Python et des outils nécessaires via apk
RUN apk add --no-cache \
    python3 \
    py3-pip

# 2. Création d'un environnement virtuel (recommandé pour éviter les erreurs de "break-system-packages")
# Ou plus simplement pour un add-on, forcer l'installation :
RUN pip3 install --no-cache-dir requests --break-system-packages

# 3. Copie des fichiers de votre projet
COPY sync_kdrive.py /sync_kdrive.py
COPY run.sh /run.sh

# 4. Permissions
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]