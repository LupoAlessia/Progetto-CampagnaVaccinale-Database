--- ENTITA' INSERIMENTO TABELLE ---


--- CARTELLA CLINICA ---

INSERT INTO Cartellaclinica ("cittadino")
	VALUES ('PDRGNF54L22B880J'),
		('BGILCR63M65I668B'),
		('FRRLGO78B53D653V'),
		('GTTTLL79E31A783O'),
		('PRZMRT84C09I452V'),
		('FNTCST55P02D901F'),
		('RCLBCC63H28E553O'),
		('MNTTTR65S23E023K'),
		('BCCTTV98D29F419E'),
		('MCCBLD99R06C568M');


--- CENTRO VACCINALE ---

INSERT INTO Centrovaccinale("indirizzo", "citta")
	VALUES('Via Trieste, 57','Teramo'),
		('Via Palermo, 54','Trento'), 
		('Via Foggia, 110','Palermo');


--- CITTADINO ---

INSERT INTO Cittadino("cf", "nome", "cognome", "citta_residenza", "indirizzo_residenza",
"data_nascita", "eta", "fragilita", "email", "num_telefono")
	VALUES('PDRGNF54L22B880J', 'Alessia', 'Pedersoli', 'Teramo', 'Via Casalecchio di
	reno, 205', '1954-07-22', '68','0', '1', '0'),
		('BGILCR63M65I668B', 'Lucrezia', 'Biagi', 'Teramo', 'Via Serri, 21', '1963-08-20', '59', '0','0',
		'1'),
		('FRRLGO78B53D653V', 'Olga', 'Ferrucci', 'Trento', 'Via Foligno, 117', '1978-02-13', '44', '1',
		'0', '1'),
		('GTTTLL79E31A783O', 'Tullio', 'Gatto', 'Trento', 'Via Benevento, 181', '1979-05-31', '43',
		'0', '0', '1'),
		('PRZMRT84C09I452V', 'Martino', 'Peruzzi', 'Palermo', 'Via Sassari, 149', '1984-03-09', '38',
		'1', '0', '1'),
		('FNTCST55P02D901F', 'Costantino', 'Finetti', 'Trento', 'Via Gambolo , 150', '1955-09-02',
		'67', '0', '0', '1'),
		('RCLBCC63H28E553O', 'Baccio', 'Ricolfi', 'Trento', 'Via Lestizza, 69', '1963-06-28', '59', '0',
		'0', '1'),
		('MNTTTR65S23E023K', 'Ettore', 'Montessori', 'Teramo', 'Via Gibellina, 41', '1965-11-23',
		'57', '0', '1', '0'),
		('BCCTTV98D29F419E', 'Ottavio', 'Boccioni', 'Palermo', 'Via Montalto di castro, 40',
		'1998-04-29', '24', '0', '1', '0'),
		('MCCBLD99R06C568M', 'Baldassare', 'Maccanelli', 'Palermo', 'Via Cesaro , 9',
		'1999-10-06', '23', '0', '0', '1');



--- CONVOCAZIONE ---

INSERT INTO Convocazione("indirizzo_centrov", "citta_centrov", "data_c", "cittadino", "nome_v")
	VALUES('Via Trieste, 57','Teramo','2022-07-22 09:00:00','PDRGNF54L22B880J','CORONAX'),
		('Via Trieste, 57','Teramo','2020-01-05 10:00:00','BGILCR63M65I668B','COVIDIN'),
		('Via Palermo, 54','Trento', '2021-04-08 11:30:00','FRRLGO78B53D653V','FLUSTOP'),
		('Via Palermo, 54','Trento','2022-06-19 08:50:00','GTTTLL79E31A783O','CORONAX'),
		('Via Foggia, 110','Palermo','2019-12-04 09:20:00','PRZMRT84C09I452V','FLUSTOP'),
		('Via Palermo, 54','Trento','2021-06-03 10:45:00','FNTCST55P02D901F','COVIDIN'),
		('Via Palermo, 54','Trento','2021-11-11 11:00:00','RCLBCC63H28E553O','CORONAX'),
		('Via Trieste, 57','Teramo','2022-05-06 07:45:00','MNTTTR65S23E023K','COVIDIN'),
		('Via Foggia, 110','Palermo','2020-09-08 09:45:00','BCCTTV98D29F419E','COVIDIN'),
		('Via Foggia, 110','Palermo','2022-09-07 14:00:00','MCCBLD99R06C568M','COVIDIN'),
		('Via Trieste, 57','Teramo','2023-01-22 09:00:00','PDRGNF54L22B880J','CORONAX'),
		('Via Trieste, 57','Teramo','2020-07-05 10:00:00','BGILCR63M65I668B','COVIDIN'),
		('Via Palermo, 54','Trento','2022-11-19 08:50:00','GTTTLL79E31A783O','CORONAX'),
		('Via Palermo, 54','Trento','2021-12-03 18:45:00','FNTCST55P02D901F','COVIDIN'),
		('Via Palermo, 54','Trento','2022-04-11 17:00:00','RCLBCC63H28E553O','CORONAX'),
		('Via Trieste, 57','Teramo','2022-11-06 07:45:00','MNTTTR65S23E023K','COVIDIN'),
		('Via Foggia, 110','Palermo','2021-03-08 10:45:00','BCCTTV98D29F419E','COVIDIN'),
		('Via Foggia, 110','Palermo','2023-03-07 11:00:00','MCCBLD99R06C568M','COVIDIN'),
		('Via Trieste, 57','Teramo','2023-07-22 09:00:00','PDRGNF54L22B880J','CORONAX'),
		('Via Trieste, 57','Teramo','2021-02-05 10:30:00','BGILCR63M65I668B','COVIDIN'), 
		('Via Palermo, 54','Trento', '2021-10-08 12:30:00','FRRLGO78B53D653V','FLUSTOP'),
		('Via Palermo, 54','Trento','2023-05-19 08:50:00','GTTTLL79E31A783O','CORONAX'),
		('Via Foggia, 110','Palermo','2020-06-04 14:20:00','PRZMRT84C09I452V','FLUSTOP'),
		('Via Palermo, 54','Trento','2022-12-03 15:45:00','FNTCST55P02D901F','COVIDIN'),
		('Via Palermo, 54','Trento','2022-10-11 11:00:00','RCLBCC63H28E553O','CORONAX'),
		('Via Trieste, 57','Teramo','2023-05-06 07:45:00','MNTTTR65S23E023K','COVIDIN'),
		('Via Foggia, 110','Palermo','2021-09-08 09:45:00','BCCTTV98D29F419E','COVIDIN'),
		('Via Foggia, 110','Palermo','2023-09-07 14:00:00','MCCBLD99R06C568M','COVIDIN');

--- DOSE ---

INSERT INTO Dose ("codice", "vaccino", "lotto")
	VALUES('20000','CORONAX','1'),
		('20001','CORONAX','1'),
		('20002','CORONAX','1'),
		('20003','CORONAX','1'),
		('20004','CORONAX','1'),
		('20005','CORONAX','1'),
		('20006','CORONAX','1'),
		('20007','CORONAX','1'),
		('20008','CORONAX','1'),
		('20009','CORONAX','1'),
		('20100','CORONAX','2'),
		('20101','CORONAX','2'),
		('20102','CORONAX','2'),
		('20103','CORONAX','2'),
		('20104','CORONAX','2'),
		('20105','CORONAX','2'),
		('20106','CORONAX','2'),
		('20107','CORONAX','2'),
		('20108','CORONAX','2'),
		('20109','CORONAX','2'),
		('20200','CORONAX','3'),
		('20201','CORONAX','3'),
		('20202','CORONAX','3'),
		('20203','CORONAX','3'),
		('20204','CORONAX','3'),
		('20205','CORONAX','3'),
		('20206','CORONAX','3'),
		('20207','CORONAX','3'),
		('20208','CORONAX','3'),
		('20209','CORONAX','3'),
		('30000','COVIDIN','1'),
		('30001','COVIDIN','1'),
		('30002','COVIDIN','1'),
		('30003','COVIDIN','1'),
		('30004','COVIDIN','1'),
		('30005','COVIDIN','1'),
		('30006','COVIDIN','1'),
		('30007','COVIDIN','1'),
		('30008','COVIDIN','1'),
		('30009','COVIDIN','1'),
		('30100','COVIDIN','2'),
		('30101','COVIDIN','2'),
		('30102','COVIDIN','2'),
		('30103','COVIDIN','2'),
		('30104','COVIDIN','2'),
		('30105','COVIDIN','2'),
		('30106','COVIDIN','2'),
		('30107','COVIDIN','2'),
		('30108','COVIDIN','2'),
		('30109','COVIDIN','3'),
		('30200','COVIDIN','3'),
		('30201','COVIDIN','3'),
		('30202','COVIDIN','3'),
		('30203','COVIDIN','3'),
		('30204','COVIDIN','3'),
		('30205','COVIDIN','3'),
		('30206','COVIDIN','3'),
		('30207','COVIDIN','3'),
		('30208','COVIDIN','3'),
		('30209','COVIDIN','3'),
		('40000','FLUSTOP','1'),
		('40001','FLUSTOP','1'),
		('40002','FLUSTOP','1'),
		('40003','FLUSTOP','1'),
		('40004','FLUSTOP','1'),
		('40005','FLUSTOP','1'),
		('40006','FLUSTOP','1'),
		('40007','FLUSTOP','1'),
		('40008','FLUSTOP','1'),
		('40009','FLUSTOP','1'),
		('40100','FLUSTOP','2'),
		('40101','FLUSTOP','2'),
		('40102','FLUSTOP','2'),
		('40103','FLUSTOP','2'),
		('40104','FLUSTOP','2'),
		('40105','FLUSTOP','2'),
		('40106','FLUSTOP','2'),
		('40107','FLUSTOP','2'),
		('40108','FLUSTOP','2'),
		('40109','FLUSTOP','2'),
		('40200','FLUSTOP','3'),
		('40201','FLUSTOP','3'),
		('40202','FLUSTOP','3'),
		('40203','FLUSTOP','3'),
		('40204','FLUSTOP','3'),
		('40205','FLUSTOP','3'),
		('40206','FLUSTOP','3'),
		('40207','FLUSTOP','3'),
		('40208','FLUSTOP','3'),
		('40209','FLUSTOP','3');

--- GREEN PASS ---

INSERT INTO Greenpass ("codice", "data_gp", "cittadino")
	VALUES('0001','2023-01-23','PDRGNF54L22B880J'),
		('0002','2020-07-06', 'BGILCR63M65I668B'),
		('0003','2021-04-09', 'FRRLGO78B53D653V'),
		('0004','2022-11-20', 'GTTTLL79E31A783O'),
		('0005','2019-12-05', 'PRZMRT84C09I452V'),
		('0006','2022-06-04','FNTCST55P02D901F'),
		('0007','2022-04-12', 'RCLBCC63H28E553O'),
		('0008','2022-11-07', 'MNTTTR65S23E023K'),
		('0009','2021-03-09', 'BCCTTV98D29F419E'),
		('0011','2023-03-08', 'MCCBLD99R06C568M');


--- LOTTO ---

INSERT INTO Lotto("numero", "vaccino", "danneggiato", "data_scadenza")
	VALUES( '1', 'COVIDIN', '0', '2023-12-10'),
		( '2', 'COVIDIN', '0', '2027-05-22'),
		( '3', 'COVIDIN', '0', '2030-09-15'),
		( '1', 'FLUSTOP', '0', '2024-01-15'),
		( '2', 'FLUSTOP','0', '2026-05-06'),
		( '3', 'FLUSTOP', '0', '2029-09-04'),
		( '1', 'CORONAX', '1', '2024-11-11'),
		( '2', 'CORONAX', '0', '2023-06-14'),
		( '3', 'CORONAX', '0', '2027-07-11');

--- OSPEDALE ---

INSERT INTO Ospedale("indirizzo", "citta")
	VALUES('Via Brescia, 20', 'Alessandria'),
		('Via Borgoglio, 79', 'Biella');

--- PATOLOGIA ---

INSERT INTO Patologia("data_ip", "nome", "data_fp")
	VALUES('1971-03-09','Allergie','2011-06-20'),
		('1988-01-22','Intolleranze alimentari ','2005-02-28'),
		('1992-09-07','Problemi respiratori ','1993-03-25'),
		('1992-02-18','Problemi cardiaci','1993-06-03'),
		('1970-12-6','Operazioni chirurgiche','1999-06-10'),
		('1983-02-6','Malattie cardiocircolatorie','1985-05-06'),
		('1990-07-25','Malattie neurologiche','2020-05-03'),
		('1985-10-01','Diabete','2002-05-09'),
		('1982-10-16','Insufficienza renale','1993-10-28'),
		('1983-06-06','Malattie autoimmuni','2001-10-05'),
		('1979-07-23','Malattia epatica','2014-09-25'),
		('1981-04-24','Malattie cerebrovascolari','2000-11-10'),
		('1978-02-14','Patologia oncologica','2020-09-01'),
		('2000-07-02','Emoglobinopatie','2013-09-02'),
		('1988-03-01','Trapianti','2000-02-21'),
		('1977-01-7','Grave obesita ','1993-04-02'),
		('1979-05-22','Immunodeficienza da HIV','2002-04-18'),
		('1971-04-26','Arteriopatia arti inferiori','2019-12-06'),
		('1993-02-08','Glaucoma','2015-07-05'),
		('1988-05-22','Ernia Iatale','2005-11-10');

--- PERSONALE SANITARIO ---

INSERT INTO Personalesanitario("cittadino", "indirizzo_centrov", "citta_centrov", "tipologia")
	VALUES('RCLBCC63H28E553O','Via Palermo, 54','Trento','Medico di base'),
        ('PRZMRT84C09I452V','Via Foggia, 110','Palermo','Personale Specializzato'),
		('MNTTTR65S23E023K','Via Trieste, 57','Teramo','Personale Specializzato');



--- PERSONALE SCOLASTICO ---

INSERT INTO Personalescolastico ("cittadino")
	VALUES('PDRGNF54L22B880J');


--- REAZIONE ALLERGICA ---

INSERT INTO Reazioneallergica("nome")
	VALUES('anafilassi'),
		('episodi sincopali'),
		('crisi di ansia'),
		('spasmi respiratori'),
		('svenimento'),
		('collasso'),
		('shock anafilattico'),
		('trombosi venose intracraniche'),
		('reazioni locali'),
		('dolore');

--- REPORT ---

INSERT INTO Report("data_r", "personalesanitario", "citta_personales", "indirizzo_personales", "data_v",
"n_dosev", "cittadino", "dose", "lotto", "vaccino")
	VALUES('2022-06-19 09:15:00', 'RCLBCC63H28E553O', 'Trento', 'Via Palermo, 54',
	'2022-06-19 09:00:00', '1', 'GTTTLL79E31A783O', '20001', '1','CORONAX'),
		('2021-06-03 11:05:00', 'RCLBCC63H28E553O', 'Trento', 'Via Palermo, 54', '2021-06-03
		10:55:00', '1','FNTCST55P02D901F', '30001', '1', 'COVIDIN'),
		('2021-11-11 11:26:00', 'RCLBCC63H28E553O', 'Trento', 'Via Palermo, 54', '2021-11-11
		11:11:00', '1', 'RCLBCC63H28E553O', '20002', '1', 'CORONAX'),
		('2022-11-06 08:15:00', 'MNTTTR65S23E023K', 'Teramo', 'Via Trieste, 57', '2022-11-06
		08:00:00',' 2', 'MNTTTR65S23E023K', '30008', '1', 'COVIDIN'),
		('2021-03-08 11:05:00', 'PRZMRT84C09I452V', 'Palermo', 'Via Foggia, 110', '2021-03-08
		10:55:00', '2', 'BCCTTV98D29F419E', '30009', '1', 'COVIDIN'),
		('2023-07-22 09:25:00', 'MNTTTR65S23E023K', 'Teramo', 'Via Trieste, 57', '2023-07-22
		09:10:00', '3', 'PDRGNF54L22B880J', '20100', '2', 'CORONAX'),
		('2021-02-05 10:55:00', 'MNTTTR65S23E023K', 'Teramo', 'Via Trieste, 57', '2021-02-05
		10:40:00', '3', 'BGILCR63M65I668B', '30100', '2', 'COVIDIN'),
		('2022-12-03 16:15:00', 'RCLBCC63H28E553O', 'Trento', 'Via Palermo, 54', '2022-12-03
		16:00:00', '3', 'FNTCST55P02D901F', '30101', '2', 'COVIDIN');

--- RICOVERO ---

INSERT INTO Ricovero("data_ir", "cartellaclinica", "data_fr", "citta_ospedale", "indirizzo_ospedale")
	VALUES('2019-05-06','BGILCR63M65I668B','2019-05-26','Alessandria','Via Brescia, 20'),
		('2021-09-25','GTTTLL79E31A783O','2021-10-10','Biella','Via Borgoglio, 79');


--- SOSPENSIONE ---

INSERT INTO Sospensione("data_is", "greenpass", "data_fs")
	VALUES('2021-04-21','0002','2021-05-11'),
		('2021-09-16','0004','2021-10-06'),
		('2021-05-09','0009', '2021-05-29'),
		('2021-07-25','0006','2021-08-11');

--- TAMPONE ---

INSERT INTO Tampone("data_t", "indirizzo_centrov", "citta_centrov", "cartellaclinica",
"positivita")
	VALUES('2021-04-20','Via Trieste, 57','Teramo','BGILCR63M65I668B', '1'),
		('2021-05-05','Via Trieste, 57', 'Teramo', 'BGILCR63M65I668B', '1'),
		('2021-09-15','Via Palermo, 54','Trento','GTTTLL79E31A783O', '1'),
		('2021-09-20','Via Palermo, 54','Trento','GTTTLL79E31A783O','1'),
		('2021-07-25','Via Palermo, 54','Trento','FNTCST55P02D901F','1'),
		('2021-08-05','Via Palermo, 54','Trento','FNTCST55P02D901F','0'),
		('2021-08-10','Via Palermo, 54','Trento','FNTCST55P02D901F','0'),
		('2021-04-24', 'Via Foggia, 110', 'Palermo', 'BCCTTV98D29F419E', '0'),
		('2021-05-10', 'Via Foggia, 110', 'Palermo', 'BCCTTV98D29F419E', '1'),
		('2021-05-25', 'Via Foggia, 110', 'Palermo', 'BCCTTV98D29F419E', '0'),
		('2021-05-28', 'Via Foggia, 110', 'Palermo', 'BCCTTV98D29F419E', '0'),
		('2020-03-09','Via Trieste, 57','Teramo','MNTTTR65S23E023K','0'),
		('2020-03-29','Via Trieste, 57','Teramo','MNTTTR65S23E023K','0');

--- VACCINAZIONE ---

INSERT INTO Vaccinazione ("n_dose", "data_v", "cittadino", "vaccino", "lotto", "dose",
"personalesanitario", "citta_personales", "indirizzo_personales")
	VALUES('1','2022-07-22 09:10:00','PDRGNF54L22B880J', 'CORONAX', '1', '20000',
	'MNTTTR65S23E023K', 'Teramo','Via Trieste, 57'),
		('1','2020-01-05 10:10:00','BGILCR63M65I668B', 'COVIDIN', '1', '30000',
		'MNTTTR65S23E023K', 'Teramo','Via Trieste, 57'),
		('1','2021-04-08 11:40:00','FRRLGO78B53D653V', 'FLUSTOP', '1', '40000',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54');
		('1','2022-06-19 09:00:00','GTTTLL79E31A783O', 'CORONAX', '1', '20001',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54'),
		('1','2019-12-04 09:30:00','PRZMRT84C09I452V', 'FLUSTOP', '1', '40001',
		'PRZMRT84C09I452V', 'Palermo','Via Foggia, 110'),
		('1','2021-06-03 10:55:00','FNTCST55P02D901F', 'COVIDIN', '1', '30001',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54'),
		('1','2021-11-11 11:11:00','RCLBCC63H28E553O', 'CORONAX', '1', '20002',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54'),
		('1','2022-05-06 07:55:00','MNTTTR65S23E023K', 'COVIDIN', '1', '30003',
		'MNTTTR65S23E023K','Via Trieste, 57','Teramo'),
		('1','2020-09-08 09:50:00','BCCTTV98D29F419E', 'COVIDIN', '1', '30004',
		'PRZMRT84C09I452V', 'Palermo','Via Foggia, 110'),
		('1','2022-09-07 14:10:00','MCCBLD99R06C568M', 'COVIDIN', '1', '30005',
		'PRZMRT84C09I452V', 'Palermo','Via Foggia, 110'),
		('2','202-01-22 09:10:00','PDRGNF54L22B880J', 'CORONAX', '1', '20003',
		'MNTTTR65S23E023K', 'Teramo','Via Trieste, 57'),
		('2','2020-07-05 10:10:00','BGILCR63M65I668B', 'COVIDIN', '1', '30006',
		'MNTTTR65S23E023K', 'Teramo','Via Trieste, 57'),
		('2','2022-11-19 21:00:00','GTTTLL79E31A783O', 'CORONAX', '1', '20004',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54'),
		('2','2021-12-03 18:45:00','FNTCST55P02D901F', 'COVIDIN', '1', '30007',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54'),
		('2','2022-04-11 17:17:00','RCLBCC63H28E553O', 'CORONAX', '1', '20005',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54'),
		('2','2022-11-06 08:00:00','MNTTTR65S23E023K', 'COVIDIN', '1', '30008',
		'MNTTTR65S23E023K','Teramo','Via Trieste, 57'),
		('2','2021-03-08 10:55:00','BCCTTV98D29F419E', 'COVIDIN', '1', '30009',
		'PRZMRT84C09I452V', 'Palermo','Via Foggia, 110'),
		('2','2023-03-07 11:10:00','MCCBLD99R06C568M', 'COVIDIN', '2', '30105',
		'PRZMRT84C09I452V', 'Palermo','Via Foggia, 110'),
		('3','2023-07-22 09:10:00','PDRGNF54L22B880J', 'CORONAX', '2', '20100',
		'MNTTTR65S23E023K', 'Teramo','Via Trieste, 57'),
		('3','2021-02-05 10:40:00','BGILCR63M65I668B', 'COVIDIN', '2', '30100',
		'MNTTTR65S23E023K', 'Teramo','Via Trieste, 57'),
		('3','2021-10-08 12:40:00','FRRLGO78B53D653V', 'FLUSTOP', '2', '40100',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54'),
		('3','2023-05-19 09:00:00','GTTTLL79E31A783O', 'CORONAX', '2', '20101',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54'),
		('3','2020-06-04 14:30:00','PRZMRT84C09I452V', 'FLUSTOP', '2', '40101',
		'PRZMRT84C09I452V', 'Palermo','Via Foggia, 110'),
		('3','2022-12-03 16:00:00','FNTCST55P02D901F', 'COVIDIN', '2', '30101',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54'),
		('3','2022-10-11 11:10:00','RCLBCC63H28E553O', 'CORONAX', '2', '20102',
		'RCLBCC63H28E553O', 'Trento','Via Palermo, 54'),
		('3','2023-05-06 07:55:00','MNTTTR65S23E023K', 'COVIDIN', '2', '30102',
		'MNTTTR65S23E023K','Via Trieste, 57','Teramo'),
		('3','2021-09-08 09:55:00','BCCTTV98D29F419E', 'COVIDIN', '2', '30103',
		'PRZMRT84C09I452V', 'Palermo','Via Foggia, 110'),
		('3','2023-09-07 14:00:00','MCCBLD99R06C568M', 'COVIDIN', '2', '30104',
		'PRZMRT84C09I452V', 'Palermo','Via Foggia, 110');

--- VACCINO ---

INSERT INTO Vaccino("nome", "efficacia", "etamin", "etamax", "intervallo_dose", "monodose")
	VALUES ('COVIDIN', '99', '16', '80', '6 mesi', '0'),
		('CORONAX', '98', '25', '90', '5 mesi', '0'),
		('FLUSTOP', '99', '16', '100', 'NULL', '1');

--- RELAZIONE INSERIMENTO TABELLE ---


--- CC_P, tra cartella clinica e patologia ---

INSERT INTO CC_P ("cartellaclinica", "nome_patologia", "data_ipatologia")
	VALUES('PRZMRT84C09I452V','Allergie','1971-03-09'),
		('PRZMRT84C09I452V','Intolleranze alimentari','1988-01-22'),
		('PRZMRT84C09I452V','Insufficienza renale','1982-10-16'),
		('FRRLGO78B53D653V','Diabete','1985-10-01'),
		('FRRLGO78B53D653V','Grave obesita ','1977-01-07');



--- CV_L, tra centro vaccinale e lotto ---

INSERT INTO CV_L ("vaccino", "lotto", "indirizzo_centrov", "citta_centrov")
	VALUES('CORONAX','1','Via Trieste, 57','Teramo'),
		('CORONAX','2','Via Palermo, 54','Trento'),
		('CORONAX','3','Via Foggia, 110','Palermo'),
		('COVIDIN','1','Via Trieste, 57','Teramo'),
		('COVIDIN','2','Via Palermo, 54','Trento'),
		('COVIDIN','3','Via Foggia, 110','Palermo'),
		('FLUSTOP','1','Via Trieste, 57','Teramo'),
		('FLUSTOP','2','Via Palermo, 54','Trento'),
		('FLUSTOP','3','Via Foggia, 110','Palermo');

--- RA_RE, tra reazione allergica e report ---

INSERT INTO RA_RE ("reazione", "data_r", "personalesanitario", "citta_personales",
"indirizzo_personales", "data_v", "n_dosev", "cittadino", "dose", "lotto", "vaccino")
	VALUES
		('svenimento','2021-11-11 11:26:00', 'RCLBCC63H28E553O', 'Trento', 'Via Palermo, 54',
		'2021-11-11 11:11:00', '1', 'RCLBCC63H28E553O', '20002', '1', 'CORONAX'),
		('crisi di ansia','2022-11-06 08:15:00', 'MNTTTR65S23E023K', 'Teramo', 'Via Trieste, 57',
		'2022-11-06 08:00:00','2', 'MNTTTR65S23E023K', '30008', '1', 'COVIDIN'),
		('trombosi venose intracraniche','2021-03-08 11:05:00', 'PRZMRT84C09I452V', 'Palermo',
		'Via Foggia, 110', '2021-03-08 10:55:00', '2', 'BCCTTV98D29F419E', '30009', '1',
		'COVIDIN'),
		('cutanea','2023-07-22 09:25:00', 'MNTTTR65S23E023K', 'Teramo', 'Via Trieste, 57',
		'2023-07-22 09:10:00', '3', 'PDRGNF54L22B880J', '20100', '2', 'CORONAX'),
		('svenimento','2021-02-05 10:55:00', 'MNTTTR65S23E023K', 'Teramo', 'Via Trieste, 57',
		'2021-02-05 10:40:00', '3', 'BGILCR63M65I668B', '30100', '2', 'COVIDIN'),
		('crisi di ansia','2022-12-03 16:15:00', 'RCLBCC63H28E553O', 'Trento', 'Via Palermo, 54',
		'2022-12-03 16:00:00', '3', 'FNTCST55P02D901F', '30101', '2', 'COVIDIN');



