## R CMD check results
Test environments:
- Windows 10, R version 4.1.3
- Mac OS on mac.R-project.org/macbuilder, 
- Fedora Linux, R-devel, clang, gfortran
- Windows Server 2022, R-devel, 64 bit
- Ubuntu Linux 20.04.1 LTS, R-release, GCC

0 errors v | 0 warnings v | 0 notes v

* This is a resubmission, the README.md had two malformatted URLs in the badges, which are not correct (apologies!)

* Reviewer asked: "Is there some reference about the method you can add in the Description
field in the form Authors (year) <doi:10.....> or <arXiv:.....>?"

I added the following information to the description. "SDMX has been published as an ISO International Standard (ISO 17369). The metadata definitions, including the codelists, are updated regularly according to the standard. The authoritative version of the code lists made availabe in this package is <https://sdmx.org/?page_id=3215/>."

The actual codelists have version numbers, no unique DOIs. Like relatively frequently changing elements in ISO standards, the an authority (the SDMX) makes changes as needed. The authoritative URL of the current standard codelists is <https://sdmx.org/?page_id=3215/>, which hae been in the data table descriptions, but now they are emphasised in the DESCRIPTION, too. I plan to make a new release each time SDMX changes a codelist, which happens every few years. 

The closest analogy I found on CRAN was the countrycodes package, which contains ISO-3166-1 codes with country names.

The rest is from the previous submission: 

* This is a new release. The data package contains no code, only the SDMX statistical ISO 
standards codelists.  The aim of the package is to streamline standard statistical metadata use in various CRAN released and newly developed rOpenGov packages.

* The R spellchecker flags codelist as on word, but this is how it
is spelled in the ISO standard. It also flags SDMX, which is the official abbreviation of the Statistical Data and Metadata eXchange. Because SDMX codelists are developed in the EU, US, and Australia, they use different spelling for urbanisation and urbanization. I left the official spelling intact even though the package language is set to en-US.

* On some platforms I get the following message:
 Status: Error
      Message: libcurl error code 60:
        	SSL certificate problem: unable to get local issuer certificate
        	(Status without verification: OK)
        	
The URLs all point to the website of sdmx.org, which is the global statistical metadata 
harmonization body.
