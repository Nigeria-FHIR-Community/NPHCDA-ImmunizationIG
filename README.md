# 🇳🇬 Nigeria Immunization FHIR Implementation Guide [DRAFT 0.4]

**Maintained by:**  National Primary Healthcare Development Agency (NPHCDA)  
**Project Type:** HL7® FHIR® Implementation Guide  
**Language:** FHIR Shorthand (FSH)  
**Build Tool:** SUSHI (ShortHand Unshortens Syntax Iteratively)  
**License:** MIT

## Overview

This repository contains the source files for the **Nigeria Immunization FHIR Implementation Guide (IG)** published by the **National Primary Healthcare Development Agency (NPHCDA)**.  
The IG defines how HL7 FHIR standards are applied to immunization use cases in Nigeria, aligning with the **WHO SMART Guidelines**, **Digital Adaptation Kits (DAKs)**, and global best practices in digital health interoperability.

## Project Structure

- `input/`: Main working folder containing:
  - `fsh/`: FHIR Shorthand (FSH) files (profiles, extensions, value sets, etc.)
  - `images/`: Contains static images used in the guide.
  - `includes/`: Custom content like narrative markdown, guidance pages
  - `pagecontent/`: Markdown files for IG narrative content
- `sushi-config.yaml`: Main config for IG metadata (title, canonical URL, etc.)
- `ig.ini`: IG Publisher initialization file
- ~~`output/`: (To be auto-generated) IG publisher output including HTML, and assets, etc. Generated when ./_genonce is run.~~

## Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) (v18.20.7)
- [SUSHI](https://fshschool.org/docs/sushi/) (v3.14.0)
- [Java JDK](https://adoptopenjdk.net/) (v20 and above)
- VS - Code (with HL7 fsh extension)

### Setup Instructions

1. **Clone the repository**

```bash
git clone https://github.com/Nigeria-FHIR-Community/ImmunizationIG.git
cd Nigeria-Immunization-FHIR-IG
