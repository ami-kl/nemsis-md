

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
NEMSIS Git Repository Basics 
Date 
July 15, 2024 
 
Authors 
Jennifer Correa – NEMSIS Business Data Analyst 
 
Background 
The NEMSIS website hosts state, territory, and some partner Git repositories.  As NEMSIS transitions between 
versions there is a need to update the resources within the state and partner Git repositories.   
 
What is a Repository? 
Each state, territory, and some partners has a page hosted by the NEMSIS website where resources are 
published i.e. StateDataSet, Data Dictionary, Schematron, Change Logs, and any other resources needed for 
vendors and agencies to implement the NEMSIS standard.  These resources are housed in a repository.  The 
materials are used to configure the local ePCR systems. 
 
On a state or territory page, these repositories can be downloaded or reviewed.  
 
 
 
What is a Git? 
Git is the repository system used by the NEMSIS TAC.  The TAC uses a software product called Atlassian 
BitBucket to manage the Git repositories. 
 
 
 
 
 
 
 
 
 

 
National EMS Information System Technical Assistance Center 
P.O. Box 581289, Salt Lake City, UT 84158 
(801) 587-7361 | Fax (801) 581-8686 
www.NEMSIS.org 
What is a Git branch? 
State and territory resources are NEMSIS version-specific.  For each version, a Git branch is created.  The version 
branches are the primary location in Git.  Each state and territory can designate which version branch should be 
synced up with the master branch.  Please see examples of the master and version branches below as they are 
displayed in the Git repository. 
 
 
 
How do Git branches work together? 
As states and territories switch between versions, the master may be synced with the older version until a state 
or territory decides they are ready to change.  This transition is virtually seamless on the web page that most 
see, but the vendors who get electronic updates from the master branch will have to actively search for updates 
until the master branch is switched to the more recent version.  Some states and territories want to wait until 
most of their EMS Provider Agencies are reporting in the newer version, and others may switch immediately.  It 
is up to each state or territory preference.  
Other things to know about the Git repository 
• The overall impact of the master branch switch is fairly low 
• Branches can be removed when a state no longer supports the NEMSIS version 
• Syncing Git is part of the state and territory onboarding process 
o Each state and territory can move at their own pace 
o Vendors will need to know when the Git repository for a state or territory makes a change 
 
Making the Switch between branches 
When a state or territory is ready to switch versions, remove branches, or sync the master branch, open a 
request via the NEMSIS Help Desk. Once the change is completed, the state or territory should notify all vendors 
and agencies who may be impacted by the change. 
 
 
 
 