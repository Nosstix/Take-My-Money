CREATE DATABASE tmm;

USE tmm;

-- Table des categorie depense
CREATE TABLE categorie_dep (
    id INT AUTO_INCREMENT PRIMARY KEY,
    libelle VARCHAR(255) NOT NULL
);

-- Table des categorie Portefeuille
CREATE TABLE categorie_pf (
    id INT AUTO_INCREMENT PRIMARY KEY,
    libelle VARCHAR(255) NOT NULL
);

-- Table des Utilisateur
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Table des Portefeuille
CREATE TABLE portefeuille (
    id INT AUTO_INCREMENT PRIMARY KEY,
    montant int NOT NULL,
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (categorie_pf_id) REFERENCES categorie_pf(id)
);

-- Table des Dépense
CREATE TABLE depense (
    id INT AUTO_INCREMENT PRIMARY KEY,
    montant int NOT NULL,
    libelle VARCHAR(255) NOT NULL,
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email VARCHAR(255) NOT NULL,
    FOREIGN KEY (portefeuille_id) REFERENCES portefeuille(id),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (categorie_dep_id) REFERENCES categorie_dep(id)
);
