# Healthcare Operations Analytics
**Portfolio project · Synthetic data · SQL, Excel, Power BI**

## Business question
How do appointment access, cancellations, and clinic utilization vary by specialty, and where should operations leaders focus improvement?

## What this project demonstrates
- Translate an operational question into measurable KPIs
- Define clean reporting rules and validate source data
- Analyze appointment volume, cancellation rate, no-show rate, and utilization by specialty and month
- Communicate findings and recommend practical next steps

## KPI definitions
- **Cancellation rate** = canceled appointments / scheduled appointments
- **No-show rate** = no-shows / scheduled appointments
- **Utilization** = completed appointments / available appointment slots

## Included
- `sql/analysis.sql`: KPI rollups, month-over-month comparison, and data quality checks
- `data/appointments.csv`: small synthetic sample; no patient information
- `dashboard_spec.md`: suggested Power BI pages, slicers, visuals, and narrative

## Key observation from the sample
The sample is intentionally small and illustrative. It is not evidence about a real health system. Re-run the queries on an appropriately approved dataset before making operational decisions.

## How to run
Import `data/appointments.csv` into a SQL database, then run `sql/analysis.sql`. Dates and counts are fabricated for demonstration.
