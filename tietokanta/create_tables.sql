CREATE TABLE TekniikanTyyppi (
    id INTEGER PRIMARY KEY,
    tekniikan_tyyppi_FI TEXT,
    tekniikan_tyyppi_JP TEXT
);

CREATE TABLE TekniikanLaji (
    id INTEGER PRIMARY KEY,
    tekniikan_laji_FI TEXT,
    tekniikan_laji_JP TEXT
);

CREATE TABLE Tekniikka (
    id INTEGER PRIMARY KEY,
    nimi_FI TEXT,
    nimi_JP TEXT,
    tekniikan_tyyppi INTEGER REFERENCES TekniikanTyyppi,
    tekniikan_laji INTEGER REFERENCES PerustekniikanLaji
);

CREATE TABLE YhdistelmaTekniikka (
    id INTEGER PRIMARY KEY,
    tekniikka1 INTEGER REFERENCES Tekniikka,
    tekniikka2 INTEGER REFERENCES Tekniikka,
    tekniikka3 INTEGER REFERENCES Tekniikka
);

CREATE TABLE Kata (
    id INTEGER PRIMARY KEY,
    nimi_JP TEXT
);

CREATE TABLE Kumite (
    id INTEGER PRIMARY KEY,
    nimi_FI TEXT,
    nimi_JP TEXT
);

CREATE TABLE Vyokoevaatimus (
    id INTEGER PRIMARY KEY,
    vyoarvo TEXT,
    vari TEXT,
    minimiharjoitusaika_kk INTEGER,
    minimiharjoitus_lkm INTEGER,
    minimi_pisteet INTEGER
);

CREATE TABLE VyokoevaatimuksenTekniikka (
    id INTEGER PRIMARY KEY,
    vyokoevaatimus INTEGER REFERENCES Vyokoevaatimus,
    tekniikka INTEGER REFERENCES Tekniikka
);

CREATE TABLE VyokoevaatimuksenYhdistelmaTekniikka (
    id INTEGER PRIMARY KEY,
    vyokoevaatimus INTEGER REFERENCES Vyokoevaatimus,
    yhdistelmatekniikka INTEGER REFERENCES YhdistelmaTekniikka
);

CREATE TABLE VyokoevaatimuksenKata (
    id INTEGER PRIMARY KEY,
    vyokoevaatimus INTEGER REFERENCES Vyokoevaatimus,
    kata INTEGER REFERENCES Kata,
    lisatieto TEXT
);

CREATE TABLE VyokoevaatimuksenKumite (
    id INTEGER PRIMARY KEY,
    vyokoevaatimus INTEGER REFERENCES Vyokoevaatimus,
    kumite INTEGER REFERENCES KumiteTyyppi,
    hyokkaystekniikka INTEGER REFERENCES Tekniikka,
    puolustustekniikka INTEGER REFERENCES YhdistelmaTekniikka,
    lisatieto TEXT
);