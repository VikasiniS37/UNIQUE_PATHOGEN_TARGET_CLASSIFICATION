
# 🧬 Unique Pathogen Target Identification in SARS-CoV-2

This project aims to identify **unique and safe protein targets** in the SARS-CoV-2 virus by comparing viral proteins to human proteins. The ultimate goal is to discover antiviral ligands that **target virus-specific regions** without causing side effects due to similarity with human proteins.

---

## 🎯 Objective

To develop a **computational pipeline** for identifying virus-specific targets in the Spike protein of SARS-CoV-2 using:
- Sequence alignment (Smith-Waterman & Hirschberg)
- Structural modeling
- Ligand docking
- Optimization using Knapsack algorithm

---

## 📁 Project Structure

| Step | Description |
|------|-------------|
| STEP 1 | Dataset Collection & Preprocessing |
| STEP 2 | Sequence Alignment (Human vs Viral proteins) |
| STEP 3 | Unique Viral Sequence Filtering |
| STEP 4 | Protein Structure Modeling (Swiss-Model + GalaxyRefine) |
| STEP 5 | Virtual Screening with 100 ligands (AutoDock Vina + PyRx + PrankWeb) |
| STEP 6 | Ligand Optimization using Knapsack Algorithm |
| STEP 7 | Result Analysis & Ligand Selection |

---

## 🔧 Installation & Prerequisites

### 📦 Software Requirements
- Python 3.8+
- AutoDockTools + AutoDock4
- PyRx or Raccoon2 (for docking)
- Open Babel (for ligand conversion)
- Biopython, NumPy, Pandas, Matplotlib

### 🧪 Install Python Dependencies
```bash
pip install biopython numpy pandas matplotlib
```

> You can install Open Babel from: https://openbabel.org

---

## 🏗️ Setup Instructions

1. **Clone the repository**:
```bash
git clone https://github.com/yourusername/bio_daa_unique_pathogen_target.git
cd bio_daa_unique_pathogen_target
```

2. **Add your files**:
   - Place `.fasta` files into the `data/` directory.
   - Add all ligand `.pdbqt` files into `data/ligands/`.
   - Add `final_model.pdbqt` to `results/`.

3. **Run the notebook**:
   - Open `notebook/code3.ipynb` and follow each step to reproduce preprocessing, alignment, filtering, and structure selection.

4. **Docking Setup**:
   - Use `PyRx` or `Raccoon2` with:
     - Receptor: `final_model.pdbqt`
     - Ligands: in `data/ligands/`
     - Grid Box: centered at predicted site (from PrankWeb)
     - Run AutoDock Vina for batch virtual screening

---

## 🔁 Project Workflow

```mermaid
graph TD
A[Input: FASTA Sequences] --> B[Sequence Alignment (SW + Hirschberg)]
B --> C[Unique Region Extraction]
C --> D[SwissModel 3D Structure]
D --> E[Refinement with GalaxyRefine]
E --> F[Active Site Detection - PrankWeb]
F --> G[Docking 100 Ligands (AutoDock Vina)]
G --> H[Knapsack Optimization]
H --> I[Top Ligand Selected]
```

---

## 📊 How It Works

- Protein sequences of SARS-CoV-2 were aligned with human proteins using **Smith-Waterman** (local) and **Hirschberg** (global) alignment.
- Regions with **low similarity** were extracted as **unique viral targets**.
- Structural models of these targets were created using **Swiss-Model** and refined via **GalaxyRefine**.
- Active site coordinates were identified using **PrankWeb**.
- About **100 ligands** from **ZINC15** were docked using **AutoDock Vina**.
- Final ligand selection was optimized using a **Knapsack algorithm** considering binding affinity and RMSD.

---

## 🧪 Datasets

- **Human Protein**: [POTE ankyrin domain family B3](https://www.uniprot.org/uniprotkb/A0JP26/entry)
- **Virus Protein**: [SARS-CoV-2 Spike Glycoprotein](https://www.uniprot.org/uniprotkb/P0DTC2/entry)
- **Ligands**: ~100 antiviral compounds from [ZINC15](https://zinc15.docking.org)

---

## 🧩 Docking Results

- ✅ Best Ligand: `ZINC000151425092`
- ✅ Binding Affinity: `-7.5 kcal/mol`
- ✅ RMSD: `0.0 Å` (Perfect Pose)
- ✅ Final Protein Structure: `0% clash score` (Refined using GalaxyRefine)

---

## 📦 Outputs

- Refined 3D Structure (`final_model.pdbqt`)
- Docking results (`docking_output.csv`)
- Predicted binding pocket coordinates
- Knapsack-based ligand ranking

To upload results:
```bash
mkdir results
cp docking_output.csv results/
cp final_model.pdbqt results/
cp best_ligand_pose.pdbqt results/
```

---

## 🔮 Future Enhancements

- Scale the analysis to the **entire human proteome (~3 million sequences)** to ensure zero off-target overlap.
- Integrate **molecular wet-lab docking and testing** for in-vitro validation of top ligands.
- Automate the entire pipeline as a bioinformatics toolkit or web server.

---

## 👩‍💻 Contributors

- Vikasini S  
- Namithaa V  
- Jayavandhini K  
- Satwika K  

---

## 📄 Project Files

- `report/B17_bio_DAA_FINAL_REPORT.pdf` — full project report  
- `notebook/code3.ipynb` — all sequence alignment, modeling, and docking steps

---

## 📌 References

- [UniProt](https://www.uniprot.org)
- [ZINC15](https://zinc15.docking.org)
- [Swiss-Model](https://swissmodel.expasy.org)
- [I-TASSER](https://zhanggroup.org/I-TASSER/)
- [PrankWeb](https://prankweb.cz)
- [AutoDock Tools](https://autodock.scripps.edu)

---

## 📬 Contact

For queries, reach out via GitHub Issues or contact any of the contributors.
