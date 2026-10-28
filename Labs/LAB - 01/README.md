# 📊 LAB - 01: Elementary Continuous & Discrete Time Signal Generation

## 🎯 Objectives
* Implement and visualize fundamental continuous-time and discrete-time signals in MATLAB.
* Compare continuous plots (`plot`) with discrete stem sequences (`stem`).
* Generate Unit Impulse ($\delta$), Unit Step ($u$), and Unit Ramp ($r$) functions across standardized time intervals.

---

## 📂 Source Code & Description

| Script | Signal Type | Mathematical Definition | Interval | Plot Type |
| :--- | :--- | :--- | :---: | :--- |
| [`LAB0101.m`](LAB0101.m) | **Unit Impulse Signal** | $\delta(t) = \begin{cases} 1, & t = 0 \\ 0, & t \ne 0 \end{cases}$ | $t \in [-3, 3]$ | Continuous (`plot`) & Discrete (`stem`) |
| [`LAB0102.m`](LAB0102.m) | **Unit Step Signal** | $u(t) = \begin{cases} 1, & t \ge 0 \\ 0, & t < 0 \end{cases}$ | $t \in [-5, 25]$ | Continuous (`plot`) & Discrete (`stem`) |
| [`LAB0103.m`](LAB0103.m) | **Unit Ramp Signal** | $r(t) = \begin{cases} t, & t \ge 0 \\ 0, & t < 0 \end{cases}$ | $t \in [-10, 10]$ | Continuous (`plot`) & Discrete (`stem`) |

---

## 📈 Waveform Outputs

### 1. Unit Impulse Signal ($\delta(t)$ & $\delta[n]$)
![Unit Impulse Signal](figures/LAB%20-%2001%2001%20IO.png)

### 2. Unit Step Signal ($u(t)$ & $u[n]$)
![Unit Step Signal](figures/LAB%20-%2001%2002%20IO.png)

### 3. Unit Ramp Signal ($r(t)$ & $r[n]$)
![Unit Ramp Signal](figures/LAB%20-%2001%2003%20IO.png)

