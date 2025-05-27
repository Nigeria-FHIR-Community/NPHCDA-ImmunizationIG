# 🇳🇬 Nigeria Immunization FHIR Implementation Guide

**Maintained by:**  
National Primary Healthcare Development Agency (NPHCDA)  
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
  - `resources/`: Static files or manually curated resources (e.g., images, examples)
  - `includes/`: Custom content like narrative markdown, guidance pages
  - `pagecontent/`: Markdown files for IG narrative content
- `fshconfig.yaml`: Configuration file for SUSHI
- `sushi-config.yaml`: Main config for IG metadata (title, canonical URL, etc.)
- `ig.ini`: IG Publisher initialization file
- `output/`: (auto-generated) IG publisher output including HTML, JSON, etc.

## Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) (v18 or higher)
- [SUSHI](https://fshschool.org/docs/sushi/) (FHIR Shorthand compiler)
- [Java JDK](https://adoptopenjdk.net/) (for HL7 IG Publisher)

### 🛠️ Setup Instructions

1. **Clone the repository**

```bash
git clone https://github.com/NPHCDA/Nigeria-Immunization-FHIR-IG.git
cd Nigeria-Immunization-FHIR-IG
