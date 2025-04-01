# 📦 Ecommerce Behaviour Analysis

This project explores visitor behavior on an e-commerce platform using an R-based exploratory data analysis. It investigates visitor origins, user profiles, purchase intent, and browsing frequency to identify key insights that could guide UX or marketing strategies.

---

## 📂 Dataset Overview

**File:** `ecommerce-data-2.csv`

Each row captures a single user session and includes:
- `profile`: Visitor category (e.g., Parent, Teacher, etc.)
- `intentWasPlanningToBuy`: User's intent to purchase
- `country` and `region`: Geographical info
- `behavNumVisits`: Number of page views per session

---

## 🔍 Questions Explored

### Q1. 📏 Dataset Dimensions
- Used `dim()` to check total rows (observations) and columns (variables).

### Q2. 🌍 User Distribution by Country
- Used `table()` to compute a frequency count of countries.

### Q3. 🧑‍🏫 Profile vs Purchase Intent
- Two-way cross-tabulation of user `profile` and `intentWasPlanningToBuy`.

### Q4. 🎯 Intent to Purchase: Parents vs Teachers
- Proportional breakdown for both profiles, excluding blanks and NAs.

### Q5–6. 🗺️ Top Traffic Region
- Identified the U.S. state with the most visitors using `which.max()` on the `region` table.

### Q7. 📊 Histogram + Density Line: Site Visits
- Histogram of `behavNumVisits` with overlaid density to assess distribution shape.

### Q8–9. 📦 Boxplots: Visits Overall & by Profile
- Compared site visit distributions both overall and segmented by `profile` using horizontal boxplots.

---

## 📈 Key Observations

| Metric                        | Insight                                  |
|------------------------------|------------------------------------------|
| Most active state            | Texas (TX)                               |
| Profile with highest intent  | Teachers (based on relative proportions) |
| Visit count distribution     | Right-skewed with a few heavy visitors   |

---

## 🛠️ Tools Used

- Language: **R**
- Base functions: `dim()`, `table()`, `hist()`, `boxplot()`, `which.max()`
- Visualization: `hist()`, `lines()`, `par(mar = ...)`



