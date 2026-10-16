# Business Analysis: Appointment Reminder Workflow
**Portfolio project · Fictional case study · Requirements, process analysis, UAT**

## Scenario
A fictional outpatient clinic wants to reduce missed appointments. The current process relies on inconsistent manual reminders. The goal is to define a measurable, privacy-conscious reminder workflow.

## Business objective and measures
Improve kept appointment rate while making opt-outs, delivery failures, and staff workload visible. Baseline and target values must be established with stakeholders before implementation; this case study does not invent measured outcomes.

## Stakeholders
Clinic operations, scheduling staff, patients, compliance/privacy, IT integration, and analytics.

## Sample user stories
1. As a scheduling coordinator, I want reminders queued from the confirmed appointment record so that patients receive consistent notices.
2. As a patient, I want to choose an available reminder channel and opt out so that communications respect my preferences.
3. As an operations manager, I want delivery failures and opt-outs reported so that teams can investigate without exposing unnecessary personal information.

## Acceptance criteria
- Only appointments in an eligible status are selected.
- Reminder timing and approved message templates are configurable.
- Patient communication preference and opt-out status are honored.
- Failed delivery is recorded with a reason code and retry policy.
- Reports use minimum necessary data and role-based access.
- A change to an appointment updates or cancels its pending reminder.

## Included
- `requirements.md`: scope, assumptions, rules, and open questions
- `uat.md`: scenario-based test plan

## BA methods shown
Requirements elicitation, scope boundaries, process rules, user stories, acceptance criteria, risk analysis, stakeholder alignment, and UAT planning. This fictional portfolio case is not represented as a work engagement.
