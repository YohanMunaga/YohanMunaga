# Requirements and process notes

## In scope
Eligibility rules, reminder scheduling, preference/opt-out handling, delivery status, exception reporting, and audit trail.

## Out of scope
Clinical advice, changing appointments without patient confirmation, and storing payment or unnecessary sensitive details in reminder logs.

## Business rules to validate with stakeholders
- Which appointment statuses are eligible?
- How far in advance should reminders be sent?
- Which channels and languages are supported?
- What is the retry policy, and when does staff intervention begin?
- What consent, retention, and access policies apply?

## Risks and dependencies
- Incorrect contact data can cause failed delivery.
- Late appointment changes can create stale reminders.
- Vendor outages can delay delivery.
- Privacy, security, accessibility, and compliance review is required before launch.
- Baseline measurement and comparison design must be agreed before claiming impact.

## Process outline
Appointment confirmed → eligibility and preference check → reminder queued → delivery attempt → status recorded → exception routed to staff → outcomes summarized.
