# 📝 Class Work: Signals and Systems Practice Modules

This directory contains MATLAB practice scripts, algorithmic demonstrations, and numerical utilities developed during in-class lectures and practical sessions for **ECE 2108: Continuous Signals and Linear Systems Sessional** at Khulna University of Engineering & Technology (KUET).

---

## 📂 File Index & Technical Description

| File | Type | Description | Key MATLAB Concepts / Functions |
| :--- | :---: | :--- | :--- |
| [`convint.m`](convint.m) | Helper Function | Numerical continuous-time convolution integral solver ($y(t) = \int x(\tau)h(t-\tau)d\tau$) | `conv`, time index scaling |
| [`shift.m`](shift.m) | Helper Function | Discrete-time sequence time-shifting and zero-padding utility | Array slicing, zero-padding |
| [`kankon02.m`](kankon02.m) | Script | FFT amplitude spectrum of an exponential decay waveform $y(t) = e^{-t}$ | `fft`, `fftshift`, `nextpow2` |
| [`kankon03.m`](kankon03.m) | Script | Linearity (superposition) & time-invariance testing of a convolution-based LTI system | `convint`, `shift`, stem plotting |
| [`kankon04.m`](kankon04.m) | Script | Linearity & time-invariance verification for a non-linear system ($y[n] = x^2[n]$) | Array power, `isequal`, subplot |
| [`kankon05.m`](kankon05.m) | Script | Symbolic Laplace Transform computation of $f(t) = \frac{1 - e^t}{t}$ | `syms`, `laplace`, `simplify`, `pretty` |
| [`kankon06.m`](kankon06.m) | Script | Symbolic Inverse Z-Transform of rational polynomial $X(z) = \frac{z^2}{(z-1)(z-0.2)}$ | `syms`, `iztrans` |
| [`kankon07.m`](kankon07.m) | Script | Comparative DFT verification: MATLAB built-in `fft()` vs. manual loop summation formula; IDFT real/imag decomposition | Loop summation, complex exponential, `real`, `imag` |
| [`kankon08.m`](kankon08.m) | Script | Continuous state-space modeling of an RLC circuit: step response, Bode plots, stability, controllability, and observability | `ss`, `step`, `bode`, `isstable`, `ctrb`, `obsv` |
| [`kankon09.m`](kankon09.m) | Script | Discrete 4th-order dynamic state-space model: step response, Bode plots, stability, controllability, and observability | `ss(A,B,C,D,-1)`, `ctrb`, `obsv` |

---

## 🚀 Execution Instructions

1. Open MATLAB (R2016b or newer).
2. Set the current directory to `Class_Work`:
   ```matlab
   cd('Class_Work');
   ```
3. Run any script directly from the Command Window (e.g., `kankon08`):
   ```matlab
   kankon08
   ```

