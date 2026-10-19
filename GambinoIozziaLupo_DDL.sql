 -- ENTITA' DELLE TABELLE --
 
 

--- CARTELLA CLINICA ---

CREATE TABLE Cartellaclinica
(
    cittadino character varying(16) NOT NULL,
    CONSTRAINT cartella_pkey PRIMARY KEY (cittadino),
    CONSTRAINT cartella_fkey_cittadino FOREIGN KEY (cittadino)
        REFERENCES Cittadino (cf) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- CENTRO VACCINALE ---

CREATE TABLE Centrovaccinale
(
    citta character varying(40) NOT NULL,
    indirizzo character varying(100) NOT NULL,
    CONSTRAINT Centrovaccinale_pkey PRIMARY KEY (citta, indirizzo)
)

--- CITTADINO ---

CREATE Cittadino
(
    cf character varying(16) NOT NULL,
    nome character varying(30) NOT NULL,
    cognome character varying(30) NOT NULL,
    data_nascita date NOT NULL,
    eta integer NOT NULL,
    citta_residenza character varying(40) NOT NULL,
    indirizzo_residenza character varying(100) NOT NULL,
    fragilita boolean NOT NULL,
    email boolean NOT NULL,
    num_telefono boolean NOT NULL,
	CONSTRAINT Cittadino_pkey PRIMARY KEY (cf)
)

--- CONVOCAZIONE ---

CREATE TABLE Convocazione
(
    cittadino character varying(16) NOT NULL,
    citta_centrov character varying(40) NOT NULL,
    indirizzo_centrov character varying(100) NOT NULL,
    data_c timestamp without time zone NOT NULL,
    nome_v character varying(7) NOT NULL,
    CONSTRAINT convocazione_pkey PRIMARY KEY (data_c, cittadino, citta_centrov, indirizzo_centrov),
    CONSTRAINT convocazione_fkey_centrovaccinale FOREIGN KEY (citta_centrov, indirizzo_centrov)
        REFERENCES Centrovaccinale (citta, indirizzo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT convocazione_fkey_cittadino FOREIGN KEY (cittadino)
        REFERENCES Cittadino (cf) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- DOSE ---

CREATE TABLE Dose
(
    lotto integer NOT NULL,
    vaccino character varying(30) NOT NULL,
    codice character varying(16) NOT NULL,
    CONSTRAINT dose_pkey PRIMARY KEY (codice, lotto, vaccino),
    CONSTRAINT dose_fkey_lotto FOREIGN KEY (lotto, vaccino)
        REFERENCES Lotto (numero, vaccino) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- GREEEN PASS ---

CREATE TABLE Greenpass
(
    codice integer NOT NULL,
    data_gp date NOT NULL,
    cittadino character varying(16) NOT NULL,
    CONSTRAINT greenpass_pkey PRIMARY KEY (codice),
    CONSTRAINT greenpass_fkey_cittadino FOREIGN KEY (cittadino)
        REFERENCES Cittadino (cf) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- LOTTO ---

CREATE TABLE Lotto
(
    vaccino character varying(30) NOT NULL,
    numero integer NOT NULL,
    danneggiato boolean NOT NULL,
    data_scadenza date NOT NULL,
    CONSTRAINT lotto_pkey PRIMARY KEY (numero, vaccino),
    CONSTRAINT lotto_fkey_vaccino FOREIGN KEY (vaccino)
        REFERENCES Vaccino (nome) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

---OSPEDALE ---

CREATE TABLE Ospedale
(
    citta character varying(40) NOT NULL,
    indirizzo character varying(100) NOT NULL,
    CONSTRAINT ospedale_pkey PRIMARY KEY (citta, indirizzo)
)

--- PATOLOGIA ---

CREATE TABLE Patologia
(
    nome character varying(40) NOT NULL,
    data_ip date NOT NULL,
    data_fp date,
    CONSTRAINT patologia_pkey PRIMARY KEY (nome, data_ip)
)

--- PERSONALE SANITARIO ---

CREATE TABLE Personalesanitario
(
    cittadino character varying(16) NOT NULL,
    citta_centrov character varying(40) NOT NULL,
    indirizzo_centrov character varying(100) NOT NULL,
    tipologia character varying(50) NOT NULL,
    CONSTRAINT personalesanitario_pkey PRIMARY KEY (cittadino, citta_centrov, indirizzo_centrov),
    CONSTRAINT personalesanitario_fkey_centrovaccinale FOREIGN KEY (citta_centrov, indirizzo_centrov)
        REFERENCES Centrovaccinale (citta, indirizzo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT personalesanitario_fkey_cittadino FOREIGN KEY (cittadino)
        REFERENCES Cittadino (cf) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- PERSONALE SCOLASTICO ---

CREATE TABLE Personalescolastico
(
    cittadino character varying(16) NOT NULL,
    CONSTRAINT personalescolastico_pkey PRIMARY KEY (cittadino),
    CONSTRAINT personalescolastico_fkey_cittadino FOREIGN KEY (cittadino)
        REFERENCES Cittadino (cf) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- REAZIONE ALLERGICA ---

CREATE TABLE Reazioneallergica
(
    nome character varying(100) NOT NULL,
    CONSTRAINT reazioneallergica_pkey PRIMARY KEY (nome)
)

--- REPORT ---

CREATE TABLE Report
(
    data_r timestamp without time zone NOT NULL,
    personalesanitario character varying(16) NOT NULL,
    citta_personales character varying(40) NOT NULL,
    indirizzo_personales character varying(100) NOT NULL,
    data_v timestamp without time zone NOT NULL,
    n_dosev smallint NOT NULL,
    cittadino character varying(16) NOT NULL,
    dose character varying(16) NOT NULL,
    lotto integer NOT NULL,
    vaccino character varying(30) NOT NULL,
    CONSTRAINT report_pkey PRIMARY KEY (data_r, personalesanitario, citta_personales, indirizzo_personales, data_v, n_dosev, cittadino, vaccino, lotto, dose),
    CONSTRAINT report_fkey_personalesanitario FOREIGN KEY (indirizzo_personales, personalesanitario, citta_personales)
        REFERENCES Personalesanitario (indirizzo_centrov, cittadino, citta_centrov) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT report_fkey_vaccinazione FOREIGN KEY (data_v, lotto, n_dosev, dose, vaccino, cittadino)
        REFERENCES Vaccinazione (data_v, lotto, n_dose, dose, vaccino, cittadino) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- RICOVERO ---

CREATE TABLE Ricovero
(
    cartellaclinica character varying(16) NOT NULL,
    data_fr date,
    data_ir date NOT NULL,
    citta_ospedale character varying(40) NOT NULL,
    indirizzo_ospedale character varying(100) NOT NULL,
    CONSTRAINT ricovero_pkey PRIMARY KEY (data_ir, cartellaclinica),
    CONSTRAINT ricovero_fkey_cartellaclinica FOREIGN KEY (cartellaclinica)
        REFERENCES Cartellaclinica (cittadino) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT ricovero_fkey_ospedale FOREIGN KEY (citta_ospedale, indirizzo_ospedale)
        REFERENCES Ospedale (citta, indirizzo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- SOSPENSIONE ---

CREATE TABLE Sospensione
(
    data_is date NOT NULL,
    greenpass integer NOT NULL,
    data_fs date NOT NULL,
    CONSTRAINT sospensione_pkey PRIMARY KEY (data_is, greenpass),
    CONSTRAINT sospensione_fkey_greenpass FOREIGN KEY (greenpass)
        REFERENCES Greenpass (codice) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- TAMPONE ---

CREATE TABLE Tampone
(
    data_t date NOT NULL,
    indirizzo_centrov character varying(100) NOT NULL,
    citta_centrov character varying(40) NOT NULL,
    cartellaclinica character varying(16) NOT NULL,
    positivita boolean NOT NULL,
    CONSTRAINT tampone_pkey PRIMARY KEY (data_t, indirizzo_centrov, citta_centrov, cartellaclinica),
    CONSTRAINT tampone_fkey_cartellaclinica FOREIGN KEY (cartellaclinica)
        REFERENCES Cartellaclinica (cittadino) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT tampone_fkey_centrovaccinale FOREIGN KEY (citta_centrov, indirizzo_centrov)
        REFERENCES Centrovaccinale (citta, indirizzo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- VACCINAZIONE ---

CREATE TABLE Vaccinazione
(
    n_dose integer NOT NULL,
    data_v timestamp without time zone NOT NULL,
    cittadino character varying(16) NOT NULL,
    vaccino character varying(30) NOT NULL,
    lotto integer NOT NULL,
    dose character varying(16) NOT NULL,
    personalesanitario character varying(16) NOT NULL,
    citta_personales character varying(40) NOT NULL,
    indirizzo_personales character varying(100) NOT NULL,
    CONSTRAINT vaccinazione_pkey PRIMARY KEY (n_dose, data_v, cittadino, vaccino, lotto, dose),
    CONSTRAINT vaccinazione_fkey_cittadino FOREIGN KEY (cittadino)
        REFERENCES Cittadino (cf) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT vaccinazione_fkey_dose FOREIGN KEY (vaccino, dose, lotto)
        REFERENCES Dose (vaccino, codice, lotto) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT vaccinazione_fkey_personalesanitario FOREIGN KEY (indirizzo_personales, personalesanitario, citta_personales)
        REFERENCES Personalesanitario (indirizzo_centrov, cittadino, citta_centrov) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- VACCINO ---

CREATE TABLE Vaccino
(
    nome character varying(7) NOT NULL,
    efficacia integer NOT NULL,
    etamin integer NOT NULL,
    etamax integer NOT NULL,
    monodose boolean NOT NULL,
    intervallo_dose character varying(15),
    CONSTRAINT vaccino_pkey PRIMARY KEY (nome)
)


 -- RELAZIONE TABELLE --

 
 
--- CC_P, tra Cartella Clinica e Patologia ---

CREATE TABLE cc_p
(
    cartellaclinica character varying(16) NOT NULL,
    nome_patologia character varying(40) NOT NULL,
    data_ipatologia date NOT NULL,
    CONSTRAINT ccp_pkey PRIMARY KEY (cartellaclinica, nome_patologia, data_ipatologia),
    CONSTRAINT ccp_fkey_cartellaclinica FOREIGN KEY (cartellaclinica)
        REFERENCES Cartellaclinica (cittadino) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT ccp_fkey_patologia FOREIGN KEY (data_ipatologia, nome_patologia)
        REFERENCES Patologia (data_ip, nome) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

---CV_L, tra Centro vaccinale e Lotto ---

CREATE TABLE cv_l
(
    vaccino character varying(30) NOT NULL,
    lotto integer NOT NULL,
    indirizzo_centrov character varying(100) NOT NULL,
    citta_centrov character varying(40) NOT NULL,
    CONSTRAINT cvl_pkey PRIMARY KEY (vaccino, lotto, indirizzo_centrov, citta_centrov),
    CONSTRAINT cvl_fkey_centrovaccinale FOREIGN KEY (citta_centrov, indirizzo_centrov)
        REFERENCES Centrovaccinale (citta, indirizzo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT cvl_fkey_lotto FOREIGN KEY (lotto, vaccino)
        REFERENCES Lotto (numero, vaccino) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

--- RA_RE, tra Reazione allergica e Report ---

CREATE TABLE ra_re
(
    reazione character varying(100) NOT NULL,
    data_r timestamp without time zone NOT NULL,
    personalesanitario character varying(16) NOT NULL,
    citta_personales character varying(40) NOT NULL,
    indirizzo_personales character varying(100) NOT NULL,
    data_v timestamp without time zone NOT NULL,
    n_dosev smallint NOT NULL,
    cittadino character varying(16) NOT NULL,
    dose character varying(16) NOT NULL,
    lotto integer NOT NULL,
    vaccino character varying(30) NOT NULL,
    CONSTRAINT rare_pkey PRIMARY KEY (reazione, data_r, personalesanitario, citta_personales, indirizzo_personales, data_v, n_dosev, cittadino, dose, lotto, vaccino),
    CONSTRAINT rare_fkey_reazioneallergica FOREIGN KEY (reazione)
        REFERENCES Reazioneallergica (nome) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT rare_fkey_report FOREIGN KEY (vaccino, cittadino, data_r, data_v, lotto, indirizzo_personales, personalesanitario, dose, n_dosev, citta_personales)
        REFERENCES Report (vaccino, cittadino, data_r, data_v, lotto, indirizzo_personales, personalesanitario, dose, n_dosev, citta_personales) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)