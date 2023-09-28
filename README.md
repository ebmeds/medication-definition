# Examples of using the Medication Definition Module

This repository contains example FHIR resources for use-cases picked from the Fimea-produced drug databases _"Lääke75+"_ and _"Kansallinen riskilääkeluokitus"_. The resources are available under the `fsh-generated` directory.

## Generating the example resources by using FHIR Shorthand

The [FHIR Shorthand](https://build.fhir.org/ig/HL7/fhir-shorthand/) definitions for generating the resources are also included. There is a great tutorial for getting started with FSH available at [FSH School](https://fshschool.org/). For a quickstart:

1. Install [Node.js](https://nodejs.org/en)
2. Run the command `npm install` in the root of this repository
3. Run the command `npm build` to generate the resources by using the `SUSHI` build tool

Please note that the usage of `FSH` and the included toolchain is for the sole purpose of generating the example resources. **This toolchain is not necessary for a FHIR service.**
