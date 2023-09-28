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
* code.concept.coding[1] = $ATC#M01AB05 "Diklofenaakki"

Instance: diclofenac-sodium
InstanceOf: Substance
* insert Substance($SCT#62039007 "Diclofenac sodium")
* code.concept.coding[1] = $ATC#M01AB05 "Diklofenaakki"

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
* contraindication.diseaseSymptomProcedure.concept
  * coding[+] = $ICD10#N17 "Insufficientia renalis acuta"
  * coding[+] = $SCT#14669001 "Acute kidney injury"

Instance: diclofenac-undesirable-effect-swelling
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert DiclofenacSubstancesAsSubjects
* undesirableEffect.classification
  * coding[+] = $ICPC#A08 "Swelling"
  * coding[+] = $SCT#65124004 "Swelling"

Instance: diclofenac-undesirable-effect-heart-failure
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert DiclofenacSubstancesAsSubjects
* undesirableEffect.classification
  * coding[+] = $ICPC#K77 "Heart failure"
  * coding[+] = $ICD10#I50 "Insufficientia cordis"
  * coding[+] = $SCT#609386002 "At increased risk for heart failure"

Instance: diclofenac-undesirable-effect-kidney-symptom
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert DiclofenacSubstancesAsSubjects
* undesirableEffect.classification
  * coding[+] = $ICPC#U14 "Kidney symptom/complaint" // ???
  * coding[+] = $SCT#698463001 "At increased risk of chronic kidney disease" // ???

Instance: diclofenac-undesirable-effect-cardiovascular-disease
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* insert DiclofenacSubstancesAsSubjects
* undesirableEffect.classification = $ICPC#K22 "Risk factor for cardiovascular disease" // ???

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
