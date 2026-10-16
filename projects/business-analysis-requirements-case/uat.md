# User acceptance test plan

| ID | Scenario | Expected result |
|---|---|---|
| UAT-01 | Eligible appointment with valid preference | Reminder is queued at approved time |
| UAT-02 | Patient opted out | No reminder is sent; opt-out is auditable |
| UAT-03 | Appointment canceled before send | Pending reminder is canceled |
| UAT-04 | Delivery provider returns failure | Failure code is logged and retry policy applied |
| UAT-05 | Contact data is missing | No send; record enters the defined exception path |
| UAT-06 | User without reporting role opens report | Access is denied |
| UAT-07 | Appointment rescheduled | Old reminder is replaced with one for the current appointment |

Record tester, date, build, evidence, actual result, and defect ID for each run. Obtain business owner sign-off before release.
