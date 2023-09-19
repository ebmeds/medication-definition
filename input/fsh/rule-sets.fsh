// A designation (i.e. language version) for a `CodeSystem` concept
RuleSet: Designation(language, text)
* ^designation[+].language = #{language}
* ^designation[=].value = {text}

RuleSet: Substance(concept)
* instance = false
* category = substance-category#drug "Drug or Medicament"
* code.concept = {concept}
