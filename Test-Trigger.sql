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
					   diabete,epilespsie,asthme_pompe,auto_administration) values
						('Genest','Lucie','f','300 3e avenue','Trois-Rivières','g9b 7x5',
						'2005-12-12','LUGE05121203','AB-','n','n','n','n');


insert into joueurs (nom,prenom,sexe,adresse,ville,
					   code_postal,date_naissance,assurance_maladie,groupe_sanguin,
					   diabete,epilespsie,asthme_pompe,auto_administration) values
						('Genest','Luc','h','300 3e avenue','Trois-Rivières','g9b 7x5',
						'2004-10-12','LGEN05121203','AB+','o','o','o','n');


insert into joueurs (nom,prenom,sexe,adresse,ville,
					   code_postal,date_naissance,assurance_maladie,groupe_sanguin,
					   diabete,epilespsie,asthme_pompe,auto_administration) values
						('Dubé','George','h','300 3e rue','Trois-Rivières','p9b 7k5',
						'2005-01-12','GDUB05121203','A+','n','n','o','o');

insert into joueurs (nom,prenom,sexe,adresse,ville,
					   code_postal,date_naissance,assurance_maladie,groupe_sanguin,
					   diabete,epilespsie,asthme_pompe,auto_administration) values
						('Lafrance','Arnold','h','25 rue principale','Trois-Rivières','p8b 5k2',
						'2004-02-06','LGEN05121203','B-','n','n','n','n');

--Test Entraineurs

insert into entraineurs (nom,prenom,date_naissance,nas,fin_service,telephone,adresse,ville,code_postal)
values('Bérubé','Benoît','1980-12-06','287162538',null,'8193772618','120 rue Montour','Trois-Rivières','y6t 7u8');

insert into entraineurs (nom,prenom,date_naissance,nas,fin_service,telephone,adresse,ville,code_postal)
values('Tremblay','Marcel','1992-02-06','287162538',null,'8192692348','220 rue Montour','Trois-Rivières','y6t 7u8');

insert into entraineurs (nom,prenom,date_naissance,nas,fin_service,telephone,adresse,ville,code_postal)
values('Lapointe','Philippe','1975-10-06','183971265',null,'8193972448','500 9e rue','Trois-Rivières','y6t 7u8');

insert into entraineurs (nom,prenom,date_naissance,nas,fin_service,telephone,adresse,ville,code_postal)
values('Leclerc','Éric','1982-12-07','173946285',null,'8193472008','39 10e rue','Trois-Rivières','y6t 7z7');

insert into entraineurs (nom,prenom,date_naissance,nas,fin_service,telephone,adresse,ville,code_postal)
values('Caron','Pierre-Édouard','1990-09-08','854596553',null,'8194182618','110 avenue nord','Trois-Rivières','b6z k2h');


--Test Categorie

insert into categories (nom) values ('5-6 Filles');
insert into categories (nom) values ('5-6 Gars');
insert into categories (nom) values ('Mini 4 Filles');
insert into categories (nom) values ('Mini 4 Gars');
insert into categories (nom) values ('Mini 3 Filles');
insert into categories (nom) values ('Mini 3 Gars');

--Test Ecoles
 
insert into ecoles (nom,adresse,ville,code_postal,telephone,contact,role_contact,cell_contact)
	values ('Beau-Soleil','1212 chemin St-Marguerite','Pointe-Du-Lac','G9b 5h4',
		   '8193772837','Pierre Laporte','Responsable','8192681415');

--Test Poste budgetaires

--Test Factures

--Test Tournois

---------------------------------
---- Test  Trigger Niveau 1 -----
---------------------------------
--Test Prets_Equipements
--Test Joueurs blessures
--Test Joueurs allergies
--Test Joueurs medicaments
--Test dispos entraineurs
--Test recompenses entraineurs
--Test Personnes
--Test Equipes
--Test Gyms
--Test Transactions
---------------------------------
---- Test  Trigger Niveau 2 -----
---------------------------------
--Test Personne Joueurs
--Test Equipes entraineurs
--Test Equipes Tournois
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
insert into inscriptions (id_camisole) values (1);
delete from inscriptions;
insert into factures (date_facture) values (sysdate);
delete from factures;
insert into joueurs_allergies(Nom_allergie) values ('Arachides');
delete from joueurs_allergies;
insert into joueurs_blessures(Nom_blessure) values ('Fracture du coude');
delete from joueurs_blessures;
insert into Joueurs_Medicaments(Nom_medicament) values ('Morphine');
delete from Joueurs_medicaments;
insert into joueurs(Nom) values ('Tremblay');
delete from joueurs;
insert into Camisoles(No_camisole) values (2);
delete from camisoles;
insert into dispos_Gyms (Jour) values ('lundi');
delete from dispos_gyms;
insert into categories (nom)  values ('mini 3-4');
delete from categories;
insert into ecoles (Nom,adresse,ville,code_postal,contact,role_contact) values
('Chavigny','3000 rue Chavigny','Trois-Rivières','g8h6r4','bob lamarche','Directeur');
delete from ecoles;
insert into entraineurs (nom,prenom,date_naissance,adresse,ville,code_postal)
values ('Test','Jean',sysdate,'200 boulevard Gene-H Kruger','trois-rivières','j8g8d6');
delete from entraineurs;
insert into Equipes (nom,type_equipe) values ('Les rafales','Masculin');
delete from equipes;