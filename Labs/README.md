# 🔬 Laboratory Experiments: Signals and Systems Sessional

This directory contains the computational laboratory experiments developed for **ECE 2108: Continuous Signals and Linear Systems Sessional** at **Khulna University of Engineering & Technology (KUET)**.

Each lab folder is structured with its standalone MATLAB source files (`.m`), a dedicated [`figures/`](.) subfolder housing all generated waveform plots and analysis figures, and a detailed laboratory `README.md`.

---

## 📑 Laboratory Index

| Lab Module | Title & Core Focus | MATLAB Scripts | Key Topics & Techniques |
| :--- | :--- | :--- | :--- |
| [**LAB - 01**](LAB%20-%2001/) | **Elementary Signal Generation** | [`LAB0101.m`](LAB%20-%2001/LAB0101.m)<br>[`LAB0102.m`](LAB%20-%2001/LAB0102.m)<br>[`LAB0103.m`](LAB%20-%2001/LAB0103.m) | Continuous & discrete Unit Impulse $\delta$, Unit Step $u$, and Unit Ramp $r$ signals. |
| [**LAB - 02**](LAB%20-%2002/) | **Signal Operations & Linear Algebra** | [`components.m`](LAB%20-%2002/components.m)<br>[`even_odd.m`](LAB%20-%2002/even_odd.m)<br>[`shiftSignal.m`](LAB%20-%2002/shiftSignal.m)<br>[`SignalShifting.m`](LAB%20-%2002/SignalShifting.m)<br>[`Solution_of_LE.m`](LAB%20-%2002/Solution_of_LE.m)<br>[`stat_functions.m`](LAB%20-%2002/stat_functions.m) | Even/odd decomposition, discrete sequence shifting, matrix equation solving ($Ax = b$), statistical metrics (mean, variance, RMS). |
| [**LAB - 03**](LAB%20-%2003/) | **Fourier Representations & FFT** | [`Fourier_Representation.m`](LAB%20-%2003/Fourier_Representation.m)<br>[`Fourier_Transform.m`](LAB%20-%2003/Fourier_Transform.m) | Fourier series synthesis with variable harmonics, Fast Fourier Transform ($\text{FFT}$) of exponential waveforms. |
| [**LAB - 04**](LAB%20-%2004/) | **LTI Properties, Transforms & Stability** | [`LAB0401.m`](LAB%20-%2004/LAB0401.m)<br>[`LAB0402.m`](LAB%20-%2004/LAB0402.m)<br>[`LAB0403.m`](LAB%20-%2004/LAB0403.m) | Linearity and time-invariance testing, symbolic Laplace ($\mathcal{L}$) and Z-transforms ($\mathcal{Z}$), pole-zero stability in the Z-plane. |
| [**LAB - 05**](LAB%20-%2005/) | **State-Space Modeling & Control Analysis** | [`LAB0501.m`](LAB%20-%2005/LAB0501.m)<br>[`LAB0502.m`](LAB%20-%2005/LAB0502.m) | Continuous and discrete state-space RLC models, controllability (`ctrb`), observability (`obsv`), step response, and Bode plots. |

---

## 🚀 Execution Instructions

1. Launch MATLAB.
2. Navigate into the target lab experiment directory:
   ```matlab
   cd('Labs/LAB - 01');
   ```
3. Run any script directly:
   ```matlab
   LAB0101
   ```

