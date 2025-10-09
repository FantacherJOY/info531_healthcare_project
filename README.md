<a id="top"></a>

# ICU Liberation Bundle Cards — Quick Links

[Bundle Card A - Assess, Prevent, and Manage Pain](#bundle-card-a)  
[Bundle Card B - Part I: Spontaneous Awakening Trials (SAT)](#bundle-card-b-part-i)  
[Bundle Card B - Part II: Spontaneous Breathing Trials (SBT)](#bundle-card-b-part-ii)  
[Bundle Card C - Choice of Analgesia and Sedation (RASS)](#bundle-card-c)  
[Bundle Card D - Delirium: Assess, Prevent, and Manage (CAM-ICU)](#bundle-card-d)  
[Bundle Card E - Early Mobility and Exercise](#bundle-card-e)  
[Bundle Card F - Family Engagement and Empowerment](#bundle-card-f)

---

<a id="bundle-card-a"></a>
<details>
<summary><strong>Bundle Card A — Assess, Prevent, and Manage Pain</strong> <sub><a href="#top">↑ Back to Top</a></sub></summary>

# Table A.1. Bundle Card for Component A in the Liberation Bundle

### Card Overview

- **Card Definition:** A - Assessment, Prevention, and Management of Pain.
- **Purpose:** To observe the pain level, assign the pain score, and document significant pain assessment.

### Assessment Instruments

- **Critical Care Pain Observation Tool (CPOT)** is four-item scale - vocalization, body movements, facial expression, and muscle tension - each scored from 0 to 2.
- **Alternative pain assessment tools:** Numeric Pain Rating Scale (NRS), and Behavioral Pain Scale (BPS)

### Compliance Checks

- Significant pain level is defined as CPOT > 2, or BPS > 5, or NRS > 3
- Conduct pain assessments at least 6 times within 24 hours to monitor compliance.

### Mapping to Standard Vocabularies: CPOT

| Clinical Concept | Concept Values | Standardized Vocabulary: Code,<br>Concept ID | CDM Table |
|------------------|----------------|-------------------------------------------|-----------|
| CPOT: Muscle Tension Score | 0: Relaxed<br>1: Tense, Rigid<br>2: Very tense or rigid | OMOP Extension: OMOP5214828,<br>ID: 722052 | Measurement |
| CPOT: Vocalization Score | 0: No sound<br>1: Sighing, moaning<br>2: Crying out, groaning | OMOP Extension: OMOP5214835,<br>ID: 722060 | Measurement |
| CPOT: Body Movements Score | 0: No movement<br>1: Protection<br>2: Restlessness | OMOP Extension: OMOP5214824,<br>ID: 722048 | Measurement |
| CPOT: Facial Expression Score | 0: Relaxed, neutral<br>1: Tense<br>2: Grimacing | OMOP Extension: OMOP5214820,<br>ID: 722044 | Measurement |
| CPOT: Total Score | Sum of scores from each of the four indicators | OMOP Extension: OMOP5214819,<br>ID: 722043 | Measurement |

### Alternative Pain Assessment Tools

| Clinical Concept | Concept Values | Standardized Vocabulary: Code, Concept ID | CDM Table |
|------------------|----------------|-------------------------------------------|-----------|
| Numeric Pain Rating Scale (NRS) | Rate pain on a scale of 0 to 10 | SNOMED: 225398001,<br>ID: 3715127 | Measurement |
| Behavioral Pain Scale (BPS) | Facial expression, Upper limb movements, and compliance with mechanical ventilation | SNOMED: 273313008,<br>ID: 3399022 | Measurement |

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
|---|---|---|---|
| Ventilation Modes | PSV; SPONT; CPAP; SIMV; APRV | SNOMED CT (ventilation-mode concepts; site-specific Concept IDs) | Procedure |
| SBT Started | Yes / No | LOINC 93203-8 (Concept ID: 1001774) | Observation |
| SBT Stopped (Failure Criteria) | RR ≥ 35 for > 5 min; accessory muscle use; SpO₂ < 90% for > 2 min; BP > 180 or < 90; HR > 140; arrhythmia | LOINC (site-selected code) | Observation |
| SBT Completion | Yes / No | LOINC 87542-7 (Concept ID: 365305814) | Observation |
| SBT Deferred | Unable to perform RSBI; chronic vent dependence; pending procedure; RSBI > 105 | LOINC (site-selected code) | Observation |

</details>

---

<a id="bundle-card-c"></a>
<details>
<summary><strong>Bundle Card C — Choice of Analgesia and Sedation (RASS)</strong> <sub><a href="#top">↑ Back to Top</a></sub></summary>

### Card Overview

Component C optimizes analgesia and titrates sedation to the lightest level compatible with patient safety. Sedation targets rely on the Richmond Agitation–Sedation Scale (RASS), a 10-point instrument ranging from +4 (combative) to −5 (unarousable).

### Compliance Checks

Arousal assessments should occur at least six times in 24 hours to evaluate compliance with the individualized sedation target. Clinicians adjust sedatives and analgesics, such as fentanyl or dexmedetomidine, to maintain targets and document out-of-target results with corrective actions.

### Mapping to Standard Vocabulary

| Clinical Concept | Concept Values | Standardized Vocabulary: Code / Concept ID | CDM Table |
|---|---|---|---|
| RASS Score | +4 (Combative) to −5 (Unarousable) | OMOP Extension (range concepts; site Concept IDs) | Measurement |
| Goal RASS Score | Typical targets: 0 (alert/calm) to −2 (light sedation) | OMOP Extension (goal/target concepts) | Observation |
| Sedative Medications | See list below | RxNorm | Drug |
| Analgesic Medications | See list below | RxNorm | Drug |

#### Reference Medication Lists

| Sedatives | Analgesics |
|---|---|
| Alprazolam; Amobarbital; Lorazepam; Midazolam; Dexmedetomidine; Diazepam; Ketamine; Propofol; Pentobarbital; Phenobarbital; Ativan (lorazepam) | Fentanyl; Morphine; Hydromorphone; Oxycodone; Mod-oxycodone; Methadone; Meperidine; Ketamine; Codeine phosphate; Codeine sulfate |

</details>

---

<a id="bundle-card-d"></a>
<details>
<summary><strong>Bundle Card D — Delirium: Assess, Prevent, and Manage (CAM-ICU)</strong> <sub><a href="#top">↑ Back to Top</a></sub></summary>

### Card Overview

Component D addresses delirium by screening changes in consciousness, attention, and mentation using the CAM-ICU. The focus is early detection and documentation to prompt prevention and management strategies.

### Assessment Instruments

The CAM-ICU algorithm combines mental status change, inattention, altered level of consciousness, and disorganized thinking. Results determine delirium status and guide subsequent actions.

### Compliance Checks

Delirium assessments are performed at least twice daily, with explicit recording of positive, negative, or “unable to assess” determinations.

### Mapping to Standard Vocabularies

| Clinical Concept | Concept Values | Standardized Vocabulary: Code / Concept ID | CDM Table |
|---|---|---|---|
| CAM-ICU RASS LOC | Yes / No | LOINC 80288-4 | Observation |
| CAM-ICU Mental Status Change | Yes / No | LOINC 54632-5 | Observation |
| CAM-ICU Inattention | Yes (≥ 3 errors) · No (< 3 errors) · UTA · Language barrier · Pre-existing dementia | LOINC 106402-1 | Observation |
| CAM-ICU Altered LOC | Yes / No | LOINC 95815-7 | Observation |
| CAM-ICU Disorganized Thinking | Yes / No / UTA | LOINC 95814-0 | Observation |
| Delirium Assessment Status | Positive · Negative · UTA | SNOMED CT 733870009 | Procedure |

</details>

---

<a id="bundle-card-e"></a>
<details>
<summary><strong>Bundle Card E — Early Mobility and Exercise</strong> <sub><a href="#top">↑ Back to Top</a></sub></summary>

### Card Overview

This component encourages early, progressive mobilization to limit ICU-acquired weakness and accelerate recovery. After an initial mobility evaluation, patients advance through higher levels as tolerated, with meticulous documentation of achievements and barriers.

### Compliance Checks

Clinicians record each activity, the highest level achieved in a session, and any challenges (for example, hemodynamic instability or pain). Repeated assessments help tailor goals and justify progression.

### Mapping to Standard Vocabulary

| Clinical Concept | Concept Values | Standardized Vocabulary: Code / Concept ID | CDM Table |
|---|---|---|---|
| Range of Motion (ROM) Status | Passive · Active | SNOMED CT 228528009 | Procedure |
| Sit-to-Stand Ability | min-A (minimal assist) · mod-A (moderate assist) · max-A (maximal assist) · contact guarding · independent · supervision | LOINC 89393-3 | Observation |
| Activity / Mobility | Lift to chair/bed · Turning in bed · Chair transfer · Stand ≥ 1 minute · Walk ≥ 10/25/250+ feet | SNOMED CT 36830005 | Observation |
| Transfer Ability | Stand step · Stand pivot · Contact guarding · Supervision · Squat pivot · Slide board · Independent | LOINC 83185-9 | Observation |

</details>

---

<a id="bundle-card-f"></a>
<details>
<summary><strong>Bundle Card F — Family Engagement and Empowerment</strong> <sub><a href="#top">↑ Back to Top</a></sub></summary>

### Card Overview

The F component promotes meaningful family participation in the care plan. Teams document visits and communications, facilitate meetings, and ensure decision-makers understand the bundle and the patient’s status.

### Compliance Checks

Every instance of family contact is recorded, including visits, calls, and discussions with nurses or physicians. Family meetings are scheduled as needed, and documentation indicates whether the family has been informed about care plans and decisions.

### Mapping to Standard Vocabularies

| Clinical Idea | Concept Values | Standardized Vocabulary: Code / Concept ID | CDM Table |
|---|---|---|---|
| Family Communication | Family visited; spoke with RN; family called; spoke with physician; family conference | SNOMED CT (site-selected concepts) | Observation |
| Family Meeting | Yes / No | SNOMED CT 711070007 | Observation |
| Family Informed | Yes · No · Not applicable | SNOMED CT 406141002 | Observation |

</details>
