

CREATE TABLE utilisateur (
  numuser Int NOT NULL AUTO_INCREMENT,
  nom VARCHAR(50),
  prenom VARCHAR(50),
  mail VARCHAR(60),
  mdp VARCHAR(50),
  num_att Int,
  level int,
  PRIMARY KEY (numuser)
);

CREATE TABLE reserver (
  date_fin_reserv date ,
  numplace Int,
  date_debut_reserv date,
  numuser int,
  PRIMARY KEY ( date_fin_reserv)
);


CREATE TABLE place (
  numplace int,
  PRIMARY KEY (numplace)
) ;


CREATE TABLE attente (
  date_debut_reserv date,
  PRIMARY KEY (date_debut_reserv)
) ;


  ALTER TABLE reserver ADD FOREIGN KEY (numplace) REFERENCES place (numplace);
  ALTER TABLE reserver ADD FOREIGN KEY (date_debut_reserv) REFERENCES attente (date_debut_reserv);
  ALTER TABLE reserver ADD FOREIGN KEY (numuser) REFERENCES utilisateur (numuser);

INSERT INTO utilisateur (level) VALUES (1, 2);







