-- Paimu iš fimų lentelės (praeitas pavyzdys) tik pavadinimų stulpelius (visų eilučių)
SELECT pavadinimas
FROM filmas;

-- Paimu iš filmų lentelės trukmės stulpelį ir pavadinimo stulpelį
SELECT trukme, pavadinimas
FROM filmas;


-- Paimu filmo visus stulpelius, kurio pavadinimas yra "King Kongas"
SELECT *
FROM filmas
WHERE pavadinimas = "King Kongas"


-- Pridėjau dar papildomai testinių filmų (Tačiau netyčia įsidėjo godzilos kelios į 2 ir 3 id)
INSERT INTO filmas VALUES (null, "Žvaigdžių Karai", "2016-09-01", 132, 4.12, "Veiksmo"), (null, "Vienas Namuose", "1989-09-01", 132, 2.89, "Komedija"), (null, "Elvinas Preslis", "2022-07-12", null, null, "Biografija")


-- Ištrinu papildomas Godzilas (kad Vilandas nebumbėtų) (eina per kiekvieną filmą ir tikriną ar jis: arba trečias, arba ketvirtas, jeigu bent kuris iš tų tinka - ištrina tą filmą)
DELETE FROM filmas
WHERE id = 3 OR id = 4;


-- Tą patį buvo galima pasiekti truputį su kitokia sąlyga (bet tik tam scenarijui ši tiktų)
DELETE FROM filmas
WHERE pavadinimas="Godzila" AND reitingas=3.79;


-- Paimame (grąžiname) visus filmus, kurių reitingas yra aukštesnis nei 3
SELECt *
FROM filmas
WHERE reitingas>3


-- Paimame visų veiksmo filmų pavadinimą ir trukmę (selectinam tik tam tikrus stulpelius)
SELECT pavadinimas, trukme
FROm filmas
WHERE zanras="Veiksmo"