import pandas as pd

# ==========================================================
# Project 4 : Supply Chain Analytics
# Author : Pranshi Mishra
# ==========================================================

# Load Dataset
df = pd.read_csv(r"C:\Users\hcl\Downloads\DataCoSupplyChainDataset.csv", encoding="latin1")

# ==========================================================
# Dataset Overview
# ==========================================================

print("First 5 Rows:")
print(df.head())

print("==========================================================")

print("Dataset Shape:")
print(df.shape)

print("==========================================================")

print("Dataset Information:")
df.info()

print("==========================================================")

print("Statistical Summary:")
print(df.describe())

print("==========================================================")

print("Missing Values:")
print(df.isnull().sum())

print("==========================================================")

print("Duplicate Rows:")
print(df.duplicated().sum())

print("==========================================================")

print("Column Names:")
print(df.columns.tolist())

# ==========================================================
# Data Cleaning
# ==========================================================

print("Cleaning Dataset...")

# ----------------------------------------------------------
# 1. Drop Product Description
# ----------------------------------------------------------

if "Product Description" in df.columns:
    df.drop(columns=["Product Description"], inplace=True)

# ----------------------------------------------------------
# 2. Fill Customer Last Name
# ----------------------------------------------------------

if "Customer Lname" in df.columns:
    df["Customer Lname"] = df["Customer Lname"].fillna("Unknown")

# ----------------------------------------------------------
# 3. Fill Customer Zipcode
# ----------------------------------------------------------

if "Customer Zipcode" in df.columns:
    df["Customer Zipcode"] = df["Customer Zipcode"].fillna(df["Customer Zipcode"].median() )

# ----------------------------------------------------------
# 4. Drop Order Zipcode
if "Order Zipcode" in df.columns:
    df.drop(columns=["Order Zipcode"], inplace=True)
# ----------------------------------------------------------

print("Missing Values After Cleaning:")
print(df.isnull().sum())

print("==========================================================")

print("Cleaned Dataset Shape:")
print(df.shape)

# ==========================================================
# Save Clean Dataset
# ==========================================================

df.to_csv(
     r"C:\Users\hcl\Desktop\DataCoSupplyChainDataset_Cleaned.csv",index=False)

print("==========================================================")
print("Cleaned dataset saved successfully!")
print("File Name : DataCoSupplyChainDataset_Cleaned.csv")