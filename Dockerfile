# Utilise Python
FROM python:3.11-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le code
COPY backend/ backend/
COPY frontend/ frontend/
COPY requirements.txt .

# Installer les dépendances
RUN pip install -r requirements.txt

# Exposer le port Flask
EXPOSE 5000

# Commande pour lancer l'app
CMD ["python", "backend/app.py"]
