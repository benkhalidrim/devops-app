# Image de base Python
FROM python:3.12-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier tous les fichiers du dossier courant vers /app dans le conteneur
COPY . .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Commande pour lancer ton app (backend)
CMD ["python", "backend/app.py"]

