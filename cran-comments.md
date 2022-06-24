## R CMD check results
Test environments:
- Windows 10, R version 4.1.3
- Mac OS on mac.R-project.org/macbuilder, 
- Fedora Linux, R-devel, clang, gfortran
- Windows Server 2022, R-devel, 64 bit
- Ubuntu Linux 20.04.1 LTS, R-release, GCC

0 errors | 0 warnings | 1 note

* This is a new release. The data package contains no code, only the SDMX statistical ISO 
standards codelists.  
* The R spell checker flags codelist as on word, but this is how it
is spelled in the ISO standard. It also flags SDMX, which is the official abbreviation of the Statistical Data and Metadata eXchange.
* On some platforms I get the following message:
 Status: Error
      Message: libcurl error code 60:
        	SSL certificate problem: unable to get local issuer certificate
        	(Status without verification: OK)
        	
The URLs all point to the website of sdmx.org, which is the global statistical metadata 
harmonization body.
