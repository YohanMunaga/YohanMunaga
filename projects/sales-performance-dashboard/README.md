# Sales Performance Dashboard
**Portfolio project · Synthetic data · Power BI, DAX, Excel, data modeling**

## Goal
Give sales and finance stakeholders a consistent view of revenue, order volume, discounting, and product performance.

## Deliverables
- `data/sales.csv`: fabricated transaction-level data
- `powerbi/measures.dax`: reusable KPI measures
- `dashboard_spec.md`: report layout and stakeholder questions

## Analysis questions
1. How are revenue and order count trending by month?
2. Which regions and product categories contribute most to revenue?
3. How does discounting relate to net sales?
4. Which products are below target?

## Modeling and quality approach
Use a star schema with a sales fact table and date, product, and region dimensions. Check unique order-line keys, missing categories, negative quantities, and whether gross sales minus discounts reconciles to net sales. Keep currency and time period definitions visible.

## Status and scope
This is a reproducible portfolio example using synthetic data. No company or customer data is included. The dashboard specification and measures are provided; a Power BI Desktop file can be added after implementing the visuals.

## Interactive browser dashboard

[View the dashboard file](dashboard.html). On GitHub, open the file and click **Download raw file** (the down-arrow button), then double-click the downloaded HTML file to open it in Chrome, Safari, Edge, or Firefox. GitHub's file viewer displays source code; it does not run HTML dashboards.

The completed web dashboard includes KPI cards, monthly and group comparisons, two business filters plus a month filter, an underlying-records table, filtered CSV export, and print/save-to-PDF. It embeds the existing synthetic dataset and works offline without installation or dependencies. All views and exports follow the selected filters. This is an HTML/CSS/JavaScript dashboard, separate from the Power BI specification; no PBIX is included.

### Validation
Calculation checks, combined-filter checks, empty-state checks, and rendering logic checks pass using Node.js. A visual browser check has not been performed.

### Full-sample reconciliation
Gross sales: $5,505.00; discounts: $320.90; net revenue: $5,184.10; summed row targets: $5,515.00; target attainment: 94.0%; distinct orders: 10. USD is assumed for the demonstration. Targets are interpreted at the source row level.
