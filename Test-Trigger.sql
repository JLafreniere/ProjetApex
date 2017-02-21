---------------------------------
---- Test  Trigger Niveau 0 -----
---------------------------------
--Test Camisoles

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(1,'5-6','h','Bleue','Large');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(12,'5-6','h','Bleue','Large');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(14,'5-6','h','Bleue','Large');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(33,'5-6','h','Bleue','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(45,'5-6','h','Bleue','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(51,'5-6','h','Bleue','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(54,'5-6','h','Bleue','X Large');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(39,'5-6','h','Bleue','X Large');


insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(12,'Mini 4','h','Bleue','Small');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(11,'Mini 4','h','Bleue','Small');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(8,'Mini 4','h','Bleue','Small');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(4,'Mini 4','h','Bleue','X Small');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(24,'Mini 4','h','Bleue','Small');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(35,'Mini 4','h','Bleue','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(42,'Mini 4','h','Bleue','XL Youth');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(51,'Mini 4','h','Bleue','XL Youth');



insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(17,'5-6','f','Royale','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(22,'5-6','f','Royale','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(25,'5-6','f','Royale','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(31,'5-6','f','Royale','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(41,'5-6','f','Royale','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(43,'5-6','f','Royale','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(11,'5-6','f','Royale','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(8,'5-6','f','Royale','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(24,'5-6','f','Royale','Medium');



insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(12,'Mini 4','f','Blanche','L Youth');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(20,'Mini 4','f','Blanche','XL Youth');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(22,'Mini 4','f','Blanche','Small');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(32,'Mini 4','f','Blanche','Small');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(42,'Mini 4','f','Blanche','XL Youth');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(2,'Mini 4','f','Blanche','L Youth');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(7,'Mini 4','f','Blanche','XL Youth');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(41,'Mini 4','f','Blanche','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(35,'Mini 4','f','Blanche','Medium');

insert into camisoles (No_camisole,categorie_age,sexe,couleur,taille) 
values(43,'Mini 4','f','Blanche','Small');





--Test Shorts
insert into shorts (taille,quantite) values('XL Youth',15);

insert into shorts (taille,quantite) values('X Small',20);

insert into shorts (taille,quantite) values('Small',11);

insert into shorts (taille,quantite) values('Medium',5);

insert into shorts (taille,quantite) values('Large',12);

insert into shorts (taille,quantite) values('X Large',25);


--Test Joueurs

insert into joueurs (nom,prenom,sexe,adresse,ville,
					   code_postal,date_naissance,assurance_maladie,groupe_sanguin,
					   diabete,epilepsie,asthme_pompe,auto_administration) values
						('Genest','Lucie','f','300 3e avenue','Trois-Rivières','g9b7x5',
						'2005-12-12','LUGE05121203','AB-',null,null,null,null);


insert into joueurs (nom,prenom,sexe,adresse,ville,
					   code_postal,date_naissance,assurance_maladie,groupe_sanguin,
					   diabete,epilepsie,asthme_pompe,auto_administration) values
						('Genest','Luc','h','300 3e avenue','Trois-Rivières','g9b7x5',
						'2004-10-12','LGEN05121203','AB+','o','o','o',null);


insert into joueurs (nom,prenom,sexe,adresse,ville,
					   code_postal,date_naissance,assurance_maladie,groupe_sanguin,
					   diabete,epilepsie,asthme_pompe,auto_administration) values
						('Dubé','George','h','300 3e rue','Trois-Rivières','p9b7k5',
						'2005-01-12','GDUB05121203','A+',null,null,'o','o');

insert into joueurs (nom,prenom,sexe,adresse,ville,
					   code_postal,date_naissance,assurance_maladie,groupe_sanguin,
					   diabete,epilepsie,asthme_pompe,auto_administration) values
						('Lafrance','Arnold','h','25 rue principale','Trois-Rivières','p8b5k2',
						'2004-02-06','LGEN05121203','B-',null,null,null,null);

insert into joueurs values(null, 'Martin', 'Renaud', 'M','222 3eme avenue ','Trois-Rivières', 'G0X2P0', sysdate - 3600, 'MARR29010110', 'AO+', 'O', 'o', 'n', 'o', 'Asthmatique');

insert into joueurs values(null, 'Marie', 'Renaude', 'M', '222 65eme avenue ', 'Cap de la Madeleine', 'P0X9P3', sysdate - 4000, 'MARR29010111', 'O+', 'O', 'o', 'n', 'o', null);

insert into joueurs values(null, 'Spicer', 'Bob', 'M', '205 rue des écureuils ','Saint-Étienne-des-Grès', 'G9B9P3', sysdate - 4600, 'MARR29010111', 'O+', 'O', 'o', 'n', 'o', null);

insert into joueurs values(null, 'Donald', 'Ron', 'M', '400 5e rue ','Trois-Rivières', 'G9B9P3', sysdate - 4500, 'MARR29010111', 'O+', 'O', 'o', 'n', 'o', 'Commander in chief');

--Test Entraineurs

insert into entraineurs (nom,prenom,date_naissance,nas,fin_service,telephone,adresse,ville,code_postal)
values('Bérubé','Benoît','1980-12-06','287162538',null,'8193772618','120 rue Montour','Trois-Rivières','y6t7u8');

insert into entraineurs (nom,prenom,date_naissance,nas,fin_service,telephone,adresse,ville,code_postal)
values('Tremblay','Marcel','1992-02-06','287162538',null,'8192692348','220 rue Montour','Trois-Rivières','y6t7u8');

insert into entraineurs (nom,prenom,date_naissance,nas,fin_service,telephone,adresse,ville,code_postal)
values('Lapointe','Philippe','1975-10-06','183971265',null,'8193972448','500 9e rue','Trois-Rivières','y6t7u8');

insert into entraineurs (nom,prenom,date_naissance,nas,fin_service,telephone,adresse,ville,code_postal)
values('Leclerc','Éric','1982-12-07','173946285',null,'8193472008','39 10e rue','Trois-Rivières','y6t7z7');

insert into entraineurs (nom,prenom,date_naissance,nas,fin_service,telephone,adresse,ville,code_postal)
values('Caron','Pierre-Édouard','1990-09-08','854596553',null,'8194182618','110 avenue nord','Trois-Rivières','b6zk2h');

insert into entraineurs values(null, 'Rubio', 'Marco', sysdate-9000, '123333321', null, 8193331234, 
	'205 Avenue Émeraude', 'Québec', 'R1B1OS');

insert into entraineurs values(null, 'Paré', 'Martin', sysdate-9500, '123444321', null, 8194442345, 
	'255 Avenue Diamant', 'Montréal', 'M4R71N');
insert into entraineurs values(null, 'Roy', 'Mathieu', sysdate-9600, '234554321', null, 8196542345, 
	'255 Avenue Opale', 'Daveluyvill', 'M4713U');
--Test Categorie

insert into categories (nom) values ('5-6 Filles');
insert into categories (nom) values ('5-6 Gars');
insert into categories (nom) values ('Mini 4 Filles');
insert into categories (nom) values ('Mini 4 Gars');
insert into categories (nom) values ('Mini 3 Filles');
insert into categories (nom) values ('Mini 3 Gars');

--Test Ecoles
 
insert into ecoles (nom,adresse,ville,code_postal,telephone,contact,role_contact,cell_contact)
	values ('Beau-Soleil','1212 chemin St-Marguerite','Pointe-Du-Lac','G9b5h4',
		   '8193772837','Pierre Laporte','Responsable','8192681415');

insert into ecoles values
	(null, 'Chavigny', '3000 rue Chavigny', 'ChavignyVille', 'C4AV1G',
	 8193639000, 'Jean Chavigny', 'Directeur de chavigny', 8199999999);
insert into ecoles values(null, 'Pionniers', '3000 avenue des Pionniers', 'Saint-Pionners', 'P10N13',
 8193639050, 'Marc Pionnier', 'Directeur des Pionniers', 8199999329);
insert into ecoles values(null, 'Keranna', '3000 boulevard Keranna', 'KerannaCity', 'P10N13', 
	8193639050, 'Marc Pionnier', 'Directeur des Pionniers', 8199999329);

--Test Poste budgetaires
insert into postes_budgetaires values(null, 'Opérations courantes', 'O');
insert into postes_budgetaires values(null, 'Revenus Inscription', null);

--Test Factures

--Test Tournois
insert into tournois values(null, 'Sainte-Clémentine', sysdate+400, sysdate +403, 200);
insert into tournois values(null, 'Sainte-Pérpétue', sysdate+500, sysdate +505, 225);
---------------------------------
---- Test  Trigger Niveau 1 -----
---------------------------------
--Test Prets_Equipements
insert into prets_equipements values(null, sysdate-1000, 1, 1, sysdate + 15, null, 1);
insert into prets_equipements values(null, sysdate-700, 2, 2, sysdate + 20, null, 3);
insert into prets_equipements values(null, sysdate-300, 4, 3, sysdate + 120, Sysdate + 120, 4);
--Test Joueurs blessures
insert into joueurs_blessures values(null, 'Fracture du Tibia', sysdate-2000, 1);
insert into joueurs_blessures values(null, 'Fracture du Fémur', sysdate-1500, 1);
insert into joueurs_blessures values(null, 'Foulure de la cheville', sysdate-1500, 1);
insert into joueurs_blessures values(null, 'Crise cardiaque', sysdate-1100, 3);
insert into joueurs_blessures values(null, 'Épaule déplacée', sysdate-700, 2);
--Test Joueurs allergies
insert into joueurs_blessures values(null, 'Arachides', 1);
insert into joueurs_blessures values(null, 'Fruits de mer', 1);
insert into joueurs_blessures values(null, 'Gluten', 2);
insert into joueurs_blessures values(null, 'Lactose', 3);
--Test Joueurs medicaments
insert into joueurs_medicaments values(null, 'Doliprane', '2 pilules 2 fois par jour', 1);
insert into joueurs_medicaments values(null, 'Efferalgan', '2 pilules 1 fois par jour', 1);
insert into joueurs_medicaments values(null, 'Dafalgan', '2 pilules 1 fois par jour', 2);
insert into joueurs_medicaments values(null, 'Méthadone', '2 berlingots 1 fois par jour', 2);
--Test dispos entraineurs
--Test recompenses entraineurs
Insert into recompenses_entraineurs values(null, 1, 200, sysdate - 100);
Insert into recompenses_entraineurs values(null, 1, 210, sysdate - 200);
Insert into recompenses_entraineurs values(null, 3, 160, sysdate - 300);
Insert into recompenses_entraineurs values(null, 2, 175, sysdate - 50);
Insert into recompenses_entraineurs values(null, 4, 275, sysdate - 50);
Insert into recompenses_entraineurs values(null, 1, 375, sysdate - 150);
--Test Personnes
insert into personnes values (null,'Genest','Marc','8193093938',null,'837837823','300 3e avenue','Trois-Rivières','g9b7x5','O');
insert into personnes values (null,'Dubé','Pierre','8193771238',null,'837837823','300 3e rue','Trois-Rivières','p9b7k5',null);
insert into personnes values (null,'Lafrance','Monique','8193774546',null,'837837823','25 rue principale','Trois-Rivières','p8b5k2','O');

--Test Equipes
insert into equipes values(null, 'Les Éclairs', 1, 'Mixte', 100);
insert into equipes values(null, 'Les Magiciens', 2, 'Mixte', 200);
insert into equipes values(null, 'Les Serpents', 3, 'Mixte', 150);
insert into equipes values(null, 'Les Abeilles', 4, 'Féminin', 220);
--Test Gyms
insert into gyms values(null, 1, 'Gymnase du Pavillon Pierre-Édouard');
insert into gyms values(null, 3, 'Gymnase Central');
insert into gyms values(null, 2, 'Gymnase A1');
insert into gyms values(null, 2, 'Gymnase A2');


--Test Transactions
---------------------------------
---- Test  Trigger Niveau 2 -----
---------------------------------
--Test Personne Joueurs
insert into personnes_joueurs values (null,1,1,'Père','O');
insert into personnes_joueurs values (null,1,2,'Père','O');
insert into personnes_joueurs values (null,2,3,'Père',null);
insert into personnes_joueurs values (null,3,4,'Mère','O');
--Test apex_access_setup
insert into apex_access_setup values (1, null, 862);
--Test utilisateurs
INSERT INTO utilisateurs VALUES (null, 'bob', 'bob',null);
INSERT INTO utilisateurs VALUES (null, null, 'bob',1);
INSERT INTO utilisateurs VALUES (null, null, 'bob',2);
INSERT INTO utilisateurs VALUES (null, null, 'bob',3);


--Test Equipes entraineurs
insert into equipes_entraineurs(null, 'Entraineur Chef', 1, 1);
insert into equipes_entraineurs(null, 'Entraineur Chef', 2, 3);
insert into equipes_entraineurs(null, 'Assistant Entraineur', 3, 2);

--Test Equipes Tournois
insert into equipes_tournois values(null, 1, 2, null);
insert into equipes_tournois values(null, 3, 2, null);
insert into equipes_tournois values(null, 2, 2, null);
insert into equipes_tournois values(null, 1, 1, null);
insert into equipes_tournois values(null, 3, 1, null);
--Test Recus Impot
--Test Pratiques
--Test Dispos Gyms
--Test Inscriptions
---------------------------------
---- Test  Trigger Niveau 3 -----
---------------------------------
---------------------------------
---- Test  Trigger Niveau 4 -----
---------------------------------
