

NEMSIS  Use  and Priority  for GNIS Codes Guide 
Date 
February 5, 2015 
May 1, 2024 (Added Military and Census GNIS recommendation)  
Authors 
N. Clay Mann – NE MSIS P.I.  
Josh Legler – NEMSIS Consultant 
Jennifer Correa – NEMSIS Business Data Analyst 
 
Overview 
The Geographic Names Information System (GNIS) includes geographic names for all known places, 
features,  and  areas  in  the  United  States  that  are  identified  by  a  proper  name.  GNIS  is  the  
geographic name component of The National Map.  The NEMSIS Version 3 Standard relies on GNIS 
codes to identify geographic locations and mailing locations. To learn more about the GNIS codes, 
please go to the Geographic Names FAQ webpage.   
Purpose 
The purpose of this description is to define what type of   GNIS code is appropriate for each type of 
location. Elements that collect the state information use the two-digit ANSI/FIPS code. Elements that 
collect the county information use the ANSI/FIPS code which combines the two-digit state code and 
the three-digit county code. These state and county codes are not an issue, since these codes are 
unique and exclusive.  The codes in question are GNIS codes used to identify more specific locations 
such as cities,  unincorporated areas, etc.  
 
The NEMSIS Version 3 data elements that rely on a GNIS code with more specific locations include:   
Elements Interpretation 
sFacility.08 City or township where located 
dContact.06 City, Mailing address 
dFacility.08 City or township where located 
dLocation.07 City or township where located 
dPersonnel.05 City, Mailing address 
ePatient.06 City or township where located 
eScene.17 City or township where located (best approximation) 
eDisposition.04 City or township where located 
 
A community with a GNIS Feature Class “Civil” code represents a political division formed for 
administrative purposes with legally defined boundaries (borough, county, incorporated place, parish, 
town, and/or township). The naming convention of many civil codes lists the cities as “City of 
Cleveland” or “Village of Wicker Park” or “Arden Town.”  
 
A location assigned a GNIS Feature Class “Populated Place” code represents a named community with 
a permanent human population, usually not incorporated and with no legal boundaries, ranging from 
rural clustered buildings to large cities and every size in between (e.g., metropolitan areas, housing 
subdivisions, modular home communities, and named neighborhoods). 
 

A location with a GNIS Feature Class “Census” code represents a statistical area delineated locally, 
specifically for the tabulation of Census Bureau data (census designated place, census county division, 
unorganized territory, various types of American Indian/Alaska Native statistical areas). This is distinct 
from a civil and populated place. 
 
A location with a GNIS Feature Class “Military” code represents a place or facility used for various 
aspects of or relating to military activity.  The NEMSIS TAC recommendation is that a “Civil” code be 
used when possible. If a civil code does not exist for the specific location, a “Populated Place” code 
should be used.  If there is not a “Civil” or “Populated Place” code that corresponds with the city,  use 
a “Census” or “Military” code when possible.   
 
Currently, the NEMSIS TAC does not have a way to reconcile the discrepancy between the GNIS 
information and the USPS information for mailing purposes. NEMSIS requires the GNIS information for 
the incident city and destination city, and USPS information for the scene ZIP code and destination ZIP 
code, but allows free text for city elements in the ePayment section, which is more likely to be used for 
mailing purposes. Utilizing the city and zip code combination to designate the GNIS city code may 
require additional review. Not all city and zip code combinations can be used to easily determine the 
GNIS city code. 
There may be instances where a city and zip combination do not result in an appropriate GNIS code.  
The USPS may recognize it as a place but GNIS does not. In cases where an appropriate GNIS code 
cannot be easily found, it may be necessary to select the nearest city with a GNIS code. Using Fort 
Meade SD 57741 as an example,  the nearest city with a GNIS code is Sturgis. Both the Sturgis 
(Populated Place) and the City of Sturgis (Civil) codes include coordinates that suggest they cover the 
Fort Meade 57741 zip code area.   
 
Additional Sources 
GNIS Codes Website: https://www.usgs.gov/us-board-on-geographic-names/download-gnis-dataGNIS 
Codes Lookup: https://www.usgs.gov/tools/geographic-names-information-system-gnis 
GNIS FAQ site: https://www.usgs.gov/us-board-on-geographic-names/what-geographic-names-
information-system-gnis 
 