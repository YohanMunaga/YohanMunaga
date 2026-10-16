# Power BI dashboard specification

## Page 1 — Operations overview
Cards: Scheduled slots, completed visits, cancellation %, no-show %, utilization %.
Trend: Monthly utilization and cancellation rate.
Slicers: Date, specialty, clinic.

## Page 2 — Access and variation
Bar chart: cancellation and no-show rates by specialty.
Matrix: clinic × specialty with slots, completed visits, and utilization.
Tooltip: numerator, denominator, and KPI definition.

## Page 3 — Data quality
Show records failing count rules; display refresh date and source notes.
Clearly label the dataset as synthetic.

## Measures (DAX; table name: appointments)
```DAX
Cancellation % = DIVIDE(SUM(appointments[canceled]), SUM(appointments[scheduled_slots]))
No-show % = DIVIDE(SUM(appointments[no_show]), SUM(appointments[scheduled_slots]))
Utilization % = DIVIDE(SUM(appointments[completed]), SUM(appointments[scheduled_slots]))
```
