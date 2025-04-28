

8801023 - Unable to Complete
7701003 - Not Recorded7701001 - Not Applicable
StateNational
eMedications.04
eMedications.04 - Medication Administered Route
Definition
The route medication was administered to the patient.
National ElementYesPertinent Negatives (PN)Yes
State ElementYes
NOT ValuesYes
Version 2 ElementE18_04
Is NillableYes
UsageRequired
Recurrence1 : 1
Attributes
NOT Values (NV)
Pertinent Negatives (PN)
Code List
CodeDescription
9927001Blow-By
9927003Buccal
9927005Endotracheal Tube (ET)
9927007Gastrostomy Tube
9927009Inhalation
9927011Intraarterial
9927013Intradermal
9927015Intramuscular (IM)
9927017Intranasal
9927019Intraocular
9927021Intraosseous (IO)
9927023Intravenous (IV)
9927025Nasal Cannula
9927027Nasogastric
9927029Nasotracheal Tube
9927031Non-Rebreather Mask
9927033Ophthalmic
9927035Oral
9927037Other/miscellaneous
9927039Otic
9927041Re-breather mask
9927043Rectal
9927045Subcutaneous
9927047Sublingual
9927049Topical
9927051Tracheostomy
9927053Transdermal
9927055Urethral
9927057Ventimask
9927059Wound
9927061Portacath
9927063Auto Injector
9927065BVM
9927067CPAP
9927069IV Pump
9927071Nebulizer
9927073Umbilical Artery Catheter
9927075Umbilical Venous Catheter
Data Element Comment
This medication route list represents a sub-group of values from the Data Elements for Emergency Department Systems
(DEEDS), pertaining to prehospital care. 

DEEDS Version 1.0 was utilized for this list: . The listhttp://www.sciencedirect.com/science/article/pii/S0196064498703178
can be found on page 152 of 274 of the PDF document in Section 5, 5.13 Current Therapeutic Medication Route.
Associated Validation Rules
Rule IDLevelMessage
nemSch_e001ErrorWhen Medication Administered Route is empty, it should have a Not Value (Not Applicable, Not
Recorded, or Not Reporting, if allowed for the element) or a Pertinent Negative (if allowed for the
element), or it should be omitted (if the element is optional).
nemSch_e002ErrorWhen Medication Administered Route has a Not Value (Not Applicable, Not Recorded, or Not
Reporting), it should be empty.
nemSch_e008ErrorWhen Medication Administered Route has a Pertinent Negative, it should be empty and it should
not have a Not Value (Not Applicable, Not Recorded, or Not Reporting).
nemSch_e146WarningMedication Administered Route should be recorded, unless Medication Administered Prior to this
Unit's EMS Care is "Yes".