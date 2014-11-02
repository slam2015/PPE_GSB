----------------------------------------------------------------------------------------------------------------------------------------------
--CREATION DE LA BASE------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
USE master
GO
----------------------------------------------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM master.sys.databases WHERE name = 'bdMedocLab')
	BEGIN
		DROP DATABASE bdMedocLab
	END
GO
----------------------------------------------------------------------------------------------------------------------------------------------
CREATE DATABASE bdMedocLab
GO
----------------------------------------------------------------------------------------------------------------------------------------------
--CREATION DES TABLES-----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
USE bdMedocLab
GO
----------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE principeActif(
	identifiant INT NOT NULL IDENTITY,
	nom VARCHAR(50),
	CONSTRAINT pk_principeActif PRIMARY KEY (identifiant)
)
GO
----------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE medoc(
	identifiant INT NOT NULL IDENTITY,
	nom VARCHAR(50),
	date_brevet datetime,
	date_amm datetime,
	date_retrait datetime,
	idPrincipeActif INT NOT NULL,
	CONSTRAINT pk_medoc PRIMARY KEY (identifiant),
	CONSTRAINT fk_medoc_principeActif FOREIGN KEY (idPrincipeActif) REFERENCES principeActif (identifiant)
)
GO
----------------------------------------------------------------------------------------------------------------------------------------------
--CREATION DES PROCEDURES STOCKEES ET TRIGGERS----------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------------------------
--CREATION DES UTILISATEURS ET DES DROITS--------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
--INSERTION DES TUPLES DANS LA BASE-------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO principeActif (nom) VALUES ('ZIDOVUDINE');
INSERT INTO principeActif (nom) VALUES ('MELPHALAN');
INSERT INTO principeActif (nom) VALUES ('LAMIVUDINE');
INSERT INTO principeActif (nom) VALUES ('EPOPROSTENOL');
INSERT INTO principeActif (nom) VALUES ('TOPOTECAN');
INSERT INTO principeActif (nom) VALUES ('ALBENDAZOLE');
INSERT INTO principeActif (nom) VALUES ('SALBUTAMOL');
INSERT INTO principeActif (nom) VALUES ('ABACAVIR');
INSERT INTO principeActif (nom) VALUES ('FOSAMPRENAVIR');
INSERT INTO principeActif (nom) VALUES ('NELARABINE');
INSERT INTO principeActif (nom) VALUES ('AMBRISENTAN');
INSERT INTO principeActif (nom) VALUES ('DABRAFENIB');
----------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('RETROVIR','12/5/1995','27/11/1996',NULL,1);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('ALKERAN','16/2/1997','21/11/2001',NULL,2);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('EPIVIR',NULL,'18/4/2010',NULL,3);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('FLOLAN',NULL,'16/1/2003',NULL,4);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('HYCAMTIN',NULL,'5/10/2000',NULL,5);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('ESKAZOLE','7/2/2002','4/10/2008',NULL,6);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('VENTOLINE',NULL,'5/2/2013',NULL,7);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('ZIAGEN','3/3/2001','15/10/2006',NULL,8);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('ZEFFIX',NULL,'11/2/2004',NULL,3);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('TELZIR','15/3/2009',NULL,NULL,9);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('ATRIANCE','14/5/2003','25/11/2009',NULL,10);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('VOLIBRIS','17/8/2004','6/8/2008',NULL,11);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('LAMIVUDINE',NULL,'9/1/2009',NULL,3);
INSERT INTO medoc (nom,date_brevet,date_amm,date_retrait,idPrincipeActif) VALUES ('TAFINLAR','23/3/2007','18/4/2008',NULL,12);
GO
----------------------------------------------------------------------------------------------------------------------------------------------