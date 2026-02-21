<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
</p>

<p align="center">
  <a href="https://www.uniwa.gr" target="_blank">University of West Attica</a> ·
  <a href="https://ice.uniwa.gr" target="_blank">Department of Computer Engineering and Informatics</a>
</p>

---

<p align="center">
  <strong>Digital Circuit Design</strong>
</p>

<h1 align="center">
  Register Files
</h1>

<p align="center">
  <strong>Vasileios Evangelos Athanasiou</strong><br>
  Student ID: 19390005
</p>

<p align="center">
  <a href="https://github.com/Ath21" target="_blank">GitHub</a> ·
  <a href="https://www.linkedin.com/in/vasilis-athanasiou-7036b53a4/" target="_blank">LinkedIn</a>
</p>

<hr>

<p align="center">
  <strong>Supervision</strong>
</p>

<p align="center">
  Supervisor: Ioannis Vogiatzis, Professor<br>
</p>

<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/ioannis-voyiatzis/" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/ioannis-voyiatzis-7b5a6b88/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Supervisor: Panagiotis Karkazis, Associate Professor<br>
</p>

<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/panagiotis-karkazis/" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/panos-karkazis-39ba1595/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Co-supervisor: Athanasios Milidonis, Postdoctoral Researcher<br>
</p>

<p align="center">
  <a href="https://scholar.google.com/citations?user=akjyDIYAAAAJ&hl=en" target="_blank">Scholar</a> ·
  <a href="https://gr.linkedin.com/in/athanasios-milidonis-a5a560167" target="_blank">LinkedIn</a>
</p>

</hr>

---

<p align="center">
  Athens, May 2023
</p>

---

<p align="center">
  <img src="https://jindongpu.wordpress.com/wp-content/uploads/2012/03/register_file.gif" width="250"/>
</p>

---

# README

## Register Files

The project focuses on modeling, simulating, and verifying **sequential logic circuits** using **VHDL**.  
Each circuit is implemented using a clear architectural style and is accompanied by a **testbench** to validate its behavior under different timing and control conditions.

---

## Table of Contents

| Section | Folder / File                              | Description                                      |
| ------: | ------------------------------------------ | ------------------------------------------------ |
|       1 | `assign/`                                  | Laboratory assignment material                   |
|     1.1 | `assign/Lab4b_UniWA-BSc-DSD_VHDL#2b.pdf`   | Laboratory exercise description (English)        |
|     1.2 | `assign/Εργαστήριο4β_ΠΑΔΑ-ΣΨΣ_VHDL#2β.pdf` | Laboratory exercise description (Greek)          |
|       2 | `docs/`                                    | Theoretical documentation on register files      |
|     2.1 | `docs/Register-Files.pdf`                  | Register files theory and architecture (English) |
|     2.2 | `docs/Αρχεία-Καταχώρησης.pdf`              | Register files theory and architecture (Greek)   |
|       3 | `src/`                                     | VHDL source code implementations                 |
|     3.1 | `src/reg8.vhd`                             | 8-bit register implementation                    |
|     3.2 | `src/regfile.vhd`                          | Register file implementation                     |
|     3.3 | `src/regfileUpd.vhd`                       | Updated register file implementation             |
|       4 | `waves/`                                   | Simulation waveform outputs                      |
|     4.1 | `waves/wave1.png`                          | Simulation waveform snapshot                     |
|     4.2 | `waves/wave2.png`                          | Simulation waveform snapshot                     |
|     4.3 | `waves/wave3.png`                          | Simulation waveform snapshot                     |
|     4.4 | `waves/wave4.png`                          | Simulation waveform snapshot                     |
|     4.5 | `waves/wave5.png`                          | Simulation waveform snapshot                     |
|     4.6 | `waves/wave6.png`                          | Simulation waveform snapshot                     |
|     4.7 | `waves/waveF*.bmp`                         | Register file simulation waveforms               |
|     4.8 | `waves/waveU*.bmp`                         | Updated register file simulation waveforms       |
|       5 | `README.md`                                | Project documentation                            |
|       6 | `INSTALL.md`                               | Usage instructions                               |

---

## 1. Technical Specifications

### 1.1 Simple 4-Bit Register

A **4-bit register** designed using **D-type flip-flops** with the following characteristics:

**Inputs**

- **D:** 4-bit data input
- **Resetn:** Asynchronous active-low reset
- **Clock:** System clock

**Outputs**

- **Q:** 4-bit data output

**Behavior**

- On the **rising edge of the clock**, the input **D** is transferred to the output **Q**, provided `Resetn = '1'`.
- If `Resetn = '0'`, the output is **immediately cleared** to `"0000"`.

---

## 2. Register File (4×4)

A more advanced **register file** consisting of **four 4-bit registers**.

**Generics**

- **dw:** Data width (4 bits)
- **size:** Number of registers (4)
- **addrw:** Address width (2 bits)

**Interface**

- **A:** Input data
- **Addr:** 2-bit address selecting the target register
- **we:** Write enable signal
- **clk:** System clock
- **C:** Output data from the selected register

---

## 3. Simulation Results

The project includes **timing diagrams** verifying correct functionality for the following operations:

| Operation      | Address | Data | Status   |
| -------------- | ------- | ---- | -------- |
| Write Register | 00      | 0101 | Verified |
| Write Register | 10      | 1101 | Verified |
| Write Register | 01      | 0010 | Verified |

---

## 4. Implementation Details

- **Language:** VHDL
- **Libraries Used:**
  - `ieee.std_logic_1164`
  - `ieee.numeric_std`
- The **register file** utilizes an **array type (`regArray`)** to model internal storage elements, enabling scalable and clean design.
