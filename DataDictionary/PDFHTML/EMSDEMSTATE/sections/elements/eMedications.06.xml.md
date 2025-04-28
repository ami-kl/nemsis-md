

7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.06
eMedications.06 - Medication Dosage Units
Definition
The unit of medication dosage administered to patient.
National ElementYesPertinent Negatives (PN)No
State ElementYes
NOT ValuesYes
Version 2 ElementE18_06
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Code List
CodeDescription
3706001Grams (gms)
3706003Inches (in)
3706005International Units (IU)
3706007Keep Vein Open (kvo)
3706009Liters (l)
3706013Metered Dose (MDI)
3706015Micrograms (mcg)
3706017Micrograms per Kilogram per Minute (mcg/kg/min)
3706019Milliequivalents (mEq)
3706021Milligrams (mg)
3706023Milligrams per Kilogram Per Minute (mg/kg/min)
3706025Milliliters (ml)
3706027Milliliters per Hour (ml/hr)
3706029Other
3706031Centimeters (cm)
3706033Drops (gtts)
3706035Liters Per Minute (LPM [gas])
3706037Micrograms per Minute (mcg/min)
3706039Milligrams per Kilogram (mg/kg)
3706041Milligrams per Minute (mg/min)
3706043Puffs
3706045Units per Hour (units/hr)
3706047Micrograms per Kilogram (mcg/kg)
3706049Units
3706051Units per Kilogram per Hour (units/kg/hr)
3706053Units per Kilogram (units/kg)
3706055Milligrams per Hour (mg/hr)
Data Element Comment
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Dosage Units is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Dosage Units has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e148WarningMedication Dosage Units should be recorded, unless Medication Administered Prior to this Unit's
EMS Care is "Yes".