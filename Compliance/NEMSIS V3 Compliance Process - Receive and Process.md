

Page 1 
NEMSIS    Compliance Testing 
NEMSIS Compliance Process— 
“Receive and Process” Software 
Date 
December 3, 2019 (process changes and v3.5.0 testing)  
February 25, 2020 (Updated web service URLs) 
December 16, 2020 (Updated resource descriptions and Maintaining Compliance section) 
January 15, 2025 (Updated for v3.5.1 release) 
Compliance Testing Resources 
Compliance Resources (including Pre-T esting Package): 
https://nemsis.org/technical- resources/version-3/v3-compliance/
 
Compliant Software and Software in Compliance Testing: 
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
and Process Data”. This guide defines the compliance testing process for “Receive and Process Data” 
software: products typically used at regional and state levels that produce a StateDataSet XML file and 
receive and process agency demographics and patient care reports from other NEMSIS-compliant 
software products. 
General Requirements for Receive and Process Data: 
• Create and validate the StateDataSet 
• Receive and process the Demographic dataset and EMS dataset via web service 

Page 2 
• Send the StateDataSet, Demographic dataset, and EMS dataset via web service (full dataset 
and national-only dataset) 
• Receiving an updated Demographic dataset triggers a Demographic dataset submission 
As a vendor proceeds with initial compliance, a vendor is listed on the NEMSIS Web site on the Technical 
Resources tab, Compliant Software Testing Status page
. There are three steps in the compliance process 
that every software vendor must complete. 
□ 1. Application Received:  The NEMSIS TAC has received an a pplication from the vendor. 
□ 2. Test Cases Completed: The NEMSIS TAC has submitted all active test cases to the vendor’s 
product via web services, and the vendor’s product has processed all test cases and submitted 
them to the NEMSIS TAC compliance testing application. The NEMSIS TAC has verified the 
correctness of the test cases. 
□ 3. Testing Web Conference Completed: The vendor has successfully demonstrated all product 
functionality required in the testing web conference with the NEMSIS TAC. 

Page 3 
Receive and Process Data 
Products that Receive and Process Data must demonstrate the ability to receive and process the most 
current version of the NEMSIS Standard DEMDataSet and EMSDataSet via web services. Processing a 
dataset includes structural validation (XSD) and business rules validation (Schematron) of   a dataset 
received. Products must also demonstrate the ability to send data (all elements and national elements 
only) via web services. 
Overview of Requirements 
• The software is able to properly interoperate using the most current NEMSIS Web Service 
standard. 
• The most current full NEMSIS StateDataSet standard is implemented in the user interface. 
• XML Schema (XSD) validation is used when a StateDataSet record is finalized. 
• Schematron validation is used for business rules when a StateDataSet record is finalized. 
• Natural language expressions of StateDataSet validation warnings and errors are presented to 
the user. 
• The software is able to send State data, including change log notes. 
• The software is able to receive Demographic and EMS data. 
• XML Schema (XSD) validation is used when Demographic and EMS data are received. 
• Schematron validation is used for business rules when Demographic and EMS data are received. 
• The software is able to validate received data using multiple Schematron files (national, state, 
etc.). 
• The software is able to properly submit data to the national data repository using the most 
current Web Service standard for Demographic and EMS data (all elements and national 
elements only). 
Pre-Testing 
Before applying for compliance, please review the pre-testing materials to ensure you are fully 
prepared. While the pre-testing process is “on your own,” it mirrors the active testing process, and 
completing these steps will significantly speed up testing. The NEMSIS TAC is available to offer technical 
assistance to any vendor, regardless of compliance testing status. 
Use the Pre-Testing Package (see Compliance Testing Resources, p. 1) to complete the following: 
□ 1. Setup: Configure the pre-testing environment in the software. 
a. Configure the software to submit data to the NEMSIS TAC Compliance Web Service (see 
Compliance Testing Resources, p. 1). 

Page 4 
□ 2. Schematron Rules: The software must allow for dynamically adding Schematron rules. 
a. Deploy the most current national Schematron schemas in the software. 
b. Deploy the additional files from the “Schematron”   directory of   the Pre-Testing Package. 
They must be loaded dynamically and not built into the software. 
□ 3. StateDataSet: The software must create a StateDataSet: 
a. Implement a user interface for the creation and maintenance of StateDataSet. 
b. Implement a user interface element that allows a State Data Manager to record change 
notes prior to sending an updated StateDataSet. 
c. Enter the StateDataSet test case manually using “the StateDataSet HTML document to 
create the state configuration. 
d. Verify that the StateDataSet passes XML Schema (XSD) and Schematron validation. The 
software should automatically perform all XSD and Schematron validation. Present 
natural language expressions of validation warnings and errors to the user. 
e. Submit the StateDataSet to the NEMSIS TAC Compliance Web Service. Include the 
change notes in the <additionalInfo> element of the SOAP message. Verify that the 
software retrieved the submission status for the test case. 
□ 4. Custom Elements: The software must support custom elements. 
a. Implement the ability to receive, process, and send the custom elements defined in the 
StateDataSet in the Pre-Testing Package. (Support for custom elements will be tested in 
the test cases.) 
b. Custom elements must be included in the XML export of   the software. 
□ 5. Test Case Submission: Submit the DEMDataSet and EMSDataSet test cases from the Pre-Testing 
Package to the software’s web service.  
a. Submit the DEM XML file from the “xml/full” folder. Retrieve the submission status. 
Verify that the software performed XSD and Schematron validation and accepted the 
submission. 
b. Submit each of the five  EMS XML test cases from the “xml/full” folder. Retrieve the 
submission statuses. Verify that the software performed XSD and Schematron 
validation and accepted the submissions. 
c. Submit each of the test cases from the “xml/fail” folder. Retrieve the submission 
statuses and verify that the software performed XSD and Schematron validation and 
rejected the submissions. 

Page 5 
□ 6. Web Service Submissions—All Elements: The software must send data (all elements) via web 
services. 
a. Verify that the software automatically submitted data (all elements) to the NEMSIS TAC 
Compliance Web Service and retrieved submission statuses for all test cases from the 
“xml/full” folder of the Pre-Testing Package. 
□ 7. Web Service Submissions—National Elements: The software must send data (national elements 
only) via web services. 
a. Reconfigure the software to submit data (national elements only) to the NEMSIS TAC 
Compliance Web Service. 
b. Resubmit the test cases from the “xml/full” folder to the software’s web service. 
c. Verify that the software automatically submitted data (national elements only) to the 
NEMSIS TAC Compliance Web Service and retrieved submission statuses for all test 
cases. 
Application 
Submit the NEMSIS Compliance Application to begin the compliance testing process. The NEMSIS TAC 
will add the vendor to the Compliant Software Testing Status page on the NEMSIS Web site. 
Active Testing Process 
The NEMSIS TAC will provide an Active Testing Package with instructions. 
The applicant must complete the following items using the Active Testing Package: 
□ 1. Setup: Configure the active testing environment in the software: 
a. Configure the software to submit data—all data elements—to the NEMSIS TAC 
Compliance Testing Automation Web Service. 
□ 2. Schematron Rules: 
a. Deploy the most current national Schematron schemas and the schemas from the 
“Schematron” directory of the Active Testing Package. 
□ 3. StateDataSet: 
a. Enter the StateDataSet test case from the Active Testing Package manually using the 
StateDataSet HTML document to create the state configuration. 

Page 6 
b. Verify that the StateDataSet passes XML Schema (XSD) and Schematron validation. The 
software should automatically perform all XSD and Schematron validation. Present any 
warnings or errors to the user using natural language. 
c. Submit the StateDataSet to the NEMSIS TAC Compliance Web Service. Include the 
change notes in the <additionalInfo> element of the SOAP message. Verify that the 
software retrieved the submission status for the test case. 
□ 4. Custom Elements: 
a. Implement the ability to receive, process, and send all custom elements defined in the 
StateDataSet in the Active Testing Package. 
□ 5. Web Services Account: The NEMSIS TAC will select an agency from the StateDataSet for which it 
will submit test data to the software’s web service. 
a. Create a web service account for the NEMSIS TAC with permission to submit 
DEMDataSet and EMSDataSet data for the specified agency. 
b. Provide the web service username, password, organization, and WSDL or submission 
URL to the NEMSIS TAC. 
The NEMSIS TAC will complete the following to verify that the software’s web service is compliant with 
the national WSDL: 
□ 1. QueryLimit: Using the national WSDL, the NEMSIS TAC will submit a QueryLimit request. The 
NEMSIS TAC will validate the response. 
□ 2. SubmitData: Using the national WSDL, the NEMSIS TAC will submit the following SubmitData 
requests and validate the responses: 
a. A request with an incorrect username or password. 
b. One valid DEMDataSet submission. 
c. Five valid EMSDataSet submissions. 
d. Two invalid DEMDataSet submissions. 
e. Two invalid EMSDataSet submissions. 

Page 7 
□ 3. RetrieveStatus: Using the national WSDL, the NEMSIS TAC will submit RetrieveStatus requests 
for each SubmitData request. The NEMSIS TAC will verify the responses. 
□ 4. Web Service Submissions—All Elements: The NEMSIS TAC will verify that the software 
submitted all valid test cases to the NEMSIS TAC Compliance Testing Automation Web Service. 
The NEMSIS TAC will review the validation and comparison reports. If issues are found, the 
NEMSIS TAC will notify the vendor to review the reports in the Compliance Testing Automation 
application. 
After completing the above steps, the NEMSIS TAC will instruct the vendor to reconfigure the software 
to submit data—national elements only—to the NEMSIS TAC Compliance Testing Automation Web 
Service. The NEMSIS TAC will then perform the following: 
□ 1. SubmitData: The NEMSIS TAC will resubmit the valid test cases. 
□ 2. Web Services Submissions—National Elements Only: The NEMSIS TAC will verify that the 
software submitted the test cases—national elements only—to the NEMSIS TAC Compliance 
Testing Automation Web Service. The NEMSIS TAC will review the validation and comparison 
reports. If issues are found, the NEMSIS TAC will notify the vendor to review the reports in the 
Compliance Testing Automation application. 
a. Note that the NEMSIS TAC Compliance Testing Automation Web Service uses the 
“schemaLocation” attribute in the root element of the data (DEMDataSet or 
EMSDataSet) to determine whether the test submission is for the full schema or for 
national elements only. If the schemaLocation attribute contains the string “NAT”, the 
web service processes the test case as a national-elements-only test case. Example 
schema locations for national elements only are as follows (these examples use version 
3.5.0; the software should implement the version on which it is being tested): 
i. DEMDataSet (latest 3.5.0 build): 
http://nemsis.org/media/nemsis_v3/release-
3.5.0/XSDs/NEMSIS_NAT_XSDs/DEMDataSet_v3.xsd 
ii. DEMDataSet (specific 3.5.0 build): 
http://nemsis.org/media/nemsis_v3/3.5.0.191130CP1/XSDs/NEMSIS_NAT_XSDs
/DEMDataSet_v3.xsd 
iii. EMSDataSet (latest 3.5.0 build): http://nemsis.org/media/nemsis_v3/release-
3.5.0/XSDs/NEMSIS_NAT_XSDs/EMSDataSet_v3.xsd 
iv. EMSDataSet (specific 3.5.0 build): http://nemsis.org/media/nemsis_v3/
3.5.0.191130CP1/XSDs/NEMSIS_NAT_XSDs/EMSDataSet_v3.xsd 

Page 8 
□ 3. Demographic Updates: The NEMSIS TAC will change the value of any element in the 
Demographic test case and resubmit it. The NEMSIS TAC will verify that the software submitted 
the updated test case to the NEMSIS TAC Compliance Web Service. 
□ 4. EMS Updates: The NEMSIS TAC will change the value of any element in the EMS test case and 
resubmit it. The NEMSIS TAC will verify that the software submitted the updated test case to the 
NEMSIS TAC compliance Web Service. 
Testing Web Conference 
Schedule a web conference with the NEMSIS TAC compliance testing staff. The web conference is held 
after the applicant has entered the StateDataSet test case and the “All Elements” and “National 
Elements Only” files have passed review. During the web conference, the NEMSIS TAC will ask the 
vendor to demonstrate the following: 
□ 1. Data Entry User Interface for StateDataSet: 
a. The NEMSIS TAC will ask the vendor to demonstrate one or more state data entry 
screens. The NEMSIS TAC will verify that the information shown matches the 
StateDataSet test case from the pre-testing package. 
b. The NEMSIS TAC will ask the vendor to change a StateDataSet value and resubmit, 
including a changelog in the additional information section of the web services 
submission. 
Certification 
After a vendor has successfully passed compliance testing, the NEMSIS TAC will do the following: 
□ 1. The NEMSIS TAC will move the vendor to the “Compliant Software for State Systems” list on the 
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

Page 9 
In addition, a key component of NEMSIS compliance includes participation in semimonthly NEMSIS V3 
implementation webinars and representation at the annual NEMSIS meeting. Adherence to the 
attendance requirement will be assessed at the end of each calendar year, and any vendor who does 
not meet the attendance requirements at that time will be subject to probation. More information on 
probation and the loss of compliance is available in the NEMSIS Compliance Policy
 document. 

Page 10 
Appendix: Additional Resources 
Vendors should use the following resources for product development prior to compliance testing, or 
during compliance testing if issues are identified by the NEMSIS TAC. All are found within the Technical 
Resources section of the NEMSIS Web site. 
Data Dictionaries and XSDs
 
Schematron 
Web Services 
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
 
 