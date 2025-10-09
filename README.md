# Table A.1. Bundle Card for Component A in the Liberation Bundle

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


# Table A.2. Bundle Card for Component B in the Liberation Bundle - Part I

## Card Overview

- **Card Definition:** B: SAT - Spontaneous Awakening Trials.
- **Purpose:** To assess the ability to breathe without assistance by periodically stopping sedative drugs for mechanically ventilated patients.

## Assessment Instruments

- Assess whether the patient has received sedatives or opioid medications.
- Observe whether the sedative medium is continuous (IV-infusion) or intermittent (Bolus).

## Compliance Checks

- Periodically stop or pause sedatives for mechanically intubated patients to help weaning from ventilation.
- Record if patients were successfully weaned from mechanical ventilation during the trial.

## Mapping to Standard Vocabularies

| Clinical Concept | Concept Values | Standardized Vocabulary: Code, Concept ID | CDM Table |
|------------------|----------------|-------------------------------------------|-----------|
| Sedative | Midazolam, Propofol, Lorazepam, Dexmedetomidine, etc. | SNOMED: 372614000 | Drug |
| Sedative Route | - Continuously Infused<br>- Intermittent/Bolus Scheduled<br>- PRN ("as needed") | SNOMED: 72641008 | Procedure |
| SAT Assessment | Sedative Medication Stopped or Paused | SNOMED: 241713008 | Procedure |
| SAT Failure | - Anxiety, agitation, or pain<br>- Respiratory rate > 35/min<br>- Oxygen saturation < 88%<br>- Respiratory distress<br>- Acute cardiac arrhythmia | SNOMED | Observation |
