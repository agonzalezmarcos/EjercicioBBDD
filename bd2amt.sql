
drop table if EXISTS notas;
drop table if EXISTS alumnos;
drop table IF EXISTS asignaturas;

/* Crear tablas */
CREATE TABLE IF NOT EXISTS ALUMNOS
(
	IDN 	VARCHAR(10) NOT NULL PRIMARY KEY,
	APENOM	VARCHAR(32),
	DIRECC	VARCHAR(32),
    PROV	VARCHAR(32),
	EMAIL	VARCHAR(32)
);
CREATE TABLE IF NOT EXISTS ASIGNATURAS
(
	CDN		INT			NOT NULL PRIMARY KEY,
	NOMBRE	VARCHAR(32)
);
CREATE TABLE IF NOT EXISTS NOTAS
(
	IDN 	VARCHAR(10) NOT NULL,
	CDN		INT			NOT NULL,
	NOTA	INT,
	PRIMARY KEY(IDN,CDN)
);
/* Crear foreing keys */
ALTER TABLE NOTAS
	ADD CONSTRAINT	FKNOTASALUM FOREIGN KEY (IDN)
	REFERENCES ALUMNOS(IDN)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;


ALTER TABLE NOTAS
	ADD CONSTRAINT	FKNOTASASIG FOREIGN KEY (CDN)
	REFERENCES ASIGNATURAS(CDN)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;

/* Datos iniciales */
INSERT IGNORE INTO ALUMNOS VALUES('12000001','Perez Rovira, Pedro','C.Carpanta, 8','Madrid','dam200@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12100101','Martos Conde, Luisa','C.Zipi y Zape, 12','Madrid','dam201@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12200201','Núñez Perez, Maria','C.Anacleto, 59','Madrid','dam202@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12300301','Alvarez Castaño, Juana','C.Ebro, 1','Zaragoza','dam203@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12400401','Benitez Fernández, Ramon','Avda. del Pilar, 23','Zaragoza','dam204@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12500501','Castillo Torreón, Oscar','C.Rías Baixas, 100','Lugo','dam205@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12600601','Estevez Pons, Jorge','C.Carpanta, 144','Orense','dam206@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12700701','Lluc Rovira, Ainoa','C.Torre del Oro, 222','Sevilla','dam207@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12800801','Zambrano Alcaráz, Mario','C.Melocotón rojo, 56','Lérida','dam208@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12900901','Puente Puente, Angel','C.Ciencias y Letras, 8','Valencia','dam209@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12A00A01','Sánchez Mayoral, Rosa','C.Torreón de la reina, 8','Zamora','dam20A@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12B00B01','Sánchez Zurita, Esteban','Plaza.Augusta, 8','Cáceres','dam20B@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12C00C01','Ramírez Ramírez, Felipe','C.Aviador Dro, 8','Murcia','dam20C@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12D00D01','Menéndez Piedra, Raúl','C.Rosaleda blanca, 8','Málaga','dam20D@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12E00E01','Castaño Alvero, Alfredo','Avda.Diagonal, 178','Barcelona','dam20E@vdp.com');
INSERT IGNORE INTO ALUMNOS VALUES('12F00F01','Demont Ferrol, Estefanía','C.Los Olivos, 8','Jaén','dam20F@vdp.com');

INSERT IGNORE INTO ASIGNATURAS VALUES(486,'Acceso a Datos');
INSERT IGNORE INTO ASIGNATURAS VALUES(491,'Sistemas de Gestión Empresarial');
INSERT IGNORE INTO ASIGNATURAS VALUES(490,'Servicios y Procesos');
INSERT IGNORE INTO ASIGNATURAS VALUES(488,'Desarrolo de Interfaces');
INSERT IGNORE INTO ASIGNATURAS VALUES(494,'Empresa e Iniciativa');
INSERT IGNORE INTO ASIGNATURAS VALUES(489,'Multimedia y Disp.Móviles');

INSERT IGNORE INTO NOTAS VALUES('12000001',486,5);
INSERT IGNORE INTO NOTAS VALUES('12100101',486,5);
INSERT IGNORE INTO NOTAS VALUES('12200201',486,5);
INSERT IGNORE INTO NOTAS VALUES('12300301',486,5);
INSERT IGNORE INTO NOTAS VALUES('12400401',486,5);
INSERT IGNORE INTO NOTAS VALUES('12500501',486,5);
INSERT IGNORE INTO NOTAS VALUES('12600601',486,5);
INSERT IGNORE INTO NOTAS VALUES('12700701',486,5);
INSERT IGNORE INTO NOTAS VALUES('12800801',486,5);
INSERT IGNORE INTO NOTAS VALUES('12900901',486,5);
INSERT IGNORE INTO NOTAS VALUES('12A00A01',486,5);
INSERT IGNORE INTO NOTAS VALUES('12B00B01',486,5);
INSERT IGNORE INTO NOTAS VALUES('12C00C01',486,5);
INSERT IGNORE INTO NOTAS VALUES('12D00D01',486,5);
INSERT IGNORE INTO NOTAS VALUES('12E00E01',486,5);
INSERT IGNORE INTO NOTAS VALUES('12F00F01',486,5);

INSERT IGNORE INTO NOTAS VALUES('12000001',491,6);
INSERT IGNORE INTO NOTAS VALUES('12100101',491,6);
INSERT IGNORE INTO NOTAS VALUES('12200201',491,6);
INSERT IGNORE INTO NOTAS VALUES('12300301',491,6);
INSERT IGNORE INTO NOTAS VALUES('12400401',491,6);
INSERT IGNORE INTO NOTAS VALUES('12500501',491,6);
INSERT IGNORE INTO NOTAS VALUES('12600601',491,6);
INSERT IGNORE INTO NOTAS VALUES('12700701',491,6);
INSERT IGNORE INTO NOTAS VALUES('12800801',491,6);
INSERT IGNORE INTO NOTAS VALUES('12900901',491,6);
INSERT IGNORE INTO NOTAS VALUES('12A00A01',491,6);
INSERT IGNORE INTO NOTAS VALUES('12B00B01',491,6);
INSERT IGNORE INTO NOTAS VALUES('12C00C01',491,6);
INSERT IGNORE INTO NOTAS VALUES('12D00D01',491,6);
INSERT IGNORE INTO NOTAS VALUES('12E00E01',491,6);
INSERT IGNORE INTO NOTAS VALUES('12F00F01',491,6);


INSERT IGNORE INTO NOTAS VALUES('12000001',490,7);
INSERT IGNORE INTO NOTAS VALUES('12100101',490,7);
INSERT IGNORE INTO NOTAS VALUES('12200201',490,7);
INSERT IGNORE INTO NOTAS VALUES('12300301',490,7);
INSERT IGNORE INTO NOTAS VALUES('12400401',490,7);
INSERT IGNORE INTO NOTAS VALUES('12500501',490,7);
INSERT IGNORE INTO NOTAS VALUES('12600601',490,7);
INSERT IGNORE INTO NOTAS VALUES('12700701',490,7);
INSERT IGNORE INTO NOTAS VALUES('12800801',490,7);
INSERT IGNORE INTO NOTAS VALUES('12900901',490,7);
INSERT IGNORE INTO NOTAS VALUES('12A00A01',490,7);
INSERT IGNORE INTO NOTAS VALUES('12B00B01',490,7);
INSERT IGNORE INTO NOTAS VALUES('12C00C01',490,7);
INSERT IGNORE INTO NOTAS VALUES('12D00D01',490,7);
INSERT IGNORE INTO NOTAS VALUES('12E00E01',490,7);
INSERT IGNORE INTO NOTAS VALUES('12F00F01',490,7);

INSERT IGNORE INTO NOTAS VALUES('12000001',488,8);
INSERT IGNORE INTO NOTAS VALUES('12100101',488,8);
INSERT IGNORE INTO NOTAS VALUES('12200201',488,8);
INSERT IGNORE INTO NOTAS VALUES('12300301',488,8);
INSERT IGNORE INTO NOTAS VALUES('12400401',488,8);
INSERT IGNORE INTO NOTAS VALUES('12500501',488,8);
INSERT IGNORE INTO NOTAS VALUES('12600601',488,8);
INSERT IGNORE INTO NOTAS VALUES('12700701',488,8);
INSERT IGNORE INTO NOTAS VALUES('12800801',488,8);
INSERT IGNORE INTO NOTAS VALUES('12900901',488,8);
INSERT IGNORE INTO NOTAS VALUES('12A00A01',488,8);
INSERT IGNORE INTO NOTAS VALUES('12B00B01',488,8);
INSERT IGNORE INTO NOTAS VALUES('12C00C01',488,8);
INSERT IGNORE INTO NOTAS VALUES('12D00D01',488,8);
INSERT IGNORE INTO NOTAS VALUES('12E00E01',488,8);
INSERT IGNORE INTO NOTAS VALUES('12F00F01',488,8);

INSERT IGNORE INTO NOTAS VALUES('12000001',489,9);
INSERT IGNORE INTO NOTAS VALUES('12100101',489,9);
INSERT IGNORE INTO NOTAS VALUES('12200201',489,9);
INSERT IGNORE INTO NOTAS VALUES('12300301',489,9);
INSERT IGNORE INTO NOTAS VALUES('12400401',489,9);
INSERT IGNORE INTO NOTAS VALUES('12500501',489,9);
INSERT IGNORE INTO NOTAS VALUES('12600601',489,9);
INSERT IGNORE INTO NOTAS VALUES('12700701',489,9);
INSERT IGNORE INTO NOTAS VALUES('12800801',489,9);
INSERT IGNORE INTO NOTAS VALUES('12900901',489,9);
INSERT IGNORE INTO NOTAS VALUES('12A00A01',489,9);
INSERT IGNORE INTO NOTAS VALUES('12B00B01',489,9);
INSERT IGNORE INTO NOTAS VALUES('12C00C01',489,9);
INSERT IGNORE INTO NOTAS VALUES('12D00D01',489,9);
INSERT IGNORE INTO NOTAS VALUES('12E00E01',489,9);
INSERT IGNORE INTO NOTAS VALUES('12F00F01',489,9);

INSERT IGNORE INTO NOTAS VALUES('12000001',494,4);
INSERT IGNORE INTO NOTAS VALUES('12100101',494,4);
INSERT IGNORE INTO NOTAS VALUES('12200201',494,4);
INSERT IGNORE INTO NOTAS VALUES('12300301',494,4);
INSERT IGNORE INTO NOTAS VALUES('12400401',494,4);
INSERT IGNORE INTO NOTAS VALUES('12500501',494,4);
INSERT IGNORE INTO NOTAS VALUES('12600601',494,4);
INSERT IGNORE INTO NOTAS VALUES('12700701',494,4);
INSERT IGNORE INTO NOTAS VALUES('12800801',494,4);
INSERT IGNORE INTO NOTAS VALUES('12900901',494,4);
INSERT IGNORE INTO NOTAS VALUES('12A00A01',494,4);
INSERT IGNORE INTO NOTAS VALUES('12B00B01',494,4);
INSERT IGNORE INTO NOTAS VALUES('12C00C01',494,4);
INSERT IGNORE INTO NOTAS VALUES('12D00D01',494,4);
INSERT IGNORE INTO NOTAS VALUES('12E00E01',494,4);
INSERT IGNORE INTO NOTAS VALUES('12F00F01',494,4);
commit;