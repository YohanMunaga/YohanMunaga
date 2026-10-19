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

## Interactive browser dashboard

[View the dashboard file](dashboard.html). On GitHub, open the file and click **Download raw file** (the down-arrow button), then double-click the downloaded HTML file to open it in Chrome, Safari, Edge, or Firefox. GitHub's file viewer displays source code; it does not run HTML dashboards.

The completed web dashboard includes KPI cards, monthly and group comparisons, two business filters plus a month filter, an underlying-records table, filtered CSV export, and print/save-to-PDF. It embeds the existing synthetic dataset and works offline without installation or dependencies. All views and exports follow the selected filters. This is an HTML/CSS/JavaScript dashboard, separate from the Power BI specification; no PBIX is included.

### Validation
Calculation checks, combined-filter checks, empty-state checks, and rendering logic checks pass using Node.js. A visual browser check has not been performed.

### Source-grain clarification
Each CSV row is a clinic/specialty/date aggregate. The web dashboard uses **slot completion rate = completed / scheduled_slots**. The source does not provide separate booked-appointment and available-capacity counts, so it cannot establish capacity utilization. Cancellation and no-show rates use scheduled_slots as the denominator. Full-sample check: 170 completed / 212 scheduled slots = 80.2%.
