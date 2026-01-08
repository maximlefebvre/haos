ARG BUILD_FROM
FROM $BUILD_FROM

# Installation des dépendances
RUN apk add --no-cache python3 py3-pip py3-requests

# Copie des fichiers
COPY sync_kdrive.py /sync_kdrive.py
COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
