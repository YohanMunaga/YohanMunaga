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
