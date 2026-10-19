--- UPDATE ---

--Cittadino--
UPDATE Cittadino
SET "data_nascita" = '1963-08-20'
WHERE "data_nascita" = '1963-08-25'

--Reazione allergica--
UPDATE Reazioneallergica
SET "nome" = 'cutanea'
WHERE "nome" = 'collasso'

--Green pass--
UPDATE Greenpass
SET "codice" = '0011'
WHERE "codice" = '0010'

--Ospedale--
UPDATE Ospedale
SET "indirizzo" = 'Via Bruna, 10'
WHERE "indirizzo" = 'Via Brescia, 20'

--- DELETE ---

--Reazione allergica--
DELETE FROM Reazioneallergica
WHERE "nome" = 'dolore'

--Dose--
DELETE FROM Dose
WHERE "codice" = '20002'

--Patologia--
DELETE FROM Patologia
WHERE "nome" = 'Ernia Iatale'