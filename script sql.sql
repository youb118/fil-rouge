create database Village_Green;

CREATE TABLE Fournisseur(
   id_fou NOT NULL AUTO_INCREMENT,
   nom_fou VARCHAR(50) NOT NULL,
   ville_fou VARCHAR(50) NOT NULL,
   adresse_fou VARCHAR(255) NOT NULL,
   zipcode_fou VARCHAR(5) NOT NULL,
   type_fou VARCHAR(50) NOT NULL,
   phone_fou INT,
   mail_fou VARCHAR(255) NOT NULL,
   PRIMARY KEY(id_fou)
);

CREATE TABLE Employé(
   id_emp NOT NULL AUTO_INCREMENT,
   nom_emp VARCHAR(50) NOT NULL,
   prenom_emp VARCHAR(50) NOT NULL,
   phone_emp INT NOT NULL,
   fonction_emp VARCHAR(50) NOT NULL,
   mail_emp VARCHAR(100) NOT NULL,
   PRIMARY KEY(id_emp)
);

CREATE TABLE Catégorie(
   id_cat NOT NULL AUTO_INCREMENT,
   nom_cat VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_cat)
);

CREATE TABLE Client(
   id_cli NOT NULL AUTO_INCREMENT,
   nom_cli VARCHAR(50) NOT NULL,
   prenom_cli VARCHAR(50) NOT NULL,
   adresse_cli VARCHAR(255) NOT NULL,
   zipcode_cli VARCHAR(5) NOT NULL,
   ville_cli VARCHAR(20) NOT NULL,
   phone_cli INT NOT NULL,
   mail_cli VARCHAR(100) NOT NULL,
   adr_livraison_cli VARCHAR(255) NOT NULL,
   ville_livraison_cli VARCHAR(50) NOT NULL,
   zipcode_livr_cli VARCHAR(5) NOT NULL,
   type_cli VARCHAR(50) NOT NULL,
   id_emp INT NOT NULL,
   PRIMARY KEY(id_cli),
   FOREIGN KEY(id_emp) REFERENCES Employé(id_emp)
);

CREATE TABLE commande(
   id_com NOT NULL AUTO_INCREMENT,
   date_com DATE NOT NULL,
   etat_com VARCHAR(50) NOT NULL,
   prix_total_com DECIMAL(8,2) NOT NULL,
   id_cli INT NOT NULL,
   PRIMARY KEY(id_com),
   FOREIGN KEY(id_cli) REFERENCES Client(id_cli)
);

CREATE TABLE Facturation(
   id_fac NOT NULL AUTO_INCREMENT,
   reduction_fac INT,
   reduc_sup_fact INT,
   date_fact DATE,
   total_fact DECIMAL(8,2) NOT NULL,
   etat_fact VARCHAR(50) NOT NULL,
   type_paiement_fact VARCHAR(50) NOT NULL,
   id_com INT NOT NULL,
   PRIMARY KEY(id_fac),
   FOREIGN KEY(id_com) REFERENCES commande(id_com)
);

CREATE TABLE sous_categorie(
   sous_cat_id NOT NULL AUTO_INCREMENT,
   nom_sous_cat VARCHAR(50) NOT NULL,
   id_cat INT NOT NULL,
   PRIMARY KEY(sous_cat_id),
   FOREIGN KEY(id_cat) REFERENCES Catégorie(id_cat)
);

CREATE TABLE Livraison(
   id_liv NOT NULL AUTO_INCREMENT,
   date_liv DATE,
   quantité_liv INT NOT NULL,
   date_expedition_liv DATE,
   id_com INT NOT NULL,
   PRIMARY KEY(id_liv),
   FOREIGN KEY(id_com) REFERENCES commande(id_com)
);

CREATE TABLE Produit(
   id_pro NOT NULL AUTO_INCREMENT,
   prix_vente_pro DECIMAL(8,2) NOT NULL,
   prix_achat_pro DECIMAL(8,2) NOT NULL,
   ref_pro VARCHAR(50) NOT NULL,
   libelle_court_pro VARCHAR(255) NOT NULL,
   libelle_long_pro VARCHAR(255) NOT NULL,
   photo_pro VARCHAR(50) NOT NULL,
   stock_alerte_pro INT,
   stock_phy_pro INT NOT NULL,
   sous_cat_id INT NOT NULL,
   id_fou INT NOT NULL,
   PRIMARY KEY(id_pro),
   FOREIGN KEY(sous_cat_id) REFERENCES sous_categorie(sous_cat_id),
   FOREIGN KEY(id_fou) REFERENCES Fournisseur(id_fou)
);

CREATE TABLE Ligne_de_commande(
   id_ligne_com NOT NULL AUTO_INCREMENT,
   quantité_ligne_com INT NOT NULL,
   prix_unit_ligne_com INT NOT NULL,
   id_com INT,
   id_pro INT NOT NULL,
   PRIMARY KEY(id_ligne_com),
   FOREIGN KEY(id_com) REFERENCES commande(id_com),
   FOREIGN KEY(id_pro) REFERENCES Produit(id_pro)
);
