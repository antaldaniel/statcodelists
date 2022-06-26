## R CMD check results
Test environments:
- Windows 10, R version 4.1.3
- Mac OS on mac.R-project.org/macbuilder, 
- Fedora Linux, R-devel, clang, gfortran
- Windows Server 2022, R-devel, 64 bit
- Ubuntu Linux 20.04.1 LTS, R-release, GCC

0 errors v | 0 warnings v | 0 notes v

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
