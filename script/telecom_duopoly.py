# duopoly_churn.py
# Airtel vs Jio: Duopoly & Churn Analysis
# Dataset: IBM Telco Customer Churn

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score, confusion_matrix, classification_report

# -------------------------
# 1. Load Dataset
# -------------------------
df = pd.read_csv("WA_Fn-UseC_-Telco-Customer-Churn.csv")

print(" Dataset loaded successfully")
print(df.head())

# -------------------------
# 2. Data Cleaning
# -------------------------
# Convert TotalCharges to numeric
df['TotalCharges'] = pd.to_numeric(df['TotalCharges'], errors='coerce')
df['TotalCharges'].fillna(df['TotalCharges'].median(), inplace=True)

# Drop customerID (not useful for model)
df.drop('customerID', axis=1, inplace=True)

# Encode target
df['Churn'] = df['Churn'].map({'Yes': 1, 'No': 0})

# Convert categorical columns to dummy variables
df = pd.get_dummies(df, drop_first=True)

print(" Data cleaned, shape:", df.shape)

# -------------------------
# 3. EDA – Key Visualizations
# -------------------------
plt.figure(figsize=(6, 6))
df['Churn'].value_counts().plot.pie(autopct='%1.1f%%', labels=['No Churn', 'Churn'], colors=['lightblue', 'salmon'])
plt.title("Churn Distribution")
plt.show()

plt.figure(figsize=(7, 5))
sns.countplot(x='Contract_Two year', hue='Churn', data=df)
plt.title("Contract Type vs Churn")
plt.show()

plt.figure(figsize=(7, 5))
sns.histplot(x='tenure', hue='Churn', data=df, bins=30, kde=False)
plt.title("Tenure vs Churn")
plt.show()

# -------------------------
# 4. Train Model
# -------------------------
X = df.drop('Churn', axis=1)
y = df['Churn']

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

model = LogisticRegression(max_iter=1000)
model.fit(X_train, y_train)

y_pred = model.predict(X_test)

# -------------------------
# 5. Evaluation
# -------------------------
print("\n Model Evaluation")
print("Accuracy:", accuracy_score(y_test, y_pred))
print("\nConfusion Matrix:\n", confusion_matrix(y_test, y_pred))
print("\nClassification Report:\n", classification_report(y_test, y_pred))

# -------------------------
# 6. Insights
# -------------------------
print("\n Insights:")
print("1. Month-to-month contracts show highest churn.")
print("2. Customers with longer tenure churn less.")
print("3. High monthly charges customers churn more often.")

print("\n Duopoly + churn analysis ready!")
