

 
1 
 
NEMS IS  TAC W hitepa per 
NEMSIS V3 Resource Repository Guide 
Date 
January 14, 2025 (updated links) 
August 1, 2024 (updated to current Resource Repository) 
December 5, 2016 (file naming in NemsisStates repositories) 
May 21, 2015 
Authors 
Joshua Legler – NEMSIS Consultant 
Jorge Rojas Jr. – NEMSIS Data Manager / Analyst 
N. Clay Mann – NEMSIS P.I. 
Jennifer Correa – NEMSIS Business Data Analyst 
Overview 
This guide helps software developers integrate national and state-specific resources from the NEMSIS 
V3 Resource Repositories into their development environments or software products. This document 
provides instructions for accessing the NEMSIS V3 Resource Repositories using multiple methods. 
The NEMSIS TAC uses the Git distributed version control system to provide its versioned national 
resources and state-submitted resources. As a version control system, Git manages revision control, 
change logging, and data integrity, and it supports distributed development. Knowledge of Git is 
assumed in order to use this guide (for further reading, see Additional Resources, p. 6). 
NEMSIS stakeholders have access to the NEMSIS Resource Repositories via Git as well as via web-based 
and web services interfaces provided by Atlassian BitBucket. 
Quick Start 
The quickest way to access the NEMSIS V3 Resource Repositories is to visit https://git.nemsis.org/ and 
follow the links to the NemsisPublic, NemsisStates, and NemsisPartners projects. 

 
2 
 
Repositories 
NemsisPublic 
NemsisPublic is the project for the public repository for versioned national NEMSIS V3 resources. The 
repository is named nemsis_public. The repository is accessible via web browser at 
https://git.nemsis.org/projects/NEP. 
NemsisStates 
NemsisStates is the project for public repositories for state-specific NEMSIS V3 resources. The project 
includes a separate repository for each state, named using the name of the state in lowercase with 
hyphens between words. For example, the state repository for West Virginia is accessible via web 
browser at https://git.nemsis.org/projects/NES/repos/west-virginia. The list of all state repositories is 
accessible via web browser at https://git.nemsis.org/projects/NES. 
File and Folder Structures 
NemsisPublic 
The nemsis_public repository has the following folders: 
 Compliance Compliance policy documents and resource files 
 DatabaseScripts Database scripts 
 DataDictionary Data Dictionary files (HTML, PDF, text) 
 DefinedLists Defined Lists files (CSV, JSON, XLSX, XML) 
 SampleData XML file samples 
 Schematron National Schematron files and resources 
 SuggestedLists Suggested lists that are not subject to UMLS licensing 
 Translation V2-to-V3 translation and V3-to-V3 translations 
 UsageGuides Usage guides 
 WSDL WSDL file 
 XSDs XSD files 
Generally speaking, file names do not include version numbers or dates. Version numbers, dates, and 
other revision history are maintained by the repository itself. A file keeps the same file name across 
versions over its lifetime. 
NemsisStates 
Each state repository may contain the following folders with documents and supporting resources. If a 
folder does not exist, the state has not published any resources within that topic. Certain files, as noted 
below, are named consistently across all states, prefixed with the postal abbreviation of the state 
followed by an underscore (for example, “UT_”). 

 
3 
 
 DataDictionary State-specific data dictionary files 
 DataDictionary.(pdf|docx|...) Data dictionary 
 Resources State-specific resource list files 
 StateDataSet.xml StateDataSet file containing custom data elements; 
 state required elements; state certification/licensure 
 levels; procedures, medications, and protocols 
 permitted by the state; EMS agencies; and facilities 
 Schematron State-specific Schematron rule files and resources 
 DEMDataSet.sch Schematron rule file for DEMDataSet 
 EMSDataSet.sch Schematron rule file for EMSDataSet 
 WebServices State-specific WSDL file and resources 
 NEMSIS_V3.wsdl WSDL file 
Repositories may contain other files provided by states. Except for those files noted above, file names 
are preserved as submitted by the state, except that version numbering and revision date information 
are removed from file names so that resources can keep the same file names across versions over their 
lifetime. The repository tracks revision history and versioning. If a state utilizes version numbering, the 
version numbering is identified using branches or tags in the repository. 
Repository Branches, Tags, and Workflow 
Git is a distributed version control system, meaning each person who clones a repository has a full copy 
of that repository (including full history) on his/her computer. This section outlines the workflow and 
branching models utilized by the national and state-specific repositories. 
NemsisPublic 
The nemsis_public repository contains a master branch and release-* branches. The release-* 
branches are named for the public release of the NEMSIS V3 standard they represent. For example, 
NEMSIS V3.3.4 can be accessed on the release-3.3.4 branch. Candidate releases are published on a 
release-* branch. Only final public releases are published on master. The master branch follows the 
most recent release-* branch that has final public release status. 
Repository updates that contain new builds of the NEMSIS standard are tagged with the full release 
version and build number (for example, 3.3.4.140328). Repository updates that affect ancillary files 
(compliance policy, suggested lists, usage guides, etc.) are not tagged. 

 
4 
 
NemsisStates 
Each state-specific repository has a master branch. A state repository may also have release-* 
branches if needed to support multiple versions of the NEMSIS standard. 
States submit updated resources to the NEMSIS TAC. NEMSIS TAC staff review and validate the 
submitted files before approving them for release in a state repository. States may choose to involve 
their vendors or IT staff in using a Git-based workflow to submit updated resources for approval and 
release in their state-specific repository. For more information, contact the NEMSIS TAC. 
Accessing Repositories: NEMSIS Web Site 
All repositories are automatically synchronized to the www.nemsis.org site. Resources in the 
repositories can be accessed through the traditionally available pages of the NEMSIS Web site, such as 
the V3 Downloads pages and the State and Territory Information pages. 
Accessing Repositories: Atlassian BitBucket 
The NEMSIS TAC uses Atlassian BitBucket to provide a web-based interface to the NEMSIS repositories, 
including their contents, branches, tags, and history. The BitBucket server can be accessed at 
https://git.nemsis.org/. 
 
You can find and download files, browse by branch or tag, and view commit history. 

 
5 
 
Files 
 
Branches 
 
Tags 
 
 
Commits 
 
Accessing Repositories: Git 
You can clone the NEMSIS repositories to your own computer or server using Git. The following Git 
command clones the nemsis_public repository into a folder called nemsis_public: 
git clone https://git.nemsis.org/scm/nep/nemsis_public.git nemsis_public 
State repositories can be cloned using the name of the state in lowercase with hyphens between words. 
For example, the following Git command clones the West Virginia state repository into a folder called 
west-virginia: 
git clone https://git.nemsis.org/scm/nes/west-virginia.git west-virginia 
Once you have cloned a repository, you can set up automated jobs to watch for, download, and process 
changes in the repository. 
Accessing Repositories: REST Web Service 
Atlassian BitBucket provides a REST Web services API for automated interaction with the NEMSIS 
repositories. For API documentation, visit developer.atlassian.com/cloud/bitbucket and select the links 

 
6 
 
listed under “REST APIs.” As an example, the following REST request retrieves a list of files in the West 
Virginia state repository, returned by the BitBucket server in JSON format: 
https://git.nemsis.org/rest/api/1.0/projects/NES/repos/west-virginia/files 
If a state’s repository is empty, the BitBucket server will return an HTTP 401 (Unauthorized) status code. 
The REST API provides an easy way for software developers to build automated processes around the 
NEMSIS repositories. 
Additional Resources 
If you’re unfamiliar with Git, the following free resources may help you get started. Inclusion in this list 
does not imply endorsement by the NEMSIS TAC. 
▪ Git clients: 
o Official Git Client for Windows, macOS, or Linux/Unix 
o TortoiseGit for Windows 
o Atlassian SourceTree for Windows or Mac OS X 
▪ Git learning materials: 
o Git Succinctly by Ryan Hodson 
o Pro Git by Scott Chacon and Ben Straub 
o Getting Started with Git by Github 
o Introduction to Git in VS Code by Microsoft 
Conclusion 
The Git-based NEMSIS repositories provide several advantages to software developers: 
▪ NEMSIS resources are developed and released using a well-established workflow that provides 
for concurrent development, revision control, and historical consistency. 
▪ The NEMSIS repositories follow expected software development conventions. 
▪ NEMSIS resources use consistent folder structures, file names, and formats across national and 
state-specific repositories and across time. 
▪ NEMSIS resources can be accessed via the NEMSIS Web site, Atlassian BitBucket web interface, 
REST API, and Git, all synchronized with each other. 