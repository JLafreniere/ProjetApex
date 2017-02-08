begin
dropAll();
createSequence();
end;
/

CREATE TABLE Camisoles (
ID_Camisole number(5) primary key,
No_Camisole number(2),
Categorie_Age varchar2(10),
Sexe char(1),
Couleur varchar2(50),
Taille varchar2(30)
);

CREATE TABLE Shorts (
ID_Short number(5) primary key,
Taille varchar2(30)
);


CREATE TABLE Joueurs (
ID_Joueur number(5) primary key,
Nom varchar2(50),
Prenom varchar2(50),
Adresse varchar2(100),
Ville varchar2(75),
Code_Postal char(7),
Date_naissance date,
Assurance_Maladie char(12),
Groupe_Sanguin varchar(3),
Diabete char(1),
Epilepsie char(1),
Asthme_Pompe char(1),
Auto_Administration char(1),
Infos_Sante_Supplementaires varchar2(255)
);


create table Categories(
ID_Categorie number(5) primary key,
nom varchar2(50)
);

create table Ecoles(
ID_Ecole number(5) primary key,
nom varchar2(100),
adresse varchar2(100),
ville varchar2(75),
Code_Postal char(7),
Telephone char(10),
contact varchar2(100),
Role_Contact varchar2(50),
Cell_Contact char(10)
);

Create Table Postes_Budgetaires(
ID_Poste number(5) primary key,
Nom_Poste varchar2(75),
Depense char(1)
);


CREATE TABLE Factures (
ID_Facture number(5) primary key,
Date_Facture date,
Photocopie blob,
Mime_Type varchar2(255),
File_Name varchar2(255)
);

Create Table Tournois(
ID_Tournoi number(5),
Ville varchar2(75),
Date_Debut date,
Date_Fin Date,
Montant_Inscription number(5,2)
);

create table Entraineurs(
ID_Entraineur number(5) primary key,
Nom varchar2(50),
Prenom varchar2(50),
Date_Naissance date,
Debut_Service date,
Fin_Service date,
Telephone char(10),
Adresse varchar2(100),
Ville varchar2(75),
Code_Postal char(7),
NAS number(9)
);

----- RELATION DEGR� 1 ---------------

CREATE TABLE Transactions (
ID_Transaction number(5) primary key,
Montant number(5,2),
Nom_Transaction varchar2(50),
Date_Transaction date,
paye char(1),
Poste_Budgetaire varchar2(50),
ID_Facture number(5), -- OPTIONNEL
CONSTRAINT FK_ID_FACTURE -- 
    FOREIGN KEY (ID_Facture)
    REFERENCES Factures (ID_Facture)
);


create table Gyms(
ID_Gym number(5) primary key,
ID_Ecole number(5),
Nom varchar2(100),
CONSTRAINT FK_ID_ECOLE -- 
    FOREIGN KEY (ID_Ecole)
    REFERENCES Ecoles (ID_Ecole)
);

create table Equipes(
ID_Equipe number(5) primary key,
Nom varchar2(25),
ID_Categorie number(5),
ID_Ecole number(5),
Type_Equipe varchar2(25),
CONSTRAINT FK_ID_CATEGORIES_EQUIPES -- 
    FOREIGN KEY (ID_Categorie)
    REFERENCES Categories (ID_Categorie),
    CONSTRAINT FK_ID_ECOLE_EQUIPE -- 
    FOREIGN KEY (ID_Ecole)
    REFERENCES Ecoles (ID_Ecole)
);

Create Table Joueurs_Medicaments(
ID_Joueur_Medicament number(5) primary key,
Nom_Medicament varchar2(75),
Posologie varchar2(175),
ID_Joueur number(5),
CONSTRAINT FK_ID_JOUEURS_MEDICAMENTS -- 
    FOREIGN KEY (ID_Joueur)
    REFERENCES Joueurs (ID_Joueur)
);

Create Table Joueurs_Blessures(
ID_Joueur_Blessure number(5) primary key,
Nom_Blessure varchar2(75),
Date_Blessure date,
ID_Joueur number(5),
CONSTRAINT FK_ID_JOUEURS_BLESSURES -- 
    FOREIGN KEY (ID_Joueur)
    REFERENCES Joueurs (ID_Joueur)
);

Create Table Joueurs_Allergies(
ID_Joueur_Allergie number(5) primary key,
Nom_Allergie varchar2(75),
ID_Joueur number(5),
CONSTRAINT FK_ID_JOUEURS_ALLERGIES -- 
    FOREIGN KEY (ID_Joueur)
    REFERENCES Joueurs (ID_Joueur)
);

Create Table Personnes(
ID_Personne number(5) primary key,
Nom varchar2(50),
Prenom varchar2(50),
Telephone1 char(10),
Telephone2 char(10),
NAS char(9),
Adresse varchar2(100),
Ville varchar2(50),
Code_Postal char(6),
Eligible_Impot char(1)
);

Create Table Prets_Equipements(
ID_Pret number(5),
ID_Camisole number(5),
ID_Short number(5),
Date_Pret date,
Date_Remise_Prevue date,
Date_Reception date,
ID_Joueur number(5),
CONSTRAINT FK_ID_CAMISOLE_PRETS -- 
    FOREIGN KEY (ID_Camisole)
    REFERENCES Camisoles (ID_Camisole),
    CONSTRAINT FK_ID_SHORTS_PRETS -- 
    FOREIGN KEY (ID_Short)
    REFERENCES Shorts (ID_Short),
    CONSTRAINT FK_ID_JOUEURS_PRETS -- 
    FOREIGN KEY (ID_Joueur)
    REFERENCES Joueurs (ID_Joueur)
);

Create Table Recus_Impot(
ID_Recu number(5),
ID_Personne number(5),
Montant number(5,2),
    CONSTRAINT FK_ID_PERSONNE_RECUS -- 
    FOREIGN KEY (ID_Personne)
    REFERENCES Personnes (ID_Personne)
);



Create Table Dispos_Entraineurs(
ID_Dispo_Entraineur number(5),
Jour number(1),
Debut number(2,2),
Fin number(2,2),
ID_Entraineur number(5),
    CONSTRAINT FK_ID_ENTRAINEUR_DISPOS -- 
    FOREIGN KEY (ID_Entraineur)
    REFERENCES Entraineurs (ID_Entraineur)
);

---------------------------- DEGR� 2------------------------

Create Table Inscriptions(
ID_Inscription number(5) primary key,
ID_Equipe number(5),
ID_Joueur number(5),
Saison number(5), -- FOREIGN KEY???
ID_Transaction number(5),
    CONSTRAINT FK_ID_INSCR_Joueurs -- 
    FOREIGN KEY (ID_Joueur)
    REFERENCES Joueurs (ID_Joueur),
    
    CONSTRAINT FK_ID_INSCR_Equipes -- 
    FOREIGN KEY (ID_EQUIPE)
    REFERENCES Equipes (ID_Equipe),
    
    CONSTRAINT FK_ID_INSCR_Transactions -- 
    FOREIGN KEY (ID_Transaction)
    REFERENCES Transactions (ID_Transaction)

);

Create table Equipes_Tournois(
ID_Equipe number(5) primary key,
ID_Tournoi number(5),
ID_Transaction number(5),
    CONSTRAINT FK_ID_EQTOUR_EQUIPE-- 
    FOREIGN KEY (ID_EQUIPE)
    REFERENCES EQUIPES (ID_EQUIPE),
        CONSTRAINT FK_ID_EQTOUR_TRANS-- 
    FOREIGN KEY (ID_TRANSACTION)
    REFERENCES TRANSACTIONS (ID_TRANSACTION)
);


Create Table Pratiques(
ID_Pratique number(5) primary key,
ID_Equipe number(5),
ID_Gym number(5),
Jour number(1),
Heure_Debut number(1,2),
Heure_Fin number(1,2),
    CONSTRAINT FK_ID_PRATIQUE_EQUIPE-- 
    FOREIGN KEY (ID_EQUIPE)
    REFERENCES EQUIPES (ID_EQUIPE),
    CONSTRAINT FK_ID_PRATIQUE_GYM-- 
    FOREIGN KEY (ID_GYM)
    REFERENCES GYMS (ID_GYM)
);

Create Table Dispos_Gyms(
ID_Dispo_Gym number(5) primary key,
ID_Gym number(5),
Jour number(1),
Heure_Debut number(1,2),
Heure_Fin number(1,2),
    CONSTRAINT FK_ID_DISPOS_GYM-- 
    FOREIGN KEY (ID_Gym)
    REFERENCES Gyms (ID_Gym)
);


Create Table Equipes_Entraineurs(
ID_Equipe_Entraineur number(5) primary key,
ID_Equipe number(5),
ID_Entraineur number(5),
Type_Entraineur varchar2(50),
    CONSTRAINT FK_ID_EQENT_Equipes -- 
    FOREIGN KEY (ID_EQUIPE)
    REFERENCES Equipes (ID_Equipe),
    CONSTRAINT FK_ID_EQENT_Ent -- 
    FOREIGN KEY (ID_Entraineur)
    REFERENCES Entraineurs (ID_Entraineur)
);

Create Table Recipiendaires(
ID_Recipiendaire number(5) primary key,
Titre varchar2(75),
ID_INSCRIPTION number(5),
    CONSTRAINT FK_ID_REC_INSCR-- 
    FOREIGN KEY (ID_INSCRIPTION)
    REFERENCES Inscriptions (ID_INSCRIPTION)
);

Create Table Personnes_Joueurs(
ID_Personne_Joueur number(5) primary key,
ID_Personne number(5),
ID_Joueur number(5),
Role_Personne number(5),
Contact_Urgence varchar2(75),
CONSTRAINT FK_ID_PERSJOU_PERS-- 
    FOREIGN KEY (ID_PERSONNE)
    REFERENCES PERSONNES (ID_PERSONNE),
    CONSTRAINT FK_ID_PERSJOU_JOUEUR-- 
    FOREIGN KEY (ID_JOUEUR)
    REFERENCES JOUEURS (ID_JOUEUR)
);

CREATE TABLE RECOMPENSES_ENTRAINEURS(
ID_RECOMPENSE_ENTRAINEUR number(5) primary key,
ID_Entraineur number(5),
Montant number(5,2),
Date_Recompense date,
    CONSTRAINT FK_ID_RECENT_ENT-- 
    FOREIGN KEY (ID_ENTRAINEUR)
    REFERENCES ENTRAINEURS (ID_ENTRAINEUR)
);
/
select * from user_tables order by table_name ASC

