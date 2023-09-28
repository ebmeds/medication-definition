CodeSystem: MedicineClassificationTypes
Id: medicine-classification-types
Description:  "An example of the available types of classification for MedicationKnowledge"
* ^status = #draft
* ^experimental = true
* ^content = #example
* #SuitabilityForOlderAdults "Suitability for older adults (≥ 75 years)"

CodeSystem: SuitabilityForOlderAdults
Id: suitability-for-older-adults
Description: "An example classification system for coding suitability for older adults"
* ^status = #draft
* ^experimental = true
* ^content = #example
* #A "Suitable for older adults"
* #A insert Designation(en, "Suitable for older adults")
* #A insert Designation(fi, "Sopii iäkkäille")
* #A insert Designation(sv, "Lämpar sig för äldre personer")
* #C "Suitable for older adults, with specific precautions"
* #C insert Designation(en, [["Suitable for older adults, with specific precautions"]])
* #C insert Designation(fi, "Soveltuu varauksin iäkkäille")
* #C insert Designation(sv, "Lämpar sig med förbehåll för äldre personer")

CodeSystem: SeriousAdverseReaction
Id: serious-adverse-reaction
Description:  "An example of the types of serious adverse reactions"
* ^status = #draft
* ^experimental = true
* ^content = #example
* #1 "Bleeding"
* #1 insert Designation(en, "Bleeding")
* #1 insert Designation(fi, "Verenvuodot")
* #2 "Blockages"
* #2 insert Designation(en, "Blockages")
* #2 insert Designation(fi, "Tukokset")
* #3 "Fetal effects"
* #3 insert Designation(en, "Fetal effects")
* #3 insert Designation(fi, "Sikiöhaitat")
