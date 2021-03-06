INSERT INTO categorie (cat_nom) VALUE
("Piano"),
("Violon"),
("Guitare"),
("Batterie"),
("Flute");


INSERT INTO fournisseur (fou_nom, fou_ville, fou_adresse, fou_zipcode, fou_type, fou_phone, fou_mail) VALUES
('La musique eternelle','Amiens','12 rue dejean','80000','constructeur','0654214785','ga@po.ke',)
('La belle musique','Paris','4 rue de la chanson','94000','constructeur','0632154789','guzwa@egoget.sl',)
('La chanson','Marseille','17 rue labas','13000','cmportateur','0321456987','akuji@po.ao',);

INSERT INTO employe (emp_nom, emp_prenom, emp_phone, emp_fonction, emp_mail) VALUES
('Bridges','Stella','0652147896','Commercial','wehcuvos@te.zm',)
('Fletcher','Edgar','0325654789','Assistant gestion','ibfecac@jekpesfi.lv',)
('Baker','Lester','063214569874','Directeur','wotaj@wi.td',);

INSERT INTO client (cli_nom, cli_prenom, cli_adresse, cli_zipcode, cli_ville,cli_phone, cli_mail, cli_adr_livraison, cli_ville_livraison, cli_zipcode_livr, cli_type, cli_emp_id) VALUE
('Edwin','Sylvia','24 rue de france','93000','Paris','0658954712','gutkag@hufmubwov.as','24 rue de france','Paris','93000','Particulier','1')
('Rhoda','Erik','23 rue du portugal','13000','Marseille','0654123698','obo@adgas.lk','23 rue du portugal','Marseille','13000','Particulier','2')
('Belle','Glenn','21 rue de deutch','80000','Amiens','0921584359','hiufu@bumme.co','21 rue de deutch','Amiens','80000','Professionnel','3');


INSERT INTO sous_categorie (sc_nom, sc_cat_id) VALUES 
('Guitare electrique', '3')
('Guitare folk', '3')
('Guitare accoustique', '3')
('Flûte traversière', '5')
('Batterie', '4');

INSERT INTO produit (pro_prix_vente, pro_prix_achat, pro_ref, pro_libelle_court, pro_libelle_long, pro_photo, pro_stock_alerte, pro_stock_phy, pro_sc_id, pro_fou_id) VALUES 
('2100', '1900', 'GIU51', 'Guitare electrique FENDER', 'Guitare electrique ideale pour les professionnels de musique', 'www.image.com', '5', '30', '1', '1')
('129', '130', 'FRT12', 'Guitare folk CORT', 'Guitare folk ideale pour les amateurs de musique', 'www.image.com', '5', '25', '2', '1')
('195', '130', 'YUI52', 'Guitare acoustique EAGLETONE', 'Guitare acoustique ideale pour les amateurs de musique', 'www.image.com', '5', '17', '3', '2')
('195', '130', 'FUI52', 'Batterie', 'Batterie ideale pour les passionnées de musique', 'www.image.com', '5', '25', '5', '3')
('150', '120', 'POI12', 'Flûte traversière THOMANN', 'Flute traversiere ideale pour les amateurs de musique', 'www.image.com', '5', '40', '4', '3');

