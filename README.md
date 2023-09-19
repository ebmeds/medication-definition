# Lääke75+ tietokannan mallintaminen FHIR-resursseina

> Tekstimuotoinen kuvaus vielä vaiheessa!

Käytetään esimerkkinä Lääke75+ tietokannan aineistoerän `2023-261` seuraavaa elementtiä:

```xml
<Laakeaine ainetunnus="8383">
  <Ainenimi>Atorvastatinum calcicum</Ainenimi>
  <ATC-koodi>C10AA05</ATC-koodi>
  <ATC-selite>Atorvastatinum calcicum</ATC-selite>
  <Luokka>A</Luokka>
  <KommenttiFI>Sopii iäkkäille. Mahdollisia haittavaikutuksia ovat lihaskivut ja lihasheikkous. Huomioi yhteisvaikutukset. Vältä greipin käyttöä hoidon aikana. (päivitetty 17.4.2023)</KommenttiFI>
  <KommenttiSV>Lämpar sig för äldre personer. Muskelsmärtor och muskelsvaghet möjliga biverkningar. Beakta interaktioner. Undvik grapefrukt under behandlingen. (uppdaterad 17.4.2023)</KommenttiSV>
  <KommenttiEN>Suitable for older adults. Possible adverse effects include muscle pain and muscle weakness. Consider interactions. Avoid  grapefruit during treatment. (updated 17.4.2023)</KommenttiEN>
  <LuokitteluPvm>2023-04-17</LuokitteluPvm>
  <Pakkauslista>
    <Pakkaustunnus id="95102" Nimi="Atorvastatin Krka" VNR="165920" />
    <Pakkaustunnus id="95109" Nimi="Atorvastatin Krka" VNR="165931" />
    <Pakkaustunnus id="95116" Nimi="Atorvastatin Krka" VNR="165942" />
    <Pakkaustunnus id="95123" Nimi="Atorvastatin Krka" VNR="165953" />
    <Pakkaustunnus id="95130" Nimi="Atorvastatin Krka" VNR="165964" />
    <Pakkaustunnus id="95137" Nimi="Atorvastatin Krka" VNR="165975" />
    <Pakkaustunnus id="122697" Nimi="Atorvastatin Ratiopharm" VNR="093439" />
    <Pakkaustunnus id="122704" Nimi="Atorvastatin Ratiopharm" VNR="541389" />
    <Pakkaustunnus id="122728" Nimi="Atorvastatin Ratiopharm" VNR="410532" />
    <Pakkaustunnus id="122735" Nimi="Atorvastatin Ratiopharm" VNR="385490" />
    <Pakkaustunnus id="122758" Nimi="Atorvastatin Ratiopharm" VNR="445422" />
    <Pakkaustunnus id="122765" Nimi="Atorvastatin Ratiopharm" VNR="476408" />
    <Pakkaustunnus id="122788" Nimi="Atorvastatin Ratiopharm" VNR="128138" />
    <Pakkaustunnus id="122795" Nimi="Atorvastatin Ratiopharm" VNR="154894" />
    <Pakkaustunnus id="131792" Nimi="Atorvastatin Krka" VNR="468739" />
    <Pakkaustunnus id="131798" Nimi="Atorvastatin Krka" VNR="040724" />
    <Pakkaustunnus id="135432" Nimi="Atorvastatin Pfizer" VNR="461493" />
    <Pakkaustunnus id="135448" Nimi="Atorvastatin Pfizer" VNR="195166" />
    <Pakkaustunnus id="135476" Nimi="Atorvastatin Pfizer" VNR="515818" />
  </Pakkauslista>
</Laakeaine>
```

Määritellään mahdolliset FHIR resurssit pilkkomalla kommentti _"Sopii iäkkäille. Mahdollisia haittavaikutuksia ovat lihaskivut ja lihasheikkous. Huomioi yhteisvaikutukset. Vältä greipin käyttöä hoidon aikana. (päivitetty 17.4.2023)"_ osiin...

| Kommentti                                                       | Mahdollinen FHIR resurssi                            |
| --------------------------------------------------------------- | ---------------------------------------------------- |
| Sopii iäkkäille.                                                |                                                      |
| Mahdollisia haittavaikutuksia ovat lihaskivut ja lihasheikkous. | `undesirable-effect` (2 kpl)                         |
| Huomioi yhteisvaikutukset.                                      | Yleishuomiona `warning`, kohdennettuna `interaction` |
| Vältä greipin käyttöä hoidon aikana.                            | `interaction`                                        |
