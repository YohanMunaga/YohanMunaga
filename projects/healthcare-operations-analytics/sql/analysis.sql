-- Healthcare Operations Analytics | synthetic demonstration data
-- Expected columns: appointment_id, appointment_date, specialty, clinic,
-- scheduled_slots, completed, canceled, no_show

-- 1) Validate counts and impossible values before reporting.
SELECT *
FROM appointments
WHERE scheduled_slots < 0 OR completed < 0 OR canceled < 0 OR no_show < 0
   OR completed + canceled + no_show > scheduled_slots;

-- 2) Monthly operating KPIs by specialty.
SELECT
    DATE_TRUNC('month', appointment_date) AS month_start,
    specialty,
    SUM(scheduled_slots) AS available_slots,
    SUM(completed) AS completed_appointments,
    SUM(canceled) AS canceled_appointments,
    SUM(no_show) AS no_show_appointments,
    ROUND(100.0 * SUM(canceled) / NULLIF(SUM(scheduled_slots), 0), 1) AS cancellation_pct,
    ROUND(100.0 * SUM(no_show) / NULLIF(SUM(scheduled_slots), 0), 1) AS no_show_pct,
    ROUND(100.0 * SUM(completed) / NULLIF(SUM(scheduled_slots), 0), 1) AS utilization_pct
FROM appointments
GROUP BY DATE_TRUNC('month', appointment_date), specialty
ORDER BY month_start, specialty;

-- 3) Compare clinic performance over the full sample.
SELECT
    clinic,
    SUM(scheduled_slots) AS available_slots,
    SUM(completed) AS completed,
    ROUND(100.0 * SUM(completed) / NULLIF(SUM(scheduled_slots), 0), 1) AS utilization_pct
FROM appointments
GROUP BY clinic
ORDER BY utilization_pct DESC;