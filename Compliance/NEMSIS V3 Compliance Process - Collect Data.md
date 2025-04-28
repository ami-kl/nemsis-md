

Page 1 
NEMSIS Compliance  Testing 
NEMSIS Compliance Process— 
“Collect Data” Software 
Date 
December 3, 2019 (process changes and v3.5.0 testing) 
February 25, 2020 (updated web service URLs, changed test case key elements) 
September 10, 2020 (added “defined lists” testing) 
October 13, 2020 (additional information about “defined lists” testing) 
December 16, 2020 (Updated resource descriptions and Maintaining Compliance section) 
January 15, 2025 (updated for v3.5.1 release) 
 
Compliance Testing Resources 
Compliance Resources (including Pre-T esting Package): 
https://nemsis.org/technical-resources/version-3/v3-compliance/
 
Compliant Software and Software undergoing Compliance Testing: 
https://nemsis.org/technical-resources/version-3/v3-compliant-software-and-compliance-testing-
status/ 
NEMSIS TAC Compliance Web Service for pre-testing: 
https://compliance.nemsis.org/nemsisWs.wsdl
 
NEMSIS TAC Compliance Testing Automation Web Service for active testing: 
https://cta.nemsis.org/ComplianceTestingWs/endpoints/compliancetestingws.wsdl
 
NEMSIS TAC Compliance Testing Automation application for active testing: 
https://cta.nemsis.org/ComplianceTestingWebapp
 
Overview 
Products seeking NEMSIS compliance must be in final form, ready for market, installation-ready, and 
versioned. NEMSIS compliance testing encompasses two processes called “Collect Data”   and “Receive 
and Process Data”. This guide defines the compliance testing process for “Collect Data” software: 
products that field-level EMS providers use to collect EMS agency demographics and patient care 
reports. 
 
 
 

Page 2 
General Requirements for Collect Data: 
• Data entry for the Demographic dataset and EMS dataset 
• XML Schema (XSD) and Schematron validation when a record is finalized for the 
Demographic dataset and EMS dataset 
• Send the Demographic dataset and EMS dataset via web service 
• Modification of   Demographics triggers a Demographic dataset submission 
• Custom elements implemented in the user interface and dataset submission for the 
Demographic dataset and EMS dataset 
As a vendor proceeds with initial compliance, a vendor is listed on the NEMSIS Web site on the Technical 
Resources tab, Compliant Software Testing Status page. There are three steps in the compliance process 
that every software vendor must complete. 
□ 1. Application Received: The NEMSIS TAC has received an application from the vendor. 
□ 2. Test Cases Completed: The vendor has entered all active test cases and submitted them to the 
NEMSIS TAC compliance testing application. The NEMSIS TAC has verified the correctness of the 
test cases. 
□ 3. Testing Web Conference Completed: The vendor has successfully demonstrated all product 
functionality required in the testing web conference with the NEMSIS TAC. 

Page 3 
Collect Data 
Products that Collect Data must demonstrate the implementation of   the most current version of the 
NEMSIS standard:  all NEMSIS DEMDataSet and EMSDataSet elements, implementation of   custom 
elements, XML Schema (XSD) and Schematron data validation at record finalization, presentation of 
natural language expressions of validation warnings and errors to the user, and XML representation of   
the data.  Products must also demonstrate the ability to send data via web services. 
Overview of Requirements 
1. The software is able to use information from a NEMSIS StateDataSet for configuration. 
2. The full NEMSIS Demographic standard is implemented in the user interface. 
3. The full NEMSIS EMS standard is implemented in the user interface. 
4. The software is capable of   implementing custom elements as provided in the test cases. 
5. XML Schema (XSD) validation is used when a Demographic record is finalized. 
6. XML Schema (XSD) validation is used when an EMS record is finalized. 
7. Schematron validation is used for business rules when a Demographic record is finalized. 
8. Schematron validation is used for business rules when an EMS record is finalized. 
9. The software is able to validate data using multiple Schematron files (national, state, etc.). 
10. Natural language expressions of validation warnings and errors are presented to the user. 
11. The software is able to properly submit data using the most current NEMSIS Web Service standard. 
Pre-Testing 
Before applying for compliance, please review the pre-testing materials to ensure you are fully 
prepared. While the pre-testing process is “on your own,” it mirrors the active testing process, and 
completing these steps will significantly speed up testing. The NEMSIS TAC is available to offer technical 
assistance to any vendor, regardless of compliance testing status. 
Use the Pre-Testing P ackage (see 
Compliance Testing Resources,
 p. 1)  to complete the following: 
□ 1. Setup: Configure the pre-testing environment in the software. 
a. To help vendors set up their software with a realistic environment for compliance 
testing, the Pre-Testing Package contains a StateDataSet. Use the information in the 
StateDataSet to configure the software as if it is being set up for use in a particular state. 
All test cases in the Pre-Testing package have been designed to be consistent with the 
information in the StateDataSet. 
b. Configure the software to submit data to the NEMSIS TAC Compliance Web Service (see 
Compliance Testing Resources, p. 1). 

Page 4 
□ 2. Custom Elements:  The software must support custom elements. 
a. Implement the custom elements defined in the StateDataSet in the Pre-Testing Package. 
(Support for custom elements will be tested in the test cases.) 
b. Custom elements must be included in the XML export of   the software. 
□ 3. Schematron Rules:  The software must allow for dynamically adding Schematron rules. 
a. Deploy the most current national Schematron schemas for the NEMSIS standard 
version compliance is being tested for in the software. 
b. Deploy the additional files from the “ Schematron”   directory of   the Pre-Testing Package. 
They must be loaded dynamically and not built into the software. 
□ 4. Defined Lists: The software must implement the NEMSIS TAC defined lists. Defined lists can be 
found at nemsis.org/technical-resources/version-3/version-3-resources/
. 
a. Deploy the most current defined list for each element that implements them. 
b. Include a mechanism to facilitate the efficient identification of the most appropriate 
value (hierarchically structured lists, smart lookups, etc.) 
c. Additional values may appear in the lists as needed for testing. 
□ 5. DEMDataSet and EMSDataSet Test Cases:  All DEMDataSet and EMSDataSet test cases should be 
entered into the system by the applicant. 
a. Implement all DEMDataSet and EMSDataSet elements in the software user interface. 
b. Enter the test cases for DEMDataSet and EMSDataSet manually as follows: 
Step 1. Use the DEM HTML test case to create the agency. 
Step 2. Use the five EMS HTML test cases to create five PCRs within the agency. 
□ 6. Test Case XML Files: The software must generate NEMSIS XML data. 
a. Generate XML exports of the test cases entered in the previous step. 
b. Verify that the files pass XSD and Schematron validation. The software should 
automatically perform all XSD and Schematron validation. 
c. Compare the XML files to the reference XML files in the “xml/full” folder of the Pre-
Testing Package. Resolve any unexpected differences between the software-generated 
XML files and the Pre-Testing Package XML files. 
□ 7. Web Service Submissions: The software must send data via web services. 
a. Verify that the software automatically submitted data to the NEMSIS TAC Compliance 
Web Service and retrieved submission statuses. 

Page 5 
Application 
Submit the NEMSIS Compliance Application to begin the compliance testing process. The NEMSIS TAC 
will add the vendor to the Compliant Software Testing Status page on the NEMSIS Web site. 
Active Testing Process 
The NEMSIS TAC will provide an Active T esting P ackage with instructions. 
The applicant must complete the following items using the Active Testing Package: 
□ 1. Setup: Configure the active testing environment in the software: 
a. The active testing package contains a StateDataSet. Use the information in the 
StateDataSet to configure the software as if it is being set up for use in a particular 
state. 
b. Configure the software to submit to the NEMSIS TAC Compliance Testing Automation 
Web Service. 
□ 2. Custom Elements: 
a. Implement all custom elements defined in the StateDataSet in the Active Testing 
Package. 
□ 3. Schematron Rules: 
a. Deploy the most current national Schematron schemas and the schemas from the 
“Schematron” directory of the Active Testing Package. 
□ 4. Defined Lists: The software must implement the NEMSIS TAC defined lists. Defined lists can be 
found at nemsis.org/technical-resources/version-3/version-3-resources/
. 
a. Deploy the most current defined list for each element that implements them. 
b. Include a mechanism to facilitate the efficient identification of the most appropriate 
value (hierarchically structured lists, smart lookups, etc.) 
c. Additional values may appear in the lists as needed for testing.  
□ 5. DEMDataSet and EMSDataSet Test Cases: All test cases must be entered into the system by the 
applicant and available to the NEMSIS TAC for review. 
a. Enter the test cases for DEMDataSet and EMSDataSet manually as follows: 
Step 1. Use the DEM HTML test case to create the agency. 
Step 2. Use the five EMS HTML test cases to create five PCRs within the agency. 
b. Each test case must remain in the system for verification by the NEMSIS TAC. 

Page 6 
□ 6. Web Service Submissions: 
a. Verify that the software automatically submitted data to the NEMSIS TAC Compliance 
Testing Automation Web Service. Note that the NEMSIS TAC Compliance Testing 
Automation Web Service uses the following data elements as test case keys. If the 
following elements do not exactly match the information provided in the Active Testing 
Package, the NEMSIS TAC Compliance Testing Automation Web Service will fail to 
identify the test case: 
i. DEMDataSet: dAgency.02 EMS Agency Number 
ii. EMSDataSet: eResponse.04 EMS Response Number 
□ 7. Test Case Verification: 
a. Log into the NEMSIS TAC Compliance Testing Automation application. 
b. Review the Validation Report for each test case submission. Verify that it passed XSD 
and Schematron validation. 
c. Review the Comparison Report for each test case submission. Resolve any issues 
identified by the comparison report: 
• Empty line with gray background: The test case submission is missing data that 
is expected. 
• Non-empty line with gray background: The test case submission contains extra 
data that is not expected. 
• Line with yellow background: The test case submission contains data that differs 
from what is expected. 
d. Contact the NEMSIS TAC if technical assistance is needed to resolve issues. 
Notify the NEMSIS TAC when the above items have been completed. The following will be completed by 
the NEMSIS TAC: 
□ 1. Test Case Verification: The NEMSIS TAC will verify the test cases in the NEMSIS TAC Compliance 
Testing Automation application. 
Testing Web Conference 
Schedule a web conference with the NEMSIS TAC compliance testing staff. The web conference may be 
held any time after the applicant has entered the DEMDataSet and EMSDataSet test cases and the 
review by the NEMSIS TAC has been completed. During the web conference, the NEMSIS TAC will ask 
the vendor to demonstrate the following: 

Page 7 
□ 1. Data Entry User Interface: 
a. The NEMSIS TAC will ask the vendor to demonstrate one or more demographic data 
entry screens. The NEMSIS TAC will verify that the information shown matches the 
DEMDataSet test case from the active testing package. 
b. The NEMSIS TAC may ask the vendor to make changes  to the demographic data and 
resubmit via web services to the NEMSIS TAC Compliance Testing Automation 
application. 
c. The NEMSIS TAC will ask the vendor to show one or more EMS data entry screens for 
each of the five EMSDataSet test cases from the active testing package. The NEMSIS TAC 
will verify that the information shown matches the EMSDataSet test cases. 
d. The NEMSIS TAC may ask the vendor to make changes to the EMS data and resubmit via 
web services to the NEMSIS TAC Compliance Testing Automation application. 
□ 2. Demographic Dataset Update: 
a. The NEMSIS TAC will instruct the vendor to change the value of a national element in 
demographics. The NEMSIS TAC will verify that the software automatically sends an 
updated DEMDataSet to the NEMSIS TAC Compliance Web Service.  
□ 3. Custom Elements: 
a. The NEMSIS TAC will ask the vendor to show the DEMDataSet and EMSDataSet custom 
data elements in the user interface. The NEMSIS TAC will verify that the custom 
elements are implemented correctly. 
□ 4. Schematron: Each Schematron file in the Pre-Testing Package has one warning-level assertion 
and one error-level assertion. 
a. The NEMSIS TAC will instruct the vendor to change data in the demographic record in 
order to trigger a Schematron error. The NEMSIS TAC will verify that the software 
displays the natural language error and prevents the record from being 
completed/finalized 
b. The NEMSIS TAC will instruct the vendor to change data in the demographic record in 
order to trigger a Schematron warning. The NEMSIS TAC will verify that the software 
displays the natural language warning but allows the record to be completed/finalized). 
c. The NEMSIS TAC will instruct the vendor to change data in an EMS record in order to 
trigger a Schematron error. The NEMSIS TAC will verify that the software displays the 
natural language error and prevents the record from being completed/finalized. 
d. The NEMSIS TAC will instruct the vendor to change data in an EMS record in order to 
trigger a Schematron warning. The NEMSIS TAC will verify that the software displays the 
natural language warning but allows the record to be completed/finalized). 

Page 8 
□ 5. Defined Lists: The NEMSIS TAC will review the software to ensure that all items on the defined 
list for all elements using a defined list are implemented in the interface. 
□ 6. Ready for Market: The NEMSIS TAC will review the software to determine whether it is in final 
form, ready for market, installation-ready, and versioned. 
Certification 
After the vendor has successfully passed compliance testing, the NEMSIS TAC will do the following: 
□ 1. The NEMSIS TAC will move the vendor to the “Compliant Software for EMS Agencies” list on the  
Compliant Software Testing Status page of the NEMSIS Web site. 
□ 2. The NEMSIS TAC will send a letter to the vendor announcing the successful completion of 
compliance testing, along with links to compliance logos that the vendor may use to indicate 
that the software is certified NEMSIS compliant. 
Maintaining Compliance 
Once initial NEMSIS compliance is obtained, maintenance of NEMSIS compliance status will require 
retesting within two years of the last successful compliance test. Prior to expiration, the vendor should 
repeat the compliance testing process in order to maintain compliance status. The same process is used 
for initial certification and recertification. The NEMSIS TAC develops new pre-testing and active testing 
cases annually. The vendor should complete the testing process using the test cases in effect at the time 
of re-certification. 
In addition, a key component of NEMSIS compliance includes participation in semimonthly NEMSIS V3 
implementation webinars and representation at the annual NEMSIS meeting. Adherence to the 
attendance requirement will be assessed at the end of each calendar year, and any vendor who does 
not meet the attendance requirements at that time will be subject to probation. More information on 
probation and the loss of compliance is available in the NEMSIS Compliance Policy
 document. 

Page 9 
Appendix: Additional Resources 
Vendors should use the following resources for product development prior to compliance testing, or 
during compliance testing if issues are identified by the NEMSIS TAC. All are found within the Technical 
Resources section of the NEMSIS Web site. 
Data Dictionaries and XSDs
 
Schematron 
Web Services 
Resources 
Additional Guides: 
Custom Elements 
Not Values 
Pertinent Negatives 
Demographic Dataset Submission 
GNIS Codes 
UUIDs 
Database Scripts 
NEMSIS TAC Validator Web Service: 
https://validator.nemsis.org/nemsisWs.wsdl
 
 