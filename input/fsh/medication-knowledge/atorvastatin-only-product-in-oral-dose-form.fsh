Instance: atorvastatin-only-product-in-oral-dose-form
InstanceOf: MedicationKnowledge
* code = $SCT#773456008 "Atorvastatin only product in oral dose form"
// "Sopii iäkkäille."
* medicineClassification
  * type = medicine-classification-types#SuitabilityForOlderAdults
  * classification = suitability-for-older-adults#A
// "Mahdollisia haittavaikutuksia ovat lihaskivut ja lihasheikkous."
* clinicalUseIssue[+] = Reference(atorvastatin-undesirable-effect-muscle-pain)
* clinicalUseIssue[+] = Reference(atorvastatin-undesirable-effect-weakness)
// "Huomioi yhteisvaikutukset."
* clinicalUseIssue[+] = Reference(atorvastatin-warning-consider-interactions)
// "Vältä greipin käyttöä hoidon aikana."
* clinicalUseIssue[+] = Reference(atorvastatin-interaction-grapefruit)

Instance: atorvastatin-calcium
InstanceOf: Substance
* insert Substance($SCT#108601004 "Atorvastatin calcium")

Instance: atorvastatin-calcium-trihydrate
InstanceOf: Substance
* insert Substance($SCT#725658002 "Atorvastatin calcium trihydrate")

RuleSet: AtorvastatinSubstancesAsSubjects
* subject[+] = Reference(atorvastatin-calcium)
* subject[+] = Reference(atorvastatin-calcium-trihydrate)

Instance: atorvastatin-undesirable-effect-muscle-pain
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert AtorvastatinSubstancesAsSubjects
* undesirableEffect.classification = $ICPC#L18 "Muscle pain"

Instance: atorvastatin-undesirable-effect-weakness
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert AtorvastatinSubstancesAsSubjects
* undesirableEffect.classification = $ICPC#A04 "Weakness/tiredness general"

Instance: atorvastatin-warning-consider-interactions
InstanceOf: ClinicalUseDefinition
* type = #warning
* insert AtorvastatinSubstancesAsSubjects
* warning.code = clinical-use-warnings#ConsiderInteractions

Instance: atorvastatin-interaction-grapefruit
InstanceOf: ClinicalUseDefinition
* type = #interaction
* insert AtorvastatinSubstancesAsSubjects
* interaction
  * interactant.itemCodeableConcept = $SCT#256315005 "Grapefruit"
  * type = interaction-type#drug-food
