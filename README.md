# Progetto-CampagnaVaccinale-Database
Progettazione concettuale e logica di una base di dati per la gestione su scala nazionale della campagna vaccinale anti COVID-19. Il progetto include la modellazione E-R, la definizione delle regole aziendali, la tavola degli accessi, l'analisi delle ridondanze, l'eliminazione delle generalizzazioni e la documentazione tecnica.

# 💉 Sistema di Gestione Campagna Vaccinale COVID-19

Progetto sviluppato per l'esame di **Basi di Dati** (A.A. 2021/2022).  
L'obiettivo è la modellazione concettuale, logica e la ristrutturazione di una base di dati relazionale per la gestione su scala nazionale della campagna vaccinale anti COVID-19, comprendente la gestione di cittadini, centri vaccinali, somministrazioni, lotti, cartelle cliniche, report avversi e rilascio Green Pass.

---

## 📋 Specifiche di Progetto & Requisiti

### 🎯 Funzionalità del Sistema
- **Anagrafica & Fragilità:** Gestione dei cittadini suddivisi per occupazione (personale sanitario, scolastico, altri) e tracciamento delle categorie fragili con cartella clinica informatizzata.
- **Gestione Vaccini & Lotti:** Tracciamento dei tipi di vaccino (*COVIDIN*, *CORONAX*, *FLUSTOP*), somministrazioni monodose/doppia dose, intervalli temporali e gestione lotti con relative scadenze.
- **Prenotazioni & Convocazioni:** Assegnazione automatica dei cittadini agli hub vaccinali della città di residenza in base alla disponibilità delle fiale e ai vincoli clinici/allergici.
- **Monitoraggio & Reportism:** Gestione dell'osservazione post-vaccino, segnalazione reazioni avverse con emissione di report dedicati e procedura di ritiro lotti dal Ministero della Salute.
- **Certificazione Green Pass & Sospensioni:** Rilascio automatico del Green Pass (validità 9 mesi) e gestione delle sospensioni in caso di positività accertata con ricovero o tampone.

---

## 📐 Fasi di Progettazione

### 1. Progettazione Concettuale
* **Glossario dei Termini:** Standardizzazione del dominio applicativo.
* **Ristrutturazione Requisiti:** Eliminazione delle ambiguità e frasi omogenee.
* **Modellazione E-R:** Definizione di Entità, Relazioni, Cardinalità e vincoli aziendali (RV1–RV15, RD1–RD4).
* **Pattern Utilizzati:** Uso di pattern *Part-of* (Dose-Lotto), *Instance-of* (Lotto-Vaccino) e storicizzazione delle entità e relazioni (Patologia, Ricovero, Sospensione).

### 2. Progettazione Logica & Ristrutturazione
* **Tavola dei Volumi e delle Operazioni:** Stima degli accessi in lettura/scrittura su base giornaliera.
* **Analisi delle Ridondanze:** Studio costi/benefici su associazioni e attributi derivati (es. associazione `M.B. - RE.` e attributo `N_Dose`).
* **Eliminazione Generalizzazioni:** 
  * Sostituzione delle generalizzazioni con associazioni/chiavi esterne per `Cittadino`.
  * Accorpamento del padre nei figli per l'entità `Struttura Sanitaria` (`Ospedale` e `Centro Vaccinale`).

---

## 🛠️ Tecnologie & Strumenti
- **Modellazione:** Diagrammi E-R (Entità-Relazione), Schema Logico Relazionale
- **Linguaggio DDL/DML:** SQL (MySQL / PostgreSQL)
