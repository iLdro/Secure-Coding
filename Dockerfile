FROM node:20-buster as installer
COPY . /juice-shop
WORKDIR /juice-shop

# Installer les dépendances
RUN npm install

# Exposer le port 3000 pour accéder à l'application
EXPOSE 3000

# Lancer l'application
CMD ["npm", "start"]
