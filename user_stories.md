# Käyttäjätarinat

## Tekniikkahaku (3 tarinaa)

### Ominaisuus: Käyttäjänä haluan hakea tiettyä suomenkielistä karatetekniikkaa ja sen japaninkielistä vastinetta

Skenaario: Käyttäjä antaa hakusanan, jolla löytyy tekniikka tietokannasta.

```Gherkin
Given olen hakusivulla

When kirjoitan oikeanlaisen hakusanan ja painan enter-painiketta

Then näen hakusanalla löydetyn tekniikan ja sen japaninkielisen vastineen.
```

Skenaario: Käyttäjä antaa hakusanan, jolla ei löydy tekniikkaa tietokannasta.

```Gherkin
Given olen hakusivulla

When kirjoitan virheellisen hakusanan ja painan enter-painiketta

Then näen virheilmoituksen "Antamallasi hakusanalla ei löytynyt tekniikkaa."
```

### Ominaisuus: Käyttäjänä haluan hakea pelkästään valitsemani tekniikan lajin mukaiset tekniikat ja niiden japaninkieliset vastineet

Skenaario: Käyttäjä rajaa hakua siten, että järjestemä näyttää kaikki valitun tekniikan tyypin mukaiset tekniikat ja niiden japaninkieliset vastineet.

```Gherkin
Given olen hakusivulla

When valitsen tekniikan laji -alasvetovalikosta hakurajaukseksi yhden tekniikan lajin ("Seisonnat", "Torjunnat", "Lyönnit", "Iskut", "Potkut", "Hyppypotkut", "Liikkuminen" TAI "Heitot") ja painan enter-painiketta

Then näen hakurajauksen mukaisesti valitsemani tekniikan lajin mukaiset tekniikat ja niiden japaninkieliset vastineet.
```

### Ominaisuus: Käyttäjänä haluan hakea kaikki katat

Skenaario: Käyttäjä rajaa hakua siten, että järjestelmä näyttää kaikki tietokantaan tallennetut katat listana.

```Gherkin
Given olen hakusivulla

When valitsen hakurajaukseksi ensin "Kata" ja sitten "Näytä kaikki" ja painan enter-painiketta

Then näen hakurajauksen mukaisesti kaikki tietokantaan tallennetut katat.
```

## Vyökoevaatimushaku (6 tarinaa)

### Ominaisuus: Käyttäjänä haluan nähdä valitsemani vyökoevaatimuksen tiedot ja kaikki tekniikat

Skenaario: Käyttäjä valitsee alasvetovalikosta vyökoevaatimuksen, jonka tietoja ja kaikkia tekniikoita hän haluaa katsella.

```Gherkin
Given olen hakusivulla

When valitsen hakukriteeriksi "vyökoevaatimus" enkä valitse muita tietoja, ja painan enter-painiketta

Then näen valitsemani vyökoevaatimuksen tiedot ja tekniikat.
```

### Ominaisuus: Käyttäjänä haluan rajata nähtäväkseni valitsemastani vyökoevaatimuksesta vain perustekniikat

Skenaario: Käyttäjä valitsee alasvetovalikosta vyökoevaatimuksen, jonka tietoja ja perustekniikoita.

```Gherkin
Given olen hakusivulla

When valitsen hakukriteeriksi "vyökoevaatimus" ja "perustekniikat" ja painan enter-painiketta

Then näen valitsemani vyökoevaatimuksen tiedot ja pelkästään vyökoevaatimuksen tekniikat.
```

### Ominaisuus: Käyttäjänä haluan rajata nähtäväkseni valitsemastani vyökoevaatimuksesta vain yhdistelmätekniikat

Skenaario: Käyttäjä valitsee alasvetovalikosta vyökoevaatimuksen, jonka tietoja ja yhdistelmätekniikoita hän haluaa katsella.

```Gherkin
Given olen hakusivulla

When valitsen hakukriteeriksi "vyökoevaatimus" ja "yhdistelmätekniikat" ja painan enter-painiketta

Then näen valitsemani vyökoevaatimuksen tiedot ja pelkästään vyökoevaatimuksen yhdistelmätekniikat.
```

### Ominaisuus: Käyttäjänä haluan rajata nähtäväkseni valitsemastani vyökoevaatimuksesta vain katat

Skenaario: Käyttäjä valitsee alasvetovalikosta vyökoevaatimuksen, jonka tietoja ja katoja hän haluaa katsella.

```Gherkin
Given olen hakusivulla

When valitsen hakukriteeriksi "vyökoevaatimus" ja "katat" ja painan enter-painiketta

Then näen valitsemani vyökoevaatimuksen tiedot ja pelkästään vyökoevaatimuksen katat.
```

### Ominaisuus: Käyttäjänä haluan rajata nähtäväkseni valitsemastani vyökoevaatimuksesta vain kumiten

Skenaario: Käyttäjä valitsee alasvetovalikosta vyökoevaatimuksen, jonka tietoja ja kumiteja hän haluaa katsella.

```Gherkin
Given olen hakusivulla

When valitsen hakukriteeriksi "vyökoevaatimus" ja "kumitet" ja painan enter-painiketta

Then näen valitsemani vyökoevaatimuksen tiedot ja pelkästään vyökoevaatimuksen kumitet.
```

### Ominaisuus: Käyttäjänä haluan rajata nähtäväkseni valitsemastani vyökoevaatimuksesta vain murskaustekniikat

Skenaario: Käyttäjä valitsee alasvetovalikosta vyökoevaatimuksen, jonka tietoja ja murskaustekniikoita hän haluaa katsella.

```Gherkin
Given olen hakusivulla

When valitsen hakukriteeriksi "vyökoevaatimus" ja "murskaustekniikat" ja painan enter-painiketta

Then näen valitsemani vyökoevaatimuksen tiedot ja pelkästään vyökoevaatimuksen murskaustekniikat.
```
