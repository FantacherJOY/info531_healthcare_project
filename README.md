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

### Card Overview

The A component targets assessment, prevention, and management of pain. The immediate goal is to observe and quantify a patient’s pain level, assign a defensible pain score, and document clinically meaningful assessments that can guide timely interventions.

### Assessment Instruments

The Critical-Care Pain Observation Tool (CPOT) evaluates four behavioral domains—vocalization, body movements, facial expression, and muscle tension—each scored from 0 to 2, producing a total score that reflects pain severity. When appropriate, alternative instruments such as the Numeric Pain Rating Scale (NRS) and the Behavioral Pain Scale (BPS) may be used to complement or substitute CPOT.

### Compliance Checks

Significant pain should be interpreted as CPOT greater than 2, BPS greater than 5, or NRS greater than 3. Pain assessments are expected to occur at least six times within a 24-hour window so that adherence to the bundle and the patient’s trajectory can be monitored.

### Mapping to Standard Vocabularies: CPOT

| Clinical Concept | Concept Values | Standardized Vocabulary: Code / Concept ID | CDM Table |
|---|---|---|---|
| CPOT: Muscle Tension Score | 0: Relaxed · 1: Tense/rigid · 2: Very tense/rigid | OMOP Extension (Concept ID: 722052) | Measurement |
| CPOT: Vocalization Score | 0: No sound · 1: Sighing/moaning · 2: Crying out/groaning | OMOP Extension (Concept ID: 722060) | Measurement |
| CPOT: Body Movements Score | 0: No movement · 1: Protection · 2: Restlessness | OMOP Extension (Concept ID: 722048) | Measurement |
| CPOT: Facial Expression Score | 0: Relaxed/neutral · 1: Tense · 2: Grimacing | OMOP Extension (Concept ID: 722044) | Measurement |
| CPOT: Total Score | Sum across the four CPOT indicators | OMOP Extension (Concept ID: 722043) | Measurement |

#### Alternative Pain Assessment Tools

| Clinical Concept | Concept Values | Standardized Vocabulary: Code / Concept ID | CDM Table |
|---|---|---|---|
| Numeric Pain Rating Scale (NRS) | Rate pain 0–10 | SNOMED CT 1284852002, LOINC 37156127 | Measurement |
| Behavioral Pain Scale (BPS) | Facial expression, upper-limb movements, mechanical ventilation compliance | SNOMED CT 273310008, OMOP 3399022 | Measurement |

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
