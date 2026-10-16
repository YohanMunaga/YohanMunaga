"""Descriptive analysis of fictional customer data (portfolio demonstration)."""
from pathlib import Path
import pandas as pd
import matplotlib.pyplot as plt

DATA = Path(__file__).parent / "data" / "customers.csv"
df = pd.read_csv(DATA)

required = {"customer_id", "tenure_months", "contract_type", "monthly_charges", "churned"}
missing = required - set(df.columns)
if missing:
    raise ValueError(f"Missing columns: {sorted(missing)}")
if df["customer_id"].duplicated().any():
    raise ValueError("customer_id must be unique")
if not df["churned"].isin([0, 1]).all():
    raise ValueError("churned must be 0 or 1")

print("Overall churn rate:", round(df["churned"].mean() * 100, 1), "%")
print("\nChurn by contract type:")
print((df.groupby("contract_type")["churned"].mean() * 100).round(1).rename("churn_pct"))
df["tenure_band"] = pd.cut(df["tenure_months"], [0, 6, 12, 24, float("inf")],
                           labels=["0-6", "7-12", "13-24", "25+"])
print("\nChurn by tenure band:")
print((df.groupby("tenure_band", observed=False)["churned"].mean() * 100).round(1).rename("churn_pct"))

ax = (df.groupby("contract_type")["churned"].mean() * 100).plot(
    kind="bar", color="#2563eb", title="Churn rate by contract type (synthetic sample)")
ax.set_ylabel("Churn rate (%)")
ax.set_xlabel("")
plt.tight_layout()
plt.savefig(Path(__file__).parent / "churn_by_contract.png", dpi=160)
print("\nSaved churn_by_contract.png")
