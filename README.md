# Patient Data Analysis — Heart Disease Dataset

## Overview

This project is an exploratory data analysis of the Heart Disease UCI dataset,
a clinical dataset containing records from 1,025 patients who were assessed for
cardiovascular disease. The analysis was conducted using Python, SQL, and a
set of visualization libraries to identify patterns and risk factors associated
with heart disease presence.

The goal was not simply to plot data, but to ask meaningful questions and let
the data answer them honestly — including where the answers are surprising.

---

## Tools and Technologies

- Python — Pandas, NumPy, Matplotlib, Seaborn
- SQL — SQLite via Python's sqlite3 library
- Jupyter Notebook
- Git and GitHub for version control

---

## Project Structure

```
patient-data-analysis/
├── data/               Raw dataset (heart.csv) and SQLite database
├── notebooks/          Jupyter Notebook containing the full analysis
├── outputs/            All generated charts and the dashboard image
├── sql/                Standalone SQL queries used for data extraction
└── README.md           This file
```

---

## Dataset

Source: Heart Disease UCI Dataset via Kaggle
Records: 1,025 patients
Features: 14 variables including age, sex, cholesterol, resting blood pressure,
maximum heart rate, chest pain type, and a binary target variable indicating
whether heart disease was diagnosed.

The dataset originates from a clinical setting, meaning all patients in the
sample were already presenting with cardiovascular symptoms when assessed.
This context matters when interpreting certain findings.

---

## Questions: This Analysis Tries to Answer

1. What proportion of this patient population has heart disease?
2. Does age differ meaningfully between patients with and without disease?
3. Is there a visible gender pattern in disease prevalence?
4. How strongly does cholesterol level separate the two groups?
5. What does maximum heart rate reveal about heart health?
6. Which variables are most correlated with each other in this dataset?

---

## Key Findings

**Disease prevalence**
54.3 percent of patients in this dataset were diagnosed with heart disease,
and 45.7 percent were not. The near-even split makes this a reasonably
balanced dataset for analysis, reducing the risk of skewed conclusions.

**Age and disease**
Patients diagnosed with heart disease tend to be older on average, clustering
around the 55 to 60 age range. Patients without disease are more evenly
distributed across ages, with a peak around 50 to 55. This confirms age as a
genuine risk factor and aligns with established cardiovascular research.

**Gender pattern**
Male patients outnumber female patients in this sample significantly. Among
female patients, the proportion with heart disease is notably high. However,
this should not be interpreted as women being more susceptible in general.
Because this is a clinical dataset — collected from patients already showing
symptoms — the female group in this sample was already a high-risk population
by selection. This is a case where understanding the data collection context
prevents a misleading conclusion.

**Cholesterol**
One of the more counterintuitive findings is that cholesterol levels show
very weak separation between the disease and no-disease groups. The median
cholesterol values are nearly identical across both groups, and the
distributions overlap heavily. This suggests that cholesterol alone, without
other clinical context, is not a reliable standalone predictor of heart
disease in this dataset.

**Maximum heart rate**
This variable shows the clearest visual separation between the two groups.
Across all ages, patients with heart disease consistently achieve a lower
maximum heart rate during exercise compared to patients without disease.
A healthy heart responds to physical stress by pumping significantly faster.
When that capacity is reduced, it is often a sign of underlying cardiovascular
damage. This finding is medically well-supported and stands out as the
strongest signal in this dataset.

**Correlation structure**
The correlation heatmap reveals several meaningful relationships. Maximum
heart rate and ST depression (Oldpeak) are negatively correlated at -0.58,
confirming that patients with higher exercise heart rates tend to show less
cardiac stress. Age and the number of blocked major vessels carry a positive
correlation of 0.30, which is consistent with the medical understanding that
arterial blockage accumulates over time. Cholesterol shows near-zero
correlation with most other variables, which is consistent with its weak
predictive performance observed in the boxplot.

---

## Honest Limitations

This dataset is relatively small at 1,025 records and comes from a specific
clinical population. The findings describe patterns within this sample and
should not be generalized as universal medical conclusions. A proper clinical
study would require larger, more diverse, and carefully controlled data
collection. The purpose of this project is analytical and educational.

---

## How to Run

```bash
git clone https://github.com/mdabrarfaiyaj/patient-data-analysis
cd patient-data-analysis
pip install -r requirements.txt
jupyter notebook
```

Open the notebook inside the notebooks folder and run all cells from top
to bottom.

---

## Dataset Source

Heart Disease UCI Dataset
https://www.kaggle.com/datasets/johnsmith88/heart-disease-dataset

---

## Author

Md Abrar Faiyaj
Graduate Biotechnology Student | BRAC University,Dhaka,Bangladesh
Junior Research Collaborator   | ABCD Laboratory, Chittagong, Bangladesh
GitHub: https://github.com/mdabrarfaiyaj
LinkedIn: https://www.linkedin.com/in/md-abrar-faiyaj-559246381/
