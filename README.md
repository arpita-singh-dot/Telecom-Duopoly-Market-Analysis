# Airtel vs Jio: Duopoly & Churn Analysis
---
## 📌 Table of Contents
- <a href="#overview">Overview</a>
- <a href="#business-problem">Business Problems</a>
- <a href="#objectives">Objectives</a>
- <a href="#dataset">Dataset</a>
- <a href="#project-files">Project Files</a>
- <a href="#tools-technologies">Tools & Technologies</a>
- <a href="#project-structure">Project Structure</a>
- <a href="#exploratory-data-analysis-eda">Exploratory Data Analysis (EDA)</a>
- <a href="#research-questions-key-findings">Research Questions & Key Findings</a>
- <a href="#final-recommendations">Final Recommendations</a>
- <a href="#author-contact">Author & Contact</a>

---
<h2><a class="anchor" id="overview"></a>Overview</h2>

This project explores how **Reliance Jio** and **Bharti Airtel** dominate India’s telecom sector (80%+ market share), and links it to **customer churn analysis**.
It’s a mix of :
- 🎨 Fun storytelling with **cartoons & strategy metaphors**  

---
<h2><a class="anchor" id="business-problem"></a>Business Problems</h2>

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
<h2><a class="anchor" id="objectives"></a>🎯 Objectives</h2>

1. Compare **Jio vs Airtel** in terms of:
   - Market share  
   - Stock price trends  
   - ARPU & data usage patterns  
2. Analyze **customer churn drivers** (contract type, tenure, charges).  
3. Build a churn prediction model.  
4. Make insights engaging using **visuals & humor**.  

---
<h2><a class="anchor" id="dataset"></a>Dataset</h2>
 
- 📈 Market share & stock analysis  
- 📉 Customer churn modeling (IBM dataset) 

---
<h2><a class="anchor" id="project-files"></a>📂 Project Files</h2>

- `Presentation_ppt/StoryTelling.pptx` → Charts & cartoons (duopoly pie, churn plots, funny illustrations)  
- `notebooks/Telecom_churn_visualization.ipynb` → Jupyter notebooks for cleaning, EDA, churn model  
- `Presentation_ppt/Decoding the Duopoly.pptx` → Final presentation 
- `sql/sql_que_solve.sql` → Business problem solving

--- 
<h2><a class="anchor" id="project-structure"></a>Project Structure</h2>
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
----
<h2><a class="anchor" id="tools-technologies"></a>Tools & Technologies</h2>
## Tools & Technologies 
- Python (Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn)  
- Jupyter Notebook  
- Data: TRAI, Yahoo Finance, IBM Telecom Churn dataset 



---
<h2><a class="anchor" id="exploratory-data-analysis></a>Exploratory Data Analysis</h2>

Performed data quality checks, handled missing values, and treated outliers for reliable insights.
Conducted exploratory analysis to compare revenue, customer base, and ARPU across competitors.
Identified key correlations and patterns influencing market share and growth trends.

---
<h2><a class="anchor" id="research-questions-key-findings"></a>📊 Research Questions & Key Findings</h2>

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
<h2><a class="anchor" id="license"></a>License</h2>

MIT License – Free to use and adapt.  

---
<h2><a class="anchor" id="filnal-recommendation"></a>Final Recommendation</h2>

## Final Recommendation 
- Both companies should focus on reducing churn by improving customer service and loyalty programs.
- Invest in data-driven pricing strategies to stay competitive without losing profitability.
- Expand digital and value-added services (like OTT bundles, mobile payments) to increase ARPU and long-term retention.
---
<h2><a class="anchor" id="author-contact"></a>Author & Contact h2>
Created by **[Arpita Singh]**
📧 Email:arpitasingh15152115@gmail.com   
*Decoding the duopoly with data & humor.*
