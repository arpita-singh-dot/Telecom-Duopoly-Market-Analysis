# Airtel vs Jio: Duopoly & Churn Analysis

---
## 📌 Table of Contents
- <a href="#overview">Overview</a>
- <a href="#business-problem">Business Problem</a>
- <a href="#objectives">Objectives</a>
- <a href="#dataset">Dataset</a>
- <a href="#project files">Project Files</a>
- <a href="#tools technologies">Tools & Technologies</a>
- <a href="#project-structure">Project Structure</a>
- <a href="#exploratory-data-analysis-eda">Exploratory Data Analysis (EDA)</a>
- <a href="#research-questions--key-findings">Research Questions & Key Findings</a>
- <a href="#final-recommendations">Final Recommendations</a>
- <a href="#author--contact">Author & Contact</a>

---
## 🔎 Overview
This project explores how **Reliance Jio** and **Bharti Airtel** dominate India’s telecom sector (80%+ market share), and links it to **customer churn analysis**.
It’s a mix of :
- 🎨 Fun storytelling with **cartoons & strategy metaphors**  

---
## Business Problem 
📌 Duopoly (Airtel vs Jio)
- How can the companies optimize pricing to attract customers without hurting profitability?
- What factors are driving changes in market share between the two competitors?
- Which customer segments are more profitable, and how can companies retain them?
- How to identify revenue growth opportunities in a highly competitive duopoly market?

📌 Churn (Telecom Churn Analysis)
- Which customer characteristics most influence churn behavior?
- How can we predict churn early to take preventive action?
- What retention strategies can reduce churn while keeping acquisition costs low?
- How do contract type, monthly charges, and tenure affect churn probability?
---
## 🎯 Objectives
1. Compare **Jio vs Airtel** in terms of:
   - Market share  
   - Stock price trends  
   - ARPU & data usage patterns  
2. Analyze **customer churn drivers** (contract type, tenure, charges).  
3. Build a churn prediction model.  
4. Make insights engaging using **visuals & humor**.  

---
## Dataset 
- 📈 Market share & stock analysis  
- 📉 Customer churn modeling (IBM dataset) 
---

## 📂 Project Files
- `Presentation_ppt/StoryTelling.pptx` → Charts & cartoons (duopoly pie, churn plots, funny illustrations)  
- `notebooks/Telecom_churn_visualization.ipynb` → Jupyter notebooks for cleaning, EDA, churn model  
- `Presentation_ppt/Decoding the Duopoly.pptx` → Final presentation 
- `sql/sql_que_solve.sql` → Business problem solving

--- 

## Project Structure
```
duopoly_project/
│
├── notebooks/
│   └── Telecom_churn_visualization.ipynb        # Jupyter Notebook with data cleaning, EDA, and analysis
│
├── sql/
│   └── sql_que_solve.sql           # SQL queries for data extraction & analysis
│
├── presentations/
│   ├── Decoding the Duopoly.pptx            # PPT 1: Project overview, problem statement, objectives
│   └── StoryTelling.pptx               # PPT 2: EDA findings, visuals, recommendations
│           
│
└── README.md                         # Project description, steps to run, insights

```

## Tools & Technologies 
- Python (Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn)  
- Jupyter Notebook  
- Data: TRAI, Yahoo Finance, IBM Telecom Churn dataset 



---
## Exploratory Data Analysis (EDA)
Performed data quality checks, handled missing values, and treated outliers for reliable insights.
Conducted exploratory analysis to compare revenue, customer base, and ARPU across competitors.
Identified key correlations and patterns influencing market share and growth trends.

---
## 📊 Research Questions & Key Findings
Research Questions:
- How do revenue and customer growth trends differ between the two telecom companies over time?
- Which factors (e.g., ARPU, churn rate, pricing) have the strongest impact on market share?
- What strategies can each company adopt to gain a competitive edge in the duopoly market?

Key Finding:
- Jio disrupted with **free data (buffet style)**, Airtel stayed **premium (fine dining)**.  
- Together they control **80%+ of the market** (true duopoly).  
- **Churn is highest** among short-tenure & month-to-month contracts.  
- Investors love the rivalry — both stocks trend upward.
---
## 📜 License
MIT License – Free to use and adapt.  

---
## Final Recommendation 
- Both companies should focus on reducing churn by improving customer service and loyalty programs.
- Invest in data-driven pricing strategies to stay competitive without losing profitability.
- Expand digital and value-added services (like OTT bundles, mobile payments) to increase ARPU and long-term retention.

##  Author
Created by **[Arpita Singh]**
📧 Email:arpitasingh15152115@gmail.com   
*Decoding the duopoly with data & humor.*
