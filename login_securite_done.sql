Drop SEQUENCE Seq_utilisateurs;
drop sequence apex_access_setup_seq;
drop sequence apex_access_control_seq;
/
create sequence Seq_utilisateurs;
create sequence apex_access_setup_seq;
create sequence apex_access_control_seq;
/
drop table utilisateurs;
drop table apex_access_control cascade constraints;
drop table apex_access_setup cascade constraints;
/
create table utilisateurs(
id_utilisateur NUMBER(5)  PRIMARY KEY,
nom_utilisateur varchar2(50),
mot_de_passe varchar2(255),
id_personne number(5),
CONSTRAINT FK_user_personnes 
    FOREIGN KEY (ID_Personne)
    REFERENCES Personnes (ID_Personne));
/
create table  apex_access_setup (
ID NUMBER constraint pk_apex_access_setup primary key, 
APPLICATION_MODE VARCHAR2(255), 
APPLICATION_ID NUMBER constraint un_apex_access_setup_id unique);
/
create table  apex_access_control (
id NUMBER constraint pk_apex_access_control primary key,
ADMIN_USERNAME VARCHAR2(255), 
ADMIN_PRIVILEGES VARCHAR2(255), 
SETUP_ID NUMBER constraint fk_apex_access_control_set references apex_access_setup(id), 
CREATED_BY VARCHAR2(255), 
CREATED_ON DATE, 
UPDATED_ON DATE, 
UPDATED_BY VARCHAR2(255),
   constraint un_apex_access_control unique(admin_username, setup_id));
/
create or replace 
trigger ti_utilisateurs 
  before insert on utilisateurs 
  for each row
declare 
v_nom varchar2(50);
begin 
  select Seq_Utilisateurs.nextval into :new.id_utilisateur from dual; 
  
  if (:new.nom_utilisateur is not null) then  
  :new.nom_utilisateur := upper(:new.nom_utilisateur);
  insert into apex_access_control values (apex_access_control_seq.nextval, :new.nom_utilisateur, 'Admin', 1, 'AP0519', sysdate, null, null);
  else
    select distinct j.nom into v_nom 
    from personnes p,personnes_joueurs pj,joueurs j
    where :new.id_personne = p.id_personne and 
          p.id_personne = pj.id_personne and 
          pj.id_joueur = j.id_joueur;
    :new.nom_utilisateur := pck_abbtr.composer_username(v_nom);
    
    insert into apex_access_control values (apex_access_control_seq.nextval, :new.nom_utilisateur, 'View', 1, 'AP0519', sysdate, null, null);
  end if;
  end ti_utilisateurs;    
/
create or replace trigger  tu_utilisateurs 
  before update on utilisateurs 
  for each row 
begin 
  :new.nom_utilisateur := upper(:new.nom_utilisateur); 
  if :new.mot_de_passe is not null then 
    :new.mot_de_passe := :new.mot_de_passe;
    else 
    :new.mot_de_passe := :old.mot_de_passe; 
  end if; 
end tu_utilisateurs; 
/
create or replace trigger  ti_apex_access_setup 
before insert or update on apex_access_setup 
for each row
begin
if inserting and :new.id is null then
select apex_access_control_seq.nextval into :new.id from dual;
end if;
if :new.application_id is null then
:new.application_id := v('APP_ID');
end if;
end;
/
create or replace trigger ti_apex_access_control 
  before insert or update on apex_access_control
  for each row
begin
    if inserting and :new.id is null then
        select apex_access_control_seq.nextval into :new.id from dual;
    end if;
    if inserting then
        :new.created_by := v('USER');
        :new.created_on := sysdate;
    end if;
    if updating then
        :new.updated_by := v('USER');
        :new.updated_on := sysdate;
    end if;
end; 

/
insert into personnes values (null,'Trahan', 'Marc',null,null,null,null,null,null,null);
insert into personnes_joueurs values(null,4,22,null,null);

insert into apex_access_setup values (1, null, 862);

INSERT INTO utilisateurs VALUES (null, 'bob', 'bob',null);

INSERT INTO utilisateurs VALUES (null, null, 'bob',4);



select distinct j.nom
    from personnes p,personnes_joueurs pj,joueurs j
    where 4 = p.id_personne and 
          p.id_personne = pj.id_personne and 
          pj.id_joueur = j.id_joueur;