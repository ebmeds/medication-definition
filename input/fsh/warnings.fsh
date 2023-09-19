CodeSystem: ClinicalUseWarnings
Id: clinical-use-warnings
Description: "An example set of warnings for ClinicalUseDefinition"
* ^status = #draft
* ^experimental = true
* ^content = #example
* #ConsiderInteractions "Consider interactions"
* #ConsiderInteractions insert Designation(en, "Consider interactions")
* #ConsiderInteractions insert Designation(fi, "Huomioi yhteisvaikutukset")
* #ConsiderInteractions insert Designation(sv, "Beakta interaktioner")
* #ConsiderInteractionsRiskOfBleeding "Consider interactions"
* #ConsiderInteractionsRiskOfBleeding insert Designation(en, [["Consider potential interactions, especially with preparations that increase risk of bleeding"]])
* #ConsiderInteractionsRiskOfBleeding insert Designation(fi, [["Huomioi yhteisvaikutukset, etenkin verenvuotoa lisäävien lääkkeiden kanssa"]])
* #ConsiderInteractionsRiskOfBleeding insert Designation(sv, [["Beakta interaktioner, särskilt med preparate som ökar risken för blödningar"]])
* #ForShortTermUseOnly "For short-term use only"
* #ForShortTermUseOnly insert Designation(en, "For short-term use only")
* #ForShortTermUseOnly insert Designation(fi, "Vain lyhytaikaiseen käyttöön")
* #ForShortTermUseOnly insert Designation(sv, "Endast för kortvarigt bruk")
