-- Susikuriu filmas lentelę
-- Joje yra blogai padaryta trukmė stulpelis bei trūksta reitingo ir žanro stulpelių
-- Juos paredaguosiu ir pridėsiu su kodu sekančiuose pavyzdžiuose
CREATE TABLE filmas(
  id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  pavadinimas VARCHAR(60) NOT NULL,
  isleidimo_data DATE NOT NULL,
  trukme DOUBLE(5)
);



-- Ištrinu trukmės stulpelį (kadangi ju buvo padarytas klaidingai)
ALTER TABLE filmas
DROP COLUMN trukme;


-- Įdedu naują trukmės stulpelį (kuris jau yra padarytas teisingai)
ALTER TABLE filmas
ADD COLUMN trukme INTEGER(4);

-- Įdedu žanro ir reitingo stulpelius
ALTER TABLE filmas
ADD COLUMN reitingas DOUBlE(7,5);

ALTER TABLE filmas
ADD COLUMN zanras VARCHAR(60)


-- Pridedu vieną filmą
INSERT INTO filmas VALUES (null, "King Kongas", "2014-04-01", 146, 4.14, "Nuotykių")

-- Pridedu dar kitą filmą
INSERT INTO filmas VALUES (null, "Godzila", "2018-09-01", 132, 3.79, "Veiksmo")

-- Pažiūriu kokie duomenys yra visi "filmas" lentelėje
SELECT *
FROM filmas;

-- Atnaujinu pirmo filmo reitingą, tačiau jį atnaujinu prastai - nėra "WHERE" skilties, todėl atnaujina VISUS filmus
UPDATE filmas
SET reitingas=4.5;


-- Pakeičiame antro filmo reitingą
UPDATE filmas
SET reitingas=3.71
WHERE id=2;


-- Pakeičiame visų filmų, kurių trukmė yra trumpesnė nei 140 minučių, reitingą į 3.00
UPDATE filmas
SET reitingas=3.00
WHERE trukme<140;


