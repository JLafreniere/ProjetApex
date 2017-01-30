/*
-- drop table
drop table Dispos_Gyms;
drop table Equipes_Entraineurs;
drop table GYMS;
drop table Equipes;
drop table Ecoles;
drop table Entraineurs;
drop table Categories;

--table categorie
create table Categories(
ID_Categorie number(5) primary key,
nom varchar2(50)
);

--table Ecoles
create table Ecoles(
ID_Ecole number(5) primary key,
nom varchar2(100),
adresse varchar2(100),
ville varchar2(75),
Code_Postal char(7),
Telephone char(10),
contact varchar2(100),
Role varchar2(50),
Cell_Contact char(10)
);

--table Equipes
create table Equipes(
ID_Equipe number(5) primary key,
Nom varchar2(25),
ID_Categorie number(5) references Categories(ID_Categorie),
ID_Ecole number(5) references Ecoles(ID_Ecole),
type varchar2(25)
);

--table Entraineurs
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
Code_Postal char(7)
);

--table entraineur equipe
create table Equipes_Entraineurs(
ID_Equipe number(5) references Equipes(ID_Equipe),
ID_Entraineur number(5) references Entraineurs(ID_Entraineur),
Type_Entraineur varchar2(50),
primary key(ID_Equipe, ID_Entraineur)
);
--table gym
create table Gyms(
ID_Gym number(5) primary key,
ID_Ecole number(5) references Ecoles(ID_Ecole),
Nom varchar2(100)
);

--table dispo gym
create table Dispos_Gyms(
ID_Dispo_Gym number(5) primary key,
ID_Gym number(5) references Gyms(ID_Gym),
jour varchar2(8),
Debut number(4,2),
fin number(4,2)
);

--drop sequence
drop sequence Seq_Categories;
drop sequence Seq_Ecoles;
drop sequence Seq_Equipes;
drop sequence Seq_Entraineurs;
drop sequence Seq_Gyms;
drop sequence Seq_Dispos_Gyms;

--create sequence
create sequence Seq_Ecoles;
create sequence Seq_Categories;
create sequence Seq_Equipes;
create sequence Seq_Entraineurs;
create sequence Seq_Gyms;
create sequence Seq_Dispo_Gyms;
*/
--trigger
create or replace trigger TI_Categorie
before insert
on Categories
for each row
begin
:new.ID_Categorie := Seq_Categories.nextval;
:new.nom := initcap(:new.nom);
end TI_Categorie;
/
create or replace trigger TI_Ecole
before insert
on Ecoles
for each row
begin
:new.ID_Ecole := Seq_Ecoles.nextval;
:new.nom := initcap(:new.nom);
:new.adresse := initcap(:new.adresse);
:new.ville := initcap(:new.ville);
:new.code_postal :=upper(:new.code_postal);
:new.contact := initcap(:new.contact);
:new.role := initcap(:new.role);
end TI_Ecole;
/
create or replace trigger TI_Entraineur
before insert
on Entraineurs
for each row
begin
:new.ID_Entraineur := Seq_Entraineurs.nextval;
:new.nom := initcap(:new.nom);
:new.prenom := initcap(:new.prenom);
:new.adresse := initcap(:new.adresse);
:new.ville := initcap(:new.ville);
:new.code_postal :=upper(:new.code_postal);
end TI_Entraineur;
/
create or replace trigger TI_Equipe
before insert
on Equipes
for each row
begin
:new.ID_Equipe := Seq_Equipes.nextval;
:new.nom := initcap(:new.nom);
end TI_Equipe;
/
create or replace trigger TI_Gym
before insert
on Gyms
for each row
begin
:new.ID_Gym := Seq_Gyms.nextval;
:new.nom := initcap(:new.nom);
end TI_Gym;
/
create or replace trigger TI_Dispos_Gyms
before insert
on Dispos_Gyms
for each row
begin
:new.ID_Dispo_Gym := Seq_Dispos_Gyms.nextval;
:new.jour := initcap(:new.jour);
end TI_Dispo_Gym;

--view inventaire short chandail
create or replace view Inventaire_Camisoles as 
select taille, count(*) as quantite from Camisoles group by TAILLE;

create or replace view Inventaire_short as 
select taille, count(*) as quantite from Shorts group by TAILLE;

