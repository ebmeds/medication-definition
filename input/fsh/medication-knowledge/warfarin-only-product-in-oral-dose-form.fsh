Instance: warfarin-only-product-in-oral-dose-form
InstanceOf: MedicationKnowledge
* code = $SCT#780775008 "Warfarin only product in oral dose form"
* definitional.intendedRoute = $ROUTE#1057 "Oropharyngeal use"
* clinicalUseIssue[+] = Reference(warfarin-serious-adverse-reaction-bleeding)
* clinicalUseIssue[+] = Reference(warfarin-serious-adverse-reaction-blockages)
* clinicalUseIssue[+] = Reference(warfarin-serious-adverse-reaction-fetal-effects)

Instance: warfarin
InstanceOf: Substance
* insert Substance($SCT#372756006 "Warfarin")
* code.concept.coding[1] = $ATC#B01AA03 "Varfariini"

Instance: warfarin-serious-adverse-reaction-bleeding
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* subject[+] = Reference(warfarin)
* undesirableEffect.classification
  * coding[+] = serious-adverse-reaction#1 "Verenvuodot"
  * text = "Vakavana seurauksena verenvuodot - 'esim. liian iso annos, INR>tavoite, yhteisvaikutukset"

Instance: warfarin-serious-adverse-reaction-blockages
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* subject[+] = Reference(warfarin)
* undesirableEffect.classification
  * coding[+] = serious-adverse-reaction#2 "Tukokset"
  * text = "Vakavana seurauksena tukokset - liian pieni/virheellinen annos, INR<tavoite"

Instance: warfarin-serious-adverse-reaction-fetal-effects
InstanceOf: ClinicalUseDefinition
* type = #undesirable-effect
* category = $clinical-use-definition-category#Pregnancy
* subject[+] = Reference(warfarin)
* undesirableEffect.classification
  * coding[+] = serious-adverse-reaction#3 "Sikiöhaitat"
