# Customer Retention Analysis
**Portfolio project · Synthetic data · Python, pandas, SQL, visualization, business recommendations**

## Question
Which customer groups show elevated churn in the sample, and what follow-up analysis would help a business test retention interventions?

## Workflow
1. Load and validate fabricated customer records.
2. Calculate churn rate by contract type and tenure band.
3. Compare churned and retained groups on monthly charges.
4. Produce a concise summary while distinguishing association from causation.

## Files
- `data/customers.csv`: synthetic sample data
- `analysis.py`: reproducible calculations and a chart
- `findings.md`: interpretation, limitations, and recommended next steps

## Run
Install pandas and matplotlib, then run `python analysis.py` from this folder. Outputs are descriptive only; the small synthetic sample cannot support causal conclusions or generalization.
