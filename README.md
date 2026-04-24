# Placement Application Tracker (PAT)

A mobile application built to solve a problem most final-year students know well: placement season is chaotic. Opportunities come through WhatsApp, emails, and college portals simultaneously. Deadlines get missed. Students apply to roles they're not eligible for and only find out at the end. There's no single place to see where you actually stand.

PAT is a centralized placement tracking system built for students, with a companion view for placement coordinators.

> **Status:** Final prototype (Prototype 3) — actively being developed toward a production-ready release.

---

## The Problem (from user research)

A brief survey of final-year B.Tech students surfaced three consistent pain points:

- Most students track applications across WhatsApp, sticky notes, and email — none of which talk to each other
- Many have missed deadlines due to poor visibility, not lack of effort
- Students frequently start applying to a role and only discover mid-process that they don't meet the eligibility criteria

---

## What PAT does

### For Students
- **Centralized Opportunity Dashboard** — all job listings, deadlines, and application statuses in one screen
- **Intelligent Application Gateway** — the Apply button is only active if you meet the eligibility criteria; if you don't, the system tells you why before you waste time
- **Dynamic Application Tracking** — not just "Applied" or "Shortlisted", but the next scheduled event (e.g., "Interview on Oct 20") and a full status history
- **Color-coded status system** — at a glance: Green (applied), Red (eligible, not applied), Yellow (in progress), Grey (deadline passed), Light Grey (ineligible)
- **Proactive alerts** — deadline reminders and interview notifications via in-app badges and push notifications

### For Placement Coordinators
- Student database with verified profile data
- Per-opportunity view of all applications and their statuses
- Centralized communication board for announcements

---

## How it was built

This project was developed as part of a B.Tech Minor in Innovation & Entrepreneurship at SASTRA University (Nov 2025), applying a structured product development process:

**Discovery** — User interviews with final-year students and the SASTRA placement team to identify pain points. Brainstorming and Customer Journey Mapping (Before / During / After) to frame the solution.

**Design** — Morphological Matrix to evaluate feature options (11 features × up to 4 implementation options each). Architecture planning based on two user perspectives: students and the placement cell.

**Prototyping** — Three iterations, each tested with real users and refined based on structured feedback:

| Prototype | Key addition | Avg user rating |
|-----------|-------------|-----------------|
| Prototype 1 | Core dashboard, company listing, apply flow | 3.45 / 5 |
| Prototype 2 | Application overview metrics, recent activity feed, view details | Higher — users found it highly useful |
| Prototype 3 | Intelligent eligibility gateway, dynamic status tracking, settings, messaging | 5 / 5 |

**Iteration method** — SCAMPER framework (Substitute, Combine, Adapt, Modify, Put to another use, Eliminate, Rearrange) applied at each cycle to drive specific, reasoned changes rather than ad-hoc tweaks.

---

## Source code across iterations

| Version | Repo |
|---------|------|
| Prototype 1 | [career_app](https://github.com/SuhailaFathimaS/career_app) |
| Prototype 2 | [career_app2](https://github.com/SuhailaFathimaS/career_app2) |
| Prototype 3 (this repo) | [career_app3](https://github.com/SuhailaFathimaS/career_app3) |

---

## What's next

The product works. The remaining development work before a real release:

- **SIS integration** — connecting to university Student Information Systems via API so student profile data (CGPA, department, backlogs) auto-syncs and eligibility checks run automatically
- **Mobile notifications** — proper push notification pipeline for deadline reminders
- **Analytics dashboard** — success rate, offer rate, and application trend metrics integrated into the student profile
- **Showcase of Success** — a "Hall of Fame" section showing placed students, filterable by department, company, and year

---

## Built with

Android · SQLite · Java/Python

---

*B.Tech Minor in Innovation & Entrepreneurship — SASTRA Deemed University, November 2025*  
*Team: Anumola Shambhavi, M. Reshma, Subhashini K M, Suhaila Fathima S*
