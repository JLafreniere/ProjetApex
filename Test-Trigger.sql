---------------------------------
---- Test  Trigger Niveau 0 -----
---------------------------------

--Test Camisoles

--Test Shorts

--Test Joueurs

--Test Entraineurs

--Test Categorie

--Test Ecoles

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