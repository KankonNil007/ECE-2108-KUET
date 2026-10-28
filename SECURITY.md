# Security Policy

## Supported Versions

This repository contains academic laboratory simulation models and computational scripts for **KUET ECE 2108**. The table below indicates the support status for simulation files and environments.

| Component | Target Version | Supported | Notes |
| :--- | :--- | :--- | :--- |
| MATLAB Scripts (`.m`) | R2016b – R2024b+ | :white_check_mark: | Base MATLAB only (no proprietary toolboxes required) |
| Multisim Schematics (`.ms14`) | NI Multisim 14.0+ | :white_check_mark: | Verified with NI Multisim 14.x |
| Documentation & Data | Current | :white_check_mark: | Theoretical and simulation reports |

---

## Reporting a Vulnerability

We take the integrity and safety of code, simulation definitions, and documentation seriously. If you identify any security issue, execution vulnerability, or suspicious behavior:

1. **Do not create a public GitHub issue.**
2. Send an email directly to the project author:
   - **Contact:** Kankon Mondal
   - **Email:** [kankonnil@gmail.com](mailto:kankonnil@gmail.com)
3. Please provide detailed steps to reproduce the issue, including your operating environment, MATLAB / Multisim versions, and a minimal reproducible example if relevant.
4. You will receive an acknowledgment within **48 hours**, followed by an assessment and appropriate patch or resolution.

---

## Safe Execution Guidelines

* **MATLAB Script Safety:** All MATLAB scripts in this repository (`matlab/`) contain pure mathematical evaluations and standard plotting routines. They do not execute external OS commands (`system()`, `dos()`), invoke unverified Java objects, or make outbound network requests. Always inspect scripts before execution in your local environment.
* **Multisim Schematic Files:** `.ms14` files are binary archives containing SPICE models and graphical layouts. Ensure they are opened strictly within verified National Instruments Multisim environments.

