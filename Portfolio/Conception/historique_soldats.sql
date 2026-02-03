-- ----------------------------------------------------------
-- Script MYSQL pour mcd 
-- ----------------------------------------------------------


-- ----------------------------
-- Table: Grades
-- ----------------------------
CREATE TABLE Grades (
  code_grade VARCHAR(50) NOT NULL AUTO_INCREMENT,
  intitule_grade VARCHAR(50) NOT NULL,
  CONSTRAINT Grades_PK PRIMARY KEY (code_grade)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Batailles
-- ----------------------------
CREATE TABLE Batailles (
  code_bataille VARCHAR(50) NOT NULL AUTO_INCREMENT,
  lieu VARCHAR(50) NOT NULL,
  date_debut DATE NOT NULL,
  date_fin DATE NOT NULL,
  CONSTRAINT Batailles_PK PRIMARY KEY (code_bataille)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Soldats
-- ----------------------------
CREATE TABLE Soldats (
  code_soldats VARCHAR(50) NOT NULL AUTO_INCREMENT,
  nom_soldat VARCHAR(50) NOT NULL,
  prenom_soldat VARCHAR(50) NOT NULL,
  date_naissance DATE NOT NULL,
  date_deces DATE NOT NULL,
  CONSTRAINT Soldats_PK PRIMARY KEY (code_soldats)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Blessures
-- ----------------------------
CREATE TABLE Blessures (
  code_blessure VARCHAR(50) NOT NULL AUTO_INCREMENT,
  type_blessure VARCHAR(50) NOT NULL,
  CONSTRAINT Blessures_PK PRIMARY KEY (code_blessure)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Unites
-- ----------------------------
CREATE TABLE Unites (
  code_unite VARCHAR(50) NOT NULL AUTO_INCREMENT,
  nom_unite VARCHAR(50) NOT NULL,
  CONSTRAINT Unites_PK PRIMARY KEY (code_unite)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Blesses
-- ----------------------------
CREATE TABLE Blesses (
  code_soldats VARCHAR(50) NOT NULL,
  code_bataille VARCHAR(50) NOT NULL,
  code_blessure VARCHAR(50) NOT NULL,
  date_blessures DATE NOT NULL,
  CONSTRAINT Blesses_PK PRIMARY KEY (code_soldats, code_bataille, code_blessure),
  CONSTRAINT Blesses_code_soldats_FK FOREIGN KEY (code_soldats) REFERENCES Soldats (code_soldats),
  CONSTRAINT Blesses_code_bataille_FK FOREIGN KEY (code_bataille) REFERENCES Batailles (code_bataille),
  CONSTRAINT Blesses_code_blessure_FK FOREIGN KEY (code_blessure) REFERENCES Blessures (code_blessure)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Promu
-- ----------------------------
CREATE TABLE Promu (
  code_soldats VARCHAR(50) NOT NULL,
  code_grade VARCHAR(50) NOT NULL,
  date_promotion DATE NOT NULL,
  CONSTRAINT Promu_PK PRIMARY KEY (code_soldats, code_grade),
  CONSTRAINT Promu_code_soldats_FK FOREIGN KEY (code_soldats) REFERENCES Soldats (code_soldats),
  CONSTRAINT Promu_code_grade_FK FOREIGN KEY (code_grade) REFERENCES Grades (code_grade)
)ENGINE=InnoDB;


-- ----------------------------
-- Table: Affecte
-- ----------------------------
CREATE TABLE Affecte (
  code_soldats VARCHAR(50) NOT NULL,
  code_unite VARCHAR(50) NOT NULL,
  date_affectation DATE NOT NULL,
  CONSTRAINT Affecte_PK PRIMARY KEY (code_soldats, code_unite),
  CONSTRAINT Affecte_code_soldats_FK FOREIGN KEY (code_soldats) REFERENCES Soldats (code_soldats)
)ENGINE=InnoDB;

/******************************************************************************************************
*                                                                                                     *
*      -->    Désolé, il faut activer cette version pour voir la suite du script !                    *
*                                                                                                     *
*******************************************************************************************************/