<div align="center">

# 🎓 ECE 2108: Continuous Signals and Linear Systems Sessional

[![KUET](https://img.shields.io/badge/KUET-ECE%202108-red?style=for-the-badge&logo=googlescholar&logoColor=white)](https://www.kuet.ac.bd)
[![MATLAB](https://img.shields.io/badge/MATLAB-R2016b%2B-blue?style=for-the-badge&logo=mathworks&logoColor=white)](https://www.mathworks.com/products/matlab.html)
[![NI Multisim](https://img.shields.io/badge/NI%20Multisim-14.0%2B-orange?style=for-the-badge)](https://www.ni.com/multisim)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)
[![Security Policy](https://img.shields.io/badge/Security-Policy%20Enforced-brightgreen?style=for-the-badge)](SECURITY.md)

<p align="center">
  <b>Department of Electronics and Communication Engineering (ECE)</b><br>
  <b>Khulna University of Engineering & Technology (KUET)</b><br>
  <i>Author:</i> <b>Kankon Mondal</b>
</p>

---

[Course Overview](#-course-overview) •
[Repository Structure](#-repository-structure) •
[Laboratory Modules](#-laboratory-modules) •
[Class Work](#-class-work-modules) •
[Featured Course Project](#-featured-course-project) •
[Quickstart Guide](#-quickstart-guide) •
[License & Security](#-license--security)

---

</div>

## 📌 Course Overview

**ECE 2108: Continuous Signals and Linear Systems Sessional** is a foundational undergraduate laboratory course offered by the Department of Electronics and Communication Engineering at Khulna University of Engineering & Technology (KUET). 

This repository serves as a centralized, structured academic archive comprising all laboratory experiments, in-class computational exercises, and the comprehensive final term project. The coursework systematically builds from elementary signal synthesis and discrete-time operations to advanced transform-domain formulations (Fourier, Laplace, and Z-transforms), linear system stability, state-space representations, and two-port passive filter design with SPICE verification.

---

## 📁 Repository Structure

```text
ECE-2108-KUET/
├── Class_Work/                           # Interactive lecture and practice MATLAB scripts
│   ├── convint.m                         # Continuous-time numerical convolution function
│   ├── shift.m                           # Discrete signal shifting utility function
│   ├── kankon02.m – kankon09.m           # Practice scripts (FFT, linearity, state-space)
│   └── README.md                         # Class work index & documentation
├── Labs/                                 # Laboratory experiments (01 – 05)
│   ├── LAB - 01/                         # Elementary signal generation & visualization
│   │   ├── figures/                      # Waveform output captures (.png)
│   │   ├── LAB0101.m – LAB0103.m         # Impulse, step, and ramp scripts
│   │   └── README.md                     # Lab 01 report with embedded plots
│   ├── LAB - 02/                         # Operations on signals & mathematical foundations
│   │   ├── figures/                      # Waveform and matrix output captures
│   │   ├── *.m                           # Even/odd, shifting, Ax=b, statistics
│   │   └── README.md                     # Lab 02 report with embedded plots
│   ├── LAB - 03/                         # Frequency analysis of signals
│   │   ├── figures/                      # Harmonic and magnitude spectrum plots
│   │   ├── Fourier_*.m                   # Fourier series & FFT scripts
│   │   └── README.md                     # Lab 03 report with embedded plots
│   ├── LAB - 04/                         # System properties & transform domain analysis
│   │   ├── figures/                      # Linearity, time-invariance & Z-plane plots
│   │   ├── LAB0401.m – LAB0403.m         # Linearity, Laplace/Z-transform, stability
│   │   └── README.md                     # Lab 04 report with embedded plots
│   ├── LAB - 05/                         # State-space modeling & dynamic control analysis
│   │   ├── figures/                      # Continuous/discrete step & Bode plots
│   │   ├── LAB0501.m, LAB0502.m          # Continuous and discrete state-space models
│   │   └── README.md                     # Lab 05 report with embedded plots
│   └── README.md                         # Laboratory syllabus and index
├── Project/                              # Final Term Project: Passive Two-Port Filter Network
│   ├── docs/                             # Academic project documentation & reports
│   │   └── ECE 2108 Lab Project.pdf      # Full 24-page academic lab report
│   ├── figures/                          # Schematics and high-resolution MATLAB analysis plots
│   │   ├── plots/                        # Frequency sweep, load variation, sensitivity
│   │   └── schematics/                   # Single-stage & dual-stage circuit schematics
│   ├── matlab/                           # Standalone MATLAB numerical simulation
│   │   └── ECE2108_Passive_Two_Port_Filter.m
│   ├── multisim/                         # NI Multisim 14 SPICE circuit schematic
│   │   └── ECE-2108-Project-01.ms14
│   └── README.md                         # Detailed project report & mathematical derivations
├── .gitignore                            # Temp and autosave file exclusions
├── LICENSE                               # Permissive MIT License
├── README.md                             # Repository homepage & curriculum documentation
└── SECURITY.md                           # Security guidelines & reporting policy
```

---

## 🔬 Laboratory Modules

### [LAB - 01: Elementary Continuous & Discrete Time Signal Generation](Labs/LAB%20-%2001/)
Explores mathematical formulation, parameterization, and graphical visualization of standard test signals in both continuous ($t$) and discrete ($n$) time domains.
* **Unit Impulse Signal ($\delta(t), \delta[n]$):** Synthesized in continuous and discrete domains [`LAB0101.m`](Labs/LAB%20-%2001/LAB0101.m).
* **Unit Step Signal ($u(t), u[n]$):** Generation and amplitude normalization [`LAB0102.m`](Labs/LAB%20-%2001/LAB0102.m).
* **Unit Ramp Signal ($r(t), r[n]$):** Generation and bounded interval verification [`LAB0103.m`](Labs/LAB%20-%2001/LAB0103.m).
* **Output Plots:** Documented in [`Labs/LAB - 01/figures/`](Labs/LAB%20-%2001/figures/). See full report in [LAB - 01 README](Labs/LAB%20-%2001/README.md).

---

### [LAB - 02: Operations on Signals, Linear Algebra & Statistical Analysis](Labs/LAB%20-%2002/)
Investigates fundamental signal operations, linear algebraic methods, and statistical descriptors.
* **Even & Odd Decomposition:** Splits arbitrary signals $x(t)$ into symmetric $x_e(t) = \frac{x(t)+x(-t)}{2}$ and anti-symmetric $x_o(t) = \frac{x(t)-x(-t)}{2}$ components via [`components.m`](Labs/LAB%20-%2002/components.m) and [`even_odd.m`](Labs/LAB%20-%2002/even_odd.m).
* **Time Shifting Operations:** Forward and backward translation of sequence indices with edge handling via [`shiftSignal.m`](Labs/LAB%20-%2002/shiftSignal.m) and [`SignalShifting.m`](Labs/LAB%20-%2002/SignalShifting.m).
* **Linear Equation Solvers:** Solves systems of linear algebraic equations $A \mathbf{x} = \mathbf{b}$ via matrix inversion in [`Solution_of_LE.m`](Labs/LAB%20-%2002/Solution_of_LE.m).
* **Statistical Signal Metrics:** Computes minimum, maximum, sample mean, variance ($\sigma^2$), standard deviation ($\sigma$), and Root Mean Square (RMS) in [`stat_functions.m`](Labs/LAB%20-%2002/stat_functions.m).
* **Output Plots:** Documented in [`Labs/LAB - 02/figures/`](Labs/LAB%20-%2002/figures/). See full report in [LAB - 02 README](Labs/LAB%20-%2002/README.md).

---

### [LAB - 03: Frequency Analysis of Signals](Labs/LAB%20-%2003/)
Focuses on harmonic expansion and spectral domain decomposition.
* **Fourier Series Approximation:** Synthesizes periodic waveforms from truncated Fourier series expansions for selectable harmonic counts ($M$) in [`Fourier_Representation.m`](Labs/LAB%20-%2003/Fourier_Representation.m).
* **Fourier Transform & FFT Spectrum:** Computes Fast Fourier Transform ($\text{FFT}$) of continuous/discrete exponentially decaying signals $x(t) = e^{-0.5|t|}$ and plots two-sided magnitude spectra via [`Fourier_Transform.m`](Labs/LAB%20-%2003/Fourier_Transform.m).
* **Output Plots:** Documented in [`Labs/LAB - 03/figures/`](Labs/LAB%20-%2003/figures/). See full report in [LAB - 03 README](Labs/LAB%20-%2003/README.md).

---

### [LAB - 04: System Properties, Transform Domain & Stability Analysis](Labs/LAB%20-%2004/)
Analyzes core system characterizations, symbolic transform techniques, and Z-plane stability.
* **Linearity & Time-Invariance (LTI) Verification:** Empirically tests systems against superposition ($H[a x_1 + b x_2] = a H[x_1] + b H[x_2]$) and time-shift equivalence in [`LAB0401.m`](Labs/LAB%20-%2004/LAB0401.m).
* **Symbolic Laplace & Z-Transforms:** Uses symbolic computation to find Laplace transforms ($\mathcal{L}\{f(t)\}$), inverse Laplace transforms ($\mathcal{L}^{-1}\{F(s)\}$), forward Z-transforms ($\mathcal{Z}\{x[n]\}$), and inverse Z-transforms ($\mathcal{Z}^{-1}\{X(z)\}$) in [`LAB0402.m`](Labs/LAB%20-%2004/LAB0402.m).
* **Pole-Zero Constellation & Stability:** Solves discrete transfer functions $F(z)$, calculates pole-zero coordinates via `tf2zpk`, plots constellations on the Z-plane (`zplane`), and validates BIBO stability condition ($|p_i| < 1$) in [`LAB0403.m`](Labs/LAB%20-%2004/LAB0403.m).
* **Output Plots:** Documented in [`Labs/LAB - 04/figures/`](Labs/LAB%20-%2004/figures/). See full report in [LAB - 04 README](Labs/LAB%20-%2004/README.md).

---

### [LAB - 05: State-Space Modeling, Controllability, Observability & Bode Analysis](Labs/LAB%20-%2005/)
Covers dynamic system representation in state-space form, control metrics, and frequency-domain stability analysis.
* **Continuous RLC State-Space Model:** Constructs $(A, B, C, D)$ matrices for an $RLC$ circuit, performs asymptotic stability testing, calculates controllability matrix rank (`ctrb`), observability matrix rank (`obsv`), step response, and Bode plots (magnitude & phase) in [`LAB0501.m`](Labs/LAB%20-%2005/LAB0501.m).
* **Discrete State-Space Model:** Discretizes the continuous system using zero-order hold sampling (`c2d`), tests discrete controllability, observability, and discrete step/frequency responses in [`LAB0502.m`](Labs/LAB%20-%2005/LAB0502.m).
* **Output Plots:** Documented in [`Labs/LAB - 05/figures/`](Labs/LAB%20-%2005/figures/). See full report in [LAB - 05 README](Labs/LAB%20-%2005/README.md).

---

## 💻 Class Work Modules

The [`Class_Work/`](Class_Work/) directory contains supplementary scripts and in-class problem implementations:
* **[`convint.m`](Class_Work/convint.m):** Numerical integration script for computing continuous-time convolution $y(t) = x(t) * h(t)$.
* **[`shift.m`](Class_Work/shift.m):** Signal index transformation and zero-padding helper utility.
* **[`kankon02.m`](Class_Work/kankon02.m) – [`kankon09.m`](Class_Work/kankon09.m):** Progressive implementations covering FFT spectral analysis, convolution verification, impulse response analysis, symbolic transforms, and state-space systems.
* **Documentation:** Detailed script index and explanations available in [`Class_Work/README.md`](Class_Work/README.md).

---

## ⚡ Featured Course Project

<div align="center">

### [Design & Simulation of a Passive Two-Port Filter Network](Project/)

[![Project Details](https://img.shields.io/badge/Project-Documentation%20%26%20Derivations-blue?style=for-the-badge)](Project/README.md)
[![Project Report](https://img.shields.io/badge/PDF%20Report-24%20Pages-red?style=for-the-badge&logo=adobeacrobatreader&logoColor=white)](Project/docs/ECE%202108%20Lab%20Project.pdf)
[![MATLAB Simulation](https://img.shields.io/badge/MATLAB-Simulation%20Script-brightgreen?style=for-the-badge&logo=mathworks&logoColor=white)](Project/matlab/ECE2108_Passive_Two_Port_Filter.m)
[![Multisim Schematic](https://img.shields.io/badge/Multisim-SPICE%20Design-orange?style=for-the-badge)](Project/multisim/ECE-2108-Project-01.ms14)

</div>

### Project Overview
The capstone project for ECE 2108 focuses on designing, mathematically deriving, and verifying a passive low-pass RC two-port filter network to isolate a **$1\ \text{kHz}$** transducer signal from **$10\ \text{kHz}$** electromagnetic interference (EMI) under realistic non-ideal source ($R_s = 100\ \Omega$) and load ($R_L = 10\ \text{k}\Omega$) constraints.

| Target Specification | Limit | Achieved (Design A) | Achieved (Design B) |
| :--- | :---: | :---: | :---: |
| **Passband Gain ($f_1 = 1\ \text{kHz}$)** | $\ge 0.80$ | **$0.893$** ($-0.98\ \text{dB}$) | **$0.865$** ($-1.26\ \text{dB}$) |
| **Stopband Gain ($f_2 = 10\ \text{kHz}$)** | $\le 0.25$ | **$0.207$** ($-13.68\ \text{dB}$) | **$0.076$** ($-22.39\ \text{dB}$) |
| **Component Budget** | $\le 4$ passive | 2 components ($1\ \text{k}\Omega, 68\ \text{nF}$) | 4 components ($2 \times 330\ \Omega, 2 \times 68\ \text{nF}$) |
| **Heavy Load Compliance ($R_L = 5\ \text{k}\Omega$)** | $\ge 0.80$ | ❌ $0.765$ (Fails) |  **$0.806$** (Passes) |

### Key Conclusions
1. **Design A (Single-Stage $RC$):** Optimal for low component count, board area, and cost; however, it fails passband compliance under heavy load ($R_L = 5\ \text{k}\Omega$).
2. **Design B (Dual-Stage Cascaded $RC$):** Demonstrates superior stopband rejection ($22.39\ \text{dB}$ attenuation) and maintains passband compliance under heavy loading, proving superior robustness.
3. **Cross-Platform Accuracy:** Exact analytical derivation, MATLAB numerical computation, and NI Multisim 14 SPICE simulations correlated within $<0.05\%$ discrepancy.

> 📖 **Full Project Documentation:** For detailed analytical derivations, ABCD & Z parameters, sensitivity graphs, and Multisim schematics, please visit the [**Project README**](Project/README.md).

---

## 🛠️ Software & Environment

| Environment / Tool | Version | Purpose |
| :--- | :--- | :--- |
| **MATLAB** | R2016b – R2024b+ | Computational algorithms, symbolic algebra, matrix calculations, and plotting |
| **NI Multisim** | 14.0+ | Schematic capture, AC sweep, and transient SPICE circuit simulation |
| **Operating System** | Windows / Linux / macOS | Platform independent execution |

---

## 🚀 Quickstart Guide

### 1. Clone the Repository
```bash
git clone https://github.com/KankonNil007/ECE-2108-KUET.git
cd ECE-2108-KUET
```

### 2. Running Lab Scripts in MATLAB
1. Open MATLAB.
2. Navigate to the desired laboratory folder:
   ```matlab
   cd('Labs/LAB - 04');
   ```
3. Execute any script directly:
   ```matlab
   LAB0403
   ```

### 3. Running the Project Simulation
* **MATLAB Simulation:**
  ```matlab
  cd('Project/matlab');
  ECE2108_Passive_Two_Port_Filter
  ```
  *Generates all 4 comparative plots (Bode response, load sensitivity, tolerance variation, and terminal parameters).*
* **NI Multisim Simulation:**
  1. Open NI Multisim 14.0+.
  2. Load [`Project/multisim/ECE-2108-Project-01.ms14`](Project/multisim/ECE-2108-Project-01.ms14).
  3. Run **AC Analysis** or **Interactive Simulation**.

---

## 🔒 License & Security

* **License:** This repository is open source under the terms of the [MIT License](LICENSE).
* **Security Policy:** All simulation files adhere to safe academic execution standards. For vulnerability reporting, see [SECURITY.md](SECURITY.md).

---

<div align="center">
  <sub>Department of Electronics and Communication Engineering · Khulna University of Engineering & Technology (KUET)</sub><br>
  <sub>Maintained by <b>Kankon Mondal</b></sub>
</div>
