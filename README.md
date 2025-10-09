<a id="top"></a>

# ICU Liberation Bundle Cards — Quick Links

[Bundle Card A — Assess, Prevent, and Manage Pain](#bundle-card-a)  
[Bundle Card B — Part I: Spontaneous Awakening Trials (SAT)](#bundle-card-b-part-i)  
[Bundle Card B — Part II: Spontaneous Breathing Trials (SBT)](#bundle-card-b-part-ii)  
[Bundle Card C — Choice of Analgesia and Sedation (RASS)](#bundle-card-c)  
[Bundle Card D — Delirium: Assess, Prevent, and Manage (CAM-ICU)](#bundle-card-d)  
[Bundle Card E — Early Mobility and Exercise](#bundle-card-e)  
[Bundle Card F — Family Engagement and Empowerment](#bundle-card-f)

---

<a id="bundle-card-a"></a>
<details>
<summary><strong>Bundle Card A — Assess, Prevent, and Manage Pain</strong> <sub><a href="#top">↑ Back to Top</a></sub></summary>

## Card Overview

- **Card Definition:** A - Assessment, Prevention, and Management of Pain.
- **Purpose:** To observe the pain level, assign the pain score, and document significant pain assessment.

## Assessment Instruments

- **Critical Care Pain Observation Tool (CPOT)** is four-item scale - vocalization, body movements, facial expression, and muscle tension - each scored from 0 to 2.
- **Alternative pain assessment tools:** Numeric Pain Rating Scale (NRS), and Behavioral Pain Scale (BPS)

## Compliance Checks

- Significant pain level is defined as CPOT > 2, or BPS > 5, or NRS > 3
- Conduct pain assessments at least 6 times within 24 hours to monitor compliance.

## Mapping to Standard Vocabularies: CPOT

| Clinical Concept | Concept Values | Standardized Vocabulary: Code, Concept ID | CDM Table |
|------------------|----------------|-------------------------------------------|-----------|
| CPOT: Muscle Tension Score | 0: Relaxed<br>1: Tense, Rigid<br>2: Very tense or rigid | OMOP Extension:<br>OMOP5214828,<br>ID: 722052 | Measurement |
| CPOT: Vocalization Score | 0: No sound<br>1: Sighing, moaning<br>2: Crying out, groaning | OMOP Extension:<br>OMOP5214835,<br>ID: 722060 | Measurement |
| CPOT: Body Movements Score | 0: No movement<br>1: Protection<br>2: Restlessness | OMOP Extension:<br>OMOP5214824,<br>ID: 722048 | Measurement |
| CPOT: Facial Expression Score | 0: Relaxed, neutral<br>1: Tense<br>2: Grimacing | OMOP Extension:<br>OMOP5214820,<br>ID: 722044 | Measurement |
| CPOT: Total Score | Sum of scores from each of the four indicators | OMOP Extension:<br>OMOP5214819,<br>ID: 722043 | Measurement |

## Alternative Pain Assessment Tools

| Clinical Concept | Concept Values | Standardized Vocabulary: Code, Concept ID | CDM Table |
|------------------|----------------|-------------------------------------------|-----------|
| Numeric Pain Rating Scale (NRS) | Rate pain on a scale of 0 to 10 | SNOMED:<br>225398001,<br>ID: 3715127 | Measurement |
| Behavioral Pain Scale (BPS) | Facial expression, Upper limb movements, and compliance with mechanical ventilation | SNOMED:<br>273313008,<br>ID: 3399022 | Measurement |

</details>

---

<a id="bundle-card-b-part-i"></a>
<details>
<summary><strong>Bundle Card B — Part I: Spontaneous Awakening Trials (SAT)</strong> <sub><a href="#top">↑ Back to Top</a></sub></summary>

### Card Overview

Part I focuses on daily interruption of continuous sedatives to reassess neurological status and readiness for extubation. The intent is to reduce unnecessary sedation exposure, shorten ventilation duration, and identify the lowest effective sedative dose.

### Assessment Instruments

Clinicians pause continuous sedatives while ensuring safety screens are met, then observe arousal, command following, and tolerance. Sedation may be resumed at a reduced dose if the patient fails the trial or if predefined safety criteria are violated.

### Compliance Checks

Document the SAT start and stop times, tolerance, adverse events, and the resumed dose if applicable. Link SAT documentation to paired SBT workflow whenever feasible to maintain bundle integrity.

### Suggested Vocabulary Mapping (fill site-specific IDs as needed)

| Clinical Concept | Concept Values | Standardized Vocabulary: Code / Concept ID | CDM Table |
|---|---|---|---|
| SAT Performed | Yes / No with reason | SNOMED CT (procedure concept; site-specific Concept ID) | Procedure |
| Sedation Dose After SAT | New maintenance dose or discontinued | RxNorm (agent-specific), OMOP | Drug Exposure |
| SAT Safety Screen | Met / Not met with reason | LOINC / OMOP | Observation |

</details>

---

<a id="bundle-card-b-part-ii"></a>
<details>
<summary><strong>Bundle Card B — Part II: Spontaneous Breathing Trials (SBT)</strong> <sub><a href="#top">↑ Back to Top</a></sub></summary>

### Card Overview

Part II evaluates the patient’s ability to breathe without assistance by temporarily reducing or removing ventilatory support. This reassessment guides liberation from the ventilator when readiness criteria are satisfied.

### Assessment Instruments

Readiness is confirmed using local criteria (e.g., oxygen saturation ≥ 88%, FiO₂ ≤ 0.50, and PEEP < 7.5 cmH₂O). The trial proceeds with minimal support while clinicians adjust ventilator settings such as PEEP and FiO₂ to maintain safety. The ventilatory mode in use—PSV, SPONT, CPAP, SIMV, or APRV—should be captured for analysis and quality reporting.

### Compliance Checks

The SBT start, stop, and outcome are recorded, including reasons for failure or deferral. When the trial is not initiated, the rationale (such as RSBI > 105 or procedure pending) must be documented.

### Mapping to Standard Vocabularies

| Clinical Concept | Concept Values | Standardized Vocabulary: Code / Concept ID | CDM Table |
|---|---|---|---
