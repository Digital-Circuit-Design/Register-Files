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

# INSTALL

## Register Files

This repository contains **VHDL implementations of fundamental digital logic circuits** along with **testbenches** for functional verification using **ModelSim Altera Starter Edition**.  
The project is intended for **digital circuit design education** and laboratory exercises.

---

## 1. Prerequisites

### 1.1 Operating System

Supported platforms:

- **Windows** (recommended – best ModelSim support)
- Linux
- macOS (may require legacy or alternative simulators)

---

## 2. VHDL Simulation Software

### 2.1 ModelSim Altera Starter Edition (Recommended)

This project was developed and verified using:

- **ModelSim Altera Starter Edition**
- Provided by **Intel FPGA (formerly Altera)**

Capabilities used:

- VHDL-2008 compatible simulation
- Waveform visualization
- Testbench execution

> Note: Newer systems may use **ModelSim Intel FPGA Edition** or **Questa Intel FPGA Starter** as replacements.

---

## 3. Text Editor / IDE (Optional but Recommended)

For editing and reviewing VHDL files:

- Visual Studio Code + VHDL extension
- Notepad++
- Vim / Emacs
- ModelSim built-in editor

---

## 4. Knowledge Prerequisites

To understand and modify the project, basic knowledge of:

- Digital logic design
- VHDL syntax and semantics
- Dataflow architecture
- Testbench-driven verification
- Combinational circuits (adders, multiplexers, decoders)

is recommended.

---

## 5. Installation / Setup

### 5.1 Clone the Repository

Using Git:

```bash
git clone https://github.com/Digital-Circuit-Design/Register-Files.git
```

### 5.2 Alternative (Without Git)

- Open the repository URL in your browser
- Click Code → Download ZIP
- Extract the ZIP file to a local directory

### 5.3 Install ModelSim

1. Download ModelSim Altera Starter Edition (or Intel FPGA equivalent)
2. Complete installation following vendor instructions
3. Verify installation by launching ModelSim successfully

---

## 6. Project Setup in ModelSim

### 6.1 Create a New Project

1. Open ModelSim
2. Select File → New → Project
3. Set:
   - Project Name (e.g. `VHDL_Lab`)
   - Project Location (your cloned repository path)
4. Choose Create Project

### 6.2 Add VHDL Source Files

1. In the Add Items to Project window:
   - Select Add Existing File
2. Navigate to the `src/` directory
3. Add:
   - All `*.vhd` files (designs and testbenches)
4. Finish project creation

### 6.3 Compile the Project

1. In the Project tab:
   - Select Compile → Compile All
2. Ensure:
   - No syntax errors
   - Successful compilation messages in the transcript

---

## 7. Simulation & Verification

### 7.1 View Waveforms

1. In the simulation window:
   - Add signals to the waveform
2. Run simulation:

```bash
run -all
```

3. Verify:
   - Correct logical behavior
   - Expected outputs for each test case

---

## 8. Open the Documentation

1. Navigate to the `docs/` directory
2. Open the report corresponding to your preferred language:
   - English: `Register-Files.pdf`
   - Greek: `Αρχεία-Καταχώρησης.pdf`
