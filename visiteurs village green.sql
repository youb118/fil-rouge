
/*VISITEUR*/

/*Création du rôle Visiteur*/

CREATE ROLE Visiteur

/*Attibution du privilége de lecture sur le catalogue au rôle visiteur */

GRANT select
ON village_green.produit 
TO Visiteur

/*Création de 2 visiteurs*/

CREATE USER if not exists 'vis1' IDENTIFIED BY 'vis1';
CREATE USER if not exists 'vis2' IDENTIFIED BY 'vis2';

/*Affectation du rôle visiteur aux 2  visiteurs*/

GRANT Visiteur
TO 'vis1', 'vis2';

/*CLIENT*/

/*Création du rôle client*/
drop role if exists Client
CREATE ROLE Client

/*Attibution du privilége de lecture sur la base au rôle client */

GRANT select
ON village_green.*
TO client;

/*Attibution du privilége d'insertion et modification sur les tables client et commande au rôle client */

GRANT insert, update
ON village_green.commande
TO client

GRANT insert, update
ON village_green.client
TO client

/*Création de 2 client*/

CREATE USER if not exists 'cli1' IDENTIFIED BY 'cli1';
CREATE USER if not exists 'cli2' IDENTIFIED BY 'cli2';


/*Affectation du rôle client aux 2 clients*/

GRANT client
TO 'cli1', 'cli2';

/*GESTION*/

/*Création du rôle gestion*/

drop role if exists gestion
CREATE ROLE gestion

/*Attibution du privilége de lecture, ecriture sur la base au rôle gestion */

GRANT select, insert, update
ON village_green.*
TO gestion

/*Création de 2 gestionnaires*/

CREATE USER if not exists 'gest1' IDENTIFIED BY 'gest1';
CREATE USER if not exists 'gest2' IDENTIFIED BY 'gest2';


/*Affectation du rôle gestion aux 2 gestionnaires*/

GRANT gestion
TO 'gest1', 'gest2';
/*ADMINISTRATION*/

/*Création du rôle administration*/

drop role if exists administrateur
CREATE ROLE administrateur

/*Attibution du privilége de lecture, ecriture, suppression et création suppression de table sur la base au rôle administrateur */

GRANT ALL
ON village_green.*
TO administrateur

/*Création de 2 administrateur */

CREATE USER if not exists 'admin1' IDENTIFIED BY 'admin1';
CREATE USER if not exists 'admin2' IDENTIFIED BY 'admin2';


/*Affectation du rôle administrateur aux 2 administrateurs*/

GRANT administrateur
TO 'admin1', 'admin2';