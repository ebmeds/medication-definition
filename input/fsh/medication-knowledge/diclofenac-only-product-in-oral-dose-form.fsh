Instance: diclofenac-only-product-in-oral-dose-form
InstanceOf: MedicationKnowledge
* code = $SCT#778988008 "Diclofenac only product in oral dose form"
// "Soveltuu varauksin iäkkäille."
* medicineClassification
  * type = medicine-classification-types#SuitabilityForOlderAdults
  * classification = suitability-for-older-adults#C
// "Vain lyhytaikaiseen käyttöön."
* clinicalUseIssue[+] = Reference(diclofenac-warning-for-short-term-use-only)
// "Älä käytä vaikeassa munuaisten vajaatoiminnassa."
* clinicalUseIssue[+] = Reference(diclofenac-contraindication-acute-renal-failure)
// "Lisää turvotuksia, pahentaa munuaisten ja sydämen vajaatoimintaa, sekä aiheuttaa sydän- ja verisuonitapahtumia."
* clinicalUseIssue[+] = Reference(diclofenac-undesirable-effect-swelling)
* clinicalUseIssue[+] = Reference(diclofenac-undesirable-effect-kidney-symptom)
* clinicalUseIssue[+] = Reference(diclofenac-undesirable-effect-heart-failure)
* clinicalUseIssue[+] = Reference(diclofenac-undesirable-effect-cardiovascular-disease)
// "Lisää verenvuodon riskiä, erityisesti ruuansulatuskanavassa."
* clinicalUseIssue[+] = Reference(diclofenac-undesirable-effect-rectal-bleeding)
// "Huomioi yhteisvaikutukset, etenkin verenvuotoa lisäävien lääkkeiden kanssa."
* clinicalUseIssue[+] = Reference(diclofenac-warning-consider-interactions-risk-of-bleeding)

Instance: diclofenac-potassium
InstanceOf: Substance
* insert Substance($SCT#108515008 "Diclofenac potassium")

Instance: diclofenac-sodium
InstanceOf: Substance
* insert Substance($SCT#62039007 "Diclofenac sodium")

RuleSet: DiclofenacSubstancesAsSubjects
* subject[+] = Reference(diclofenac-potassium)
* subject[+] = Reference(diclofenac-sodium)

Instance: diclofenac-warning-for-short-term-use-only
InstanceOf: ClinicalUseDefinition
* type = #warning
* insert DiclofenacSubstancesAsSubjects
* warning.code = clinical-use-warnings#ForShortTermUseOnly

Instance: diclofenac-contraindication-acute-renal-failure
InstanceOf: ClinicalUseDefinition
* type = #contraindication
* insert DiclofenacSubstancesAsSubjects
* contraindication.diseaseSymptomProcedure.concept = $ICD10#N17 "Insufficientia renalis acuta"

Instance: diclofenac-undesirable-effect-swelling
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert DiclofenacSubstancesAsSubjects
* undesirableEffect.classification = $ICPC#A08 "Swelling"

Instance: diclofenac-undesirable-effect-heart-failure
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert DiclofenacSubstancesAsSubjects
* undesirableEffect.classification = $ICPC#K77 "Heart failure"

Instance: diclofenac-undesirable-effect-kidney-symptom
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert DiclofenacSubstancesAsSubjects
* undesirableEffect.classification = $ICPC#U14 "Kidney symptom/complaint"

Instance: diclofenac-undesirable-effect-cardiovascular-disease
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert DiclofenacSubstancesAsSubjects
* undesirableEffect.classification = $ICPC#K22 "Risk factor for cardiovascular disease"

Instance: diclofenac-undesirable-effect-rectal-bleeding
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert DiclofenacSubstancesAsSubjects
* undesirableEffect.classification = $ICPC#K22 "Rectal bleeding"

Instance: diclofenac-warning-consider-interactions-risk-of-bleeding
InstanceOf: ClinicalUseDefinition
* type = #warning
* insert DiclofenacSubstancesAsSubjects
* warning.code = clinical-use-warnings#ConsiderInteractionsRiskOfBleeding
