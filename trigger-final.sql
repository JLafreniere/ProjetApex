---------------------------------
------- Trigger Niveau 0 --------
---------------------------------

--Trigger insert Table Camisoles
--
CREATE OR REPLACE TRIGGER TI_Camisoles
BEFORE INSERT
ON Camisoles
FOR EACH ROW
BEGIN
:New.ID_Camisole := Seq_Camisoles.nextval;
:New.Sexe := UPPER(:New.Sexe);
:New.Couleur := Initcap(:New.Couleur);
:New.Taille := Initcap(:New.Taille);
END TI_Camisoles;
/

--Trigger insert Table Shorts
--
CREATE OR REPLACE TRIGGER TI_Shorts
BEFORE INSERT
ON Shorts
FOR EACH ROW
BEGIN
:New.ID_Short := Seq_Shorts.nextval;
:New.Taille := Initcap(:New.Taille);
END TI_Shorts;
/

--Trigger insert Table Joueurs
--
CREATE OR REPLACE TRIGGER TI_Joueurs
BEFORE INSERT
ON Joueurs
FOR EACH ROW
BEGIN
:New.ID_Joueur := Seq_Joueurs.nextval;
:New.Nom := Initcap(:New.Nom);
:New.Prenom := Initcap(:New.Prenom);
:New.Adresse := Initcap(:New.Adresse);
:New.Ville := Initcap(:New.Ville);
:New.Code_Postal := UPPER(:New.Code_Postal);
:New.Assurance_Maladie := Upper(:New.Assurance_Maladie);
:New.Groupe_Sanguin := Upper(:New.Groupe_Sanguin);
:New.Diabete := Upper(:New.Diabete);
:New.Epilepsie := Upper(:New.Epilepsie);
:New.Asthme_Pompe := Upper(:New.Asthme_Pompe);
:New.Auto_Administration := Upper(:New.Auto_Administration);
:New.Infos_Sante_Supplementaires := Initcap(:New.Infos_Sante_Supplementaires);
END TI_Joueurs;
/

--Trigger insert Table entraineurs
--
CREATE OR REPLACE TRIGGER TI_Entraineurs
BEFORE INSERT 
ON Entraineurs
FOR EACH ROW
BEGIN
:New.ID_Entraineur := Seq_Entraineurs.nextval;
:New.Nom := Initcap(:New.Nom);
:New.Prenom := Initcap(:New.Prenom);
:New.Adresse := Initcap(:New.Adresse);
:New.Ville := Initcap(:New.Ville);
:New.Code_Postal := UPPER(:New.Code_Postal);
END TI_Entraineurs;
/

--Trigger insert Table Categories
--
CREATE OR REPLACE TRIGGER TI_Categories
BEFORE INSERT
ON Categories
FOR EACH ROW
BEGIN
:New.ID_Categorie := Seq_Categories.nextval;
:New.Nom := Initcap(:New.Nom);
END TI_Categories;  
/

--Trigger Insert Table Ecoles
--
CREATE OR REPLACE TRIGGER TI_Ecoles
BEFORE INSERT
ON Ecoles
FOR EACH ROW
BEGIN
:New.ID_Ecole := Seq_Ecoles.nextval;
:New.Nom := Initcap(:New.nom);
:New.Adresse := Initcap(:New.Adresse);
:New.Ville := Initcap(:New.Ville);
:New.Code_Postal := UPPER(:New.Code_Postal);
:New.Contact := Initcap(:New.Contact);
:New.Role_Contact := Initcap(:New.Role_Contact);
END TI_Ecoles;
/

--Trigger insert Table Postes_Budgetaires
--
CREATE OR REPLACE TRIGGER TI_Postes_Budgetaires
BEFORE INSERT
ON Postes_Budgetaires
FOR EACH ROW
BEGIN
:New.ID_Poste := Seq_Postes_Budgetaires.nextval;
:New.Nom_Poste := Initcap(:New.Nom_Poste);
:New.Depense := Upper(:New.Depense);
END TI_Postes_Budgetaires;
/

--Trigger Insert Table Factures
--
CREATE OR REPLACE TRIGGER TI_Factures
before insert
on Factures
for each row
BEGIN
:New.ID_Facture := Seq_Factures.nextval;
END TI_Factures;
/

--Trigger insert Table Tournois
--
CREATE OR REPLACE TRIGGER TI_Tournois
BEFORE INSERT
ON Tournois
for each row
BEGIN
:New.ID_Tournoi := Seq_Tournois.nextval;
:New.Ville := Initcap(:New.Ville);
END TI_Tournois;
/

---------------------------------
------- Trigger Niveau 1 --------
---------------------------------

--Trigger insert Table Prets_Equipements
--
CREATE OR REPLACE TRIGGER TI_Prets_Equipements
BEFORE INSERT
ON Prets_Equipements
FOR EACH ROW
BEGIN
:New.ID_Pret := Seq_Prets_Equipements.nextval;
END TI_Prets_Equipements;
/



--Trigger Insert Table Joueurs_Blessures
--
CREATE OR REPLACE TRIGGER Ti_Joueurs_Blessures
BEFORE INSERT
ON Joueurs_Blessures
for each row
BEGIN
:New.ID_Joueur_Blessure := Seq_Joueurs_Blessures.nextval;
:New.Nom_Blessure := Initcap(:New.Nom_Blessure);
END Ti_Joueurs_Blessures;
/

--Trigger Insert Table Joueurs_Allergies
--
CREATE OR REPLACE TRIGGER Ti_Joueurs_Allergies
BEFORE INSERT
on Joueurs_Allergies
for each row
BEGIN
:New.ID_Joueur_Allergie := Seq_Joueurs_Allergies.nextval;
:New.Nom_Allergie := Initcap(:New.Nom_Allergie);
END Ti_Joueurs_Allergies;
/

--Trigger Insert Table Joueurs_MÃƒÂ©dicaments
--
CREATE OR REPLACE TRIGGER Ti_Joueurs_Medicaments
BEFORE INSERT
ON Joueurs_Medicaments
FOR EACH ROW
BEGIN
:New.ID_Joueur_Medicament := Seq_Joueurs_Medicaments.nextval;
:New.Nom_Medicament := InitCap(:New.Nom_Medicament);
:New.Posologie := InitCap(:New.Posologie);
END Ti_Joueurs_Medicaments;
/

--Trigger Insert Table Dispos_Entraineurs
--
CREATE OR REPLACE TRIGGER TI_Dispos_Entraineurs
BEFORE INSERT
ON Dispos_Entraineurs
FOR EACH ROW
BEGIN
:New.ID_Dispo_Entraineur := Seq_Dispos_Entraineurs.nextval;
:New.Jour := Initcap(:New.Jour);
END TI_Dispos_Entraineurs;
/

--Trigger Insert Table Recompenses_Entraineurs
--
CREATE OR REPLACE TRIGGER TI_Recompenses_Entraineurs
BEFORE INSERT
ON Recompenses_Entraineurs
FOR EACH ROW
BEGIN
:New.ID_Recompense_Entraineur := Seq_Recompenses_Entraineurs.nextval;
END TI_Recompenses_Entraineurs;
/

--Trigger Insert Table Personnes
--
CREATE OR REPLACE TRIGGER TI_Personnes
BEFORE INSERT
ON Personnes
FOR EACH ROW
BEGIN
:New.ID_Personne := Seq_Personnes.nextval;
:New.Nom := Initcap(:New.Nom);
:New.Prenom := Initcap(:New.Prenom);
:New.Adresse := Initcap(:New.Adresse);
:New.Ville := Initcap(:New.Ville);
:New.Code_Postal := Initcap(:New.Code_Postal);
:New.Eligible_Impot := Initcap(:New.Eligible_Impot);
END TI_Personnes;
/

--Trigger Insert Table Personnes_Joueurs
--
CREATE OR REPLACE TRIGGER TI_Personnes_Joueurs
BEFORE INSERT
ON Personnes_Joueurs
FOR EACH ROW
BEGIN
:New.Role_Personne := Initcap(:New.Role_Personne);
:New.Contact_Urgence := Initcap(:New.Contact_Urgence);
END TI_Personnes_Joueurs;
/

--Trigger insert Table Equipes
--
CREATE OR REPLACE TRIGGER TI_Equipes
BEFORE INSERT
ON Equipes
FOR EACH ROW
BEGIN
:New.ID_Equipe := Seq_Equipes.nextval;
:New.Nom := Initcap(:New.Nom);
:New.Type_Equipe := Initcap(:New.Type_Equipe);
END TI_Equipes;
/

--Trigger Insert Table Gyms
--
CREATE OR REPLACE TRIGGER TI_Gyms
BEFORE INSERT
ON Gyms
FOR EACH ROW
BEGIN
:New.ID_Gym := Seq_Gyms.nextval;
:New.Nom := Initcap(:New.Nom);
END TI_Gyms;
/

--Trigger Insert Table Transactions
--
CREATE OR REPLACE TRIGGER TI_Transactions
BEFORE INSERT
ON Transactions
FOR EACH ROW
BEGIN
:New.ID_Transaction := Seq_Transactions.nextval;
:New.Nom_Transaction := Initcap(:New.Nom_Transaction);
:New.Mode_Paiement := Initcap(:New.Mode_Paiement);
:New.Paye := Initcap(:New.Paye);
END TI_Transactions;
/
---------------------------------
------- Trigger Niveau 2 --------
---------------------------------

--Trigger insert Table Personnes_Joueurs
--
CREATE OR REPLACE TRIGGER TI_Personnes_Joueurs
BEFORE INSERT
ON Personnes_Joueurs
for each row
BEGIN
:New.ID_Personne_Joueur := Seq_Personnes_Joueurs.nextval;
:New.Role_Personne := Initcap(:New.Role_Personne);
:New.Contact_Urgence := UPPER(:NEW.Contact_Urgence);
END TI_Joueurs_Personnes;
/

-- Trigger Insert Table Equipes_Entraineurs
--
CREATE OR REPLACE TRIGGER TI_Equipes_Entraineurs
BEFORE INSERT
ON Equipes_Entraineurs
FOR EACH ROW
BEGIN
:New.ID_Equipe_Entraineur := Seq_Equipes_Entraineurs.nextval;
:New.Type_Entraineur := Initcap(:New.Type_Entraineur);
END TI_Equipes_Entraineurs;
/

-- Trigger Insert Table Equipes_Tournois
--
CREATE OR REPLACE TRIGGER TI_Equipes_Tournois
BEFORE INSERT
ON Equipes_Tournois
FOR EACH ROW
BEGIN
:New.ID_Equipe_Tournoi := Seq_Equipes_Tournois.nextval;
END TI_Equipes_Tournois;
/
--Trigger insert Table Recus_Impots
--
CREATE OR REPLACE TRIGGER TI_Recus_Impot
BEFORE INSERT
ON Recus_Impot
for each row
BEGIN
:New.ID_Recu := Seq_Recus_Impots.nextval;
END TI_Recus_Impots;
/

--Trigger insert Table Pratiques
--
CREATE OR REPLACE TRIGGER TI_Pratiques
BEFORE INSERT
ON Pratiques
for each row
BEGIN
:New.ID_Pratique := Seq_Pratiques.nextval;
:New.Jour := Initcap(:New.Jour);
END TI_Recus_Impots;
/

--Trigger insert Table dispos_gyms
--
CREATE OR REPLACE TRIGGER TI_Dispos_Gyms
BEFORE INSERT
ON Dispos_Gyms
FOR EACH ROW
BEGIN
:New.ID_Dispo_Gym := Seq_Dispos_Gyms.nextval;
:New.Jour := Initcap(:New.Jour);
END TI_Dispos_Gyms;
/

--Trigger insert Table Inscriptions
--
CREATE OR REPLACE TRIGGER TI_Inscriptions
BEFORE INSERT
ON Inscriptions
for each row
BEGIN
:New.ID_Inscription := Seq_Inscriptions.nextval;
END TI_Inscriptions;
/

---------------------------------
------- Trigger Niveau 3 --------
---------------------------------

--Trigger insert Table Recipiendaires 
--
CREATE OR REPLACE TRIGGER TI_Recipiendaires
BEFORE INSERT
ON Recipiendaires
for each row
BEGIN
:New.ID_Recipiendaire := Seq_Recipiendaires.nextval;
:New.Titre := Initcap(:New.Titre);
END TI_Recipiendaires;


