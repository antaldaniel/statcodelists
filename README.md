
<!-- README.md is generated from README.Rmd. Please edit that file -->

# statcodelists

<!-- badges: start -->

[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/statcodelists)](https://cran.r-project.org/package=statcodelists)
[![CRAN_time_from_release](https://www.r-pkg.org/badges/ago/statcodelists)](https://cran.r-project.org/package=statcodelists)
[![metacran
downloads](https://cranlogs.r-pkg.org/badges/statcodelists)](https://cran.r-project.org/package=iotables)
[![devel-version](https://img.shields.io/badge/devel%20version-0.9.0-blue.svg)](https://github.com/antaldaniel/statcodelists)
[![License:
CC0](https://img.shields.io/badge/license-CC0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
[![dataobservatory](https://img.shields.io/badge/ecosystem-dataobservatory.eu-3EA135.svg)](https://dataobservatory.eu/)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.6751783.svg)](https://doi.org/10.5281/zenodo.6751783)
<!-- badges: end -->

The goal of `statcodelists` is to promote the reuse and exchange of
statistical information and related metadata with making the
internationally standardized SDMX code lists available for the R user.
SDMX has been published as an ISO International Standard (ISO 17369).
The metadata definitions, including the codelists are updated regularly
according to the standard. The authoritative version of the code lists
made available in this package is <https://sdmx.org/?page_id=3215/>.

## Installation

You can install `statcodelists` from CRAN:

``` r
install.packages("statcodelists")
```

or install the development version of statcodelists like so:

``` r
devtools::install_github("antaldaniel/statcodelists")
```

Cross-domain concepts in the SDMX framework describe concepts relevant
to many, if not all, statistical domains. SDMX recommends using these
concepts whenever feasible in SDMX structures and messages to promote
the reuse and exchange of statistical information and related metadata
between organisations.

Code lists are predefined sets of terms from which some statistical
coded concepts take their values. SDMX cross-domain code lists are used
to support cross-domain concepts. The use of common code lists will help
users to work even more efficiently, easing the maintenance of and
reducing the need for mapping systems and interfaces delivering data and
metadata to them. Therefore, a choice over code lists has a great impact
on the efficiency of data sharing.

`statcodelists` helps the use of the latest codelist in your R workflow.

``` r
library(statcodelists)
data("codebooks")
```

| concept                                                                            | codebook            | authority |
|:-----------------------------------------------------------------------------------|:--------------------|:----------|
| Activity                                                                           | CL_ACTIVITY         | SDMX      |
| Age                                                                                | CL_AGE              | SDMX      |
| Civil or marital status                                                            | CL_CIVIL_STATUS     | SDMX      |
| Classification of Individual Consumption According to Purpose (COICOP)             | CL_COICOP           | SDMX      |
| Classification of the Functions of Government (COFOG)                              | CL_COFOG            | SDMX      |
| Classification of the Outlays of Producers According to Purpose (COPP)             | CL_COPP             | SDMX      |
| Classification of the Purposes of Non-Profit Institutions Serving Households COPNI | CL_COPNI            | SDMX      |
| Confidentiality status                                                             | CL_CONF_STATUS      | SDMX      |
| Currency                                                                           | CL_CURRENCY         | SDMX      |
| Decimals                                                                           | CL_DECIMALS         | SDMX      |
| Degree of Urbanisation                                                             | CL_DEG_URB          | SDMX      |
| Frequency                                                                          | CL_FREQ             | SDMX      |
| Geographical areas                                                                 | CL_AREA             | SDMX      |
| Observation status                                                                 | CL_OBS_STATUS       | SDMX      |
| Occupation                                                                         | CL_OCCUPATION       | SDMX      |
| Organisation concepts                                                              | CL_ORGANISATION     | SDMX      |
| Seasonal adjustment                                                                | CL_SEASONAL_ADJUST  | SDMX      |
| Sex                                                                                | CL_SEX              | SDMX      |
| Time format                                                                        | CL_TIME_FORMAT      | SDMX      |
| Time period – collection                                                           | CL_TIME_PER_COLLECT | SDMX      |
| Unit multiplier                                                                    | CL_UNIT_MULT        | SDMX      |

## Example: Codelist Frequency

``` r
data("CL_FREQ")
```

| id  | name                  | description                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | name_locale | description_locale |
|:----|:----------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------|:-------------------|
| A   | Annual                | To be used for data collected or disseminated every year                                                                                                                                                                                                                                                                                                                                                                                                                          | en          | en                 |
| A2  | Biennial              | To be used for data collected or disseminated every two years                                                                                                                                                                                                                                                                                                                                                                                                                     | en          | en                 |
| A3  | Triennial             | To be used for data collected or disseminated every three years                                                                                                                                                                                                                                                                                                                                                                                                                   | en          | en                 |
| A4  | Quadrennial           | To be used for data collected or disseminated every four years                                                                                                                                                                                                                                                                                                                                                                                                                    | en          | en                 |
| A5  | Quinquennial          | To be used for data collected or disseminated every five years                                                                                                                                                                                                                                                                                                                                                                                                                    | en          | en                 |
| A10 | Decennial             | To be used for data collected or disseminated every ten years                                                                                                                                                                                                                                                                                                                                                                                                                     | en          | en                 |
| A20 | Bidecennial           | To be used for data collected or disseminated every twenty years                                                                                                                                                                                                                                                                                                                                                                                                                  | en          | en                 |
| A30 | Tridecennial          | To be used for data collected or disseminated every thirty years                                                                                                                                                                                                                                                                                                                                                                                                                  | en          | en                 |
| A_3 | Three times a year    | To be used for data collected or disseminated three times a year                                                                                                                                                                                                                                                                                                                                                                                                                  | en          | en                 |
| S   | Half-yearly, semester | To be used for data collected or disseminated every semester                                                                                                                                                                                                                                                                                                                                                                                                                      | en          | en                 |
| Q   | Quarterly             | To be used for data collected or disseminated every quarter                                                                                                                                                                                                                                                                                                                                                                                                                       | en          | en                 |
| M   | Monthly               | To be used for data collected or disseminated every month                                                                                                                                                                                                                                                                                                                                                                                                                         | en          | en                 |
| M2  | Bimonthly             | To be used for data collected or disseminated every two months                                                                                                                                                                                                                                                                                                                                                                                                                    | en          | en                 |
| M_2 | Semimonthly           | To be used for data collected or disseminated twice a month                                                                                                                                                                                                                                                                                                                                                                                                                       | en          | en                 |
| M_3 | Three times a month   | To be used for data collected or disseminated three times a month                                                                                                                                                                                                                                                                                                                                                                                                                 | en          | en                 |
| W   | Weekly                | To be used for data collected or disseminated every week                                                                                                                                                                                                                                                                                                                                                                                                                          | en          | en                 |
| W2  | Biweekly              | To be used for data collected or disseminated every two weeks                                                                                                                                                                                                                                                                                                                                                                                                                     | en          | en                 |
| W3  | Triweekly             | To be used for data collected or disseminated every three weeks                                                                                                                                                                                                                                                                                                                                                                                                                   | en          | en                 |
| W4  | Four-weekly           | To be used for data collected or disseminated every four weeks                                                                                                                                                                                                                                                                                                                                                                                                                    | en          | en                 |
| W_2 | Semiweekly            | To be used for data collected or disseminated twice a week                                                                                                                                                                                                                                                                                                                                                                                                                        | en          | en                 |
| W_3 | Three times a week    | To be used for data collected or disseminated three times a week                                                                                                                                                                                                                                                                                                                                                                                                                  | en          | en                 |
| D   | Daily                 | To be used for data collected or disseminated every day                                                                                                                                                                                                                                                                                                                                                                                                                           | en          | en                 |
| D_2 | Twice a day           | To be used for data collected or disseminated twice a day                                                                                                                                                                                                                                                                                                                                                                                                                         | en          | en                 |
| H   | Hourly                | To be used for data collected or disseminated every hour                                                                                                                                                                                                                                                                                                                                                                                                                          | en          | en                 |
| H2  | Bihourly              | To be used for data collected or disseminated every two hours                                                                                                                                                                                                                                                                                                                                                                                                                     | en          | en                 |
| H3  | Trihourly             | To be used for data collected or disseminated every three hours                                                                                                                                                                                                                                                                                                                                                                                                                   | en          | en                 |
| B   | Daily – business week | Similar to “daily”, however there are no observations for Saturdays and Sundays (so, neither “missing values” nor “numeric values” should be provided for Saturday and Sunday)                                                                                                                                                                                                                                                                                                    | en          | en                 |
| N   | Minutely              | While N denotes “minutely”, usually, there may be no observations every minute (for several series the frequency is usually “irregular” within a day/days). And though observations may be sparse (not collected or disseminated every minute), missing values do not need to be given for the minutes when no observations exist: in any case the time stamp determines when an observation is observed                                                                          | en          | en                 |
| I   | Irregular             | To be used with irregular time series that stores data for a sequence of arbitrary timepoints. Irregular time series are appropriate when the data arrives unpredictably, such as when the application records every stock trade or when random events are recorded (the interval between each element can be a different length)                                                                                                                                                 | en          | en                 |
| OA  | Occasional annual     | The event occurs occasionally with an infrequent update that could span from 1 year to several years between events. It implies a survey that experiences a gap for several years prior to the next survey update (this is commonly linked to funding available to run a specific survey (i.e. health surveys), whereas a regular annual survey refers typically to ‘programs’ that are funded regularly and fall under the Statistics Act, and therefore never experience a gap) | en          | en                 |
| OM  | Occasional monthly    | The event occurs occasionally with an infrequent update that could span from 1 month to several months between events. It implies a survey that experiences a gap for several months prior to the next survey update                                                                                                                                                                                                                                                              | en          | en                 |
| \_O | Other                 | To be used when the qualitative or quantitative values that a variable takes in a data set is associated to multiple occurrences with frequency other than the already defined ones (for example every 5 hours and 32 minutes etc.)                                                                                                                                                                                                                                               | en          | en                 |
| \_U | Unspecified           | To be used when a set of values are reported within a time range but not associated to sub ranges. Often this could happen in case of missing or sparse information. (Let’s say we have two observations for 2020 but we do not know if they are part of a monthly reporting or quarterly reporting)                                                                                                                                                                              | en          | en                 |
| \_Z | Not applicable        | To be used when the qualitative or quantitative values that a variable takes in a data set is not associated to multiple occurrences (only single occurrence exists) one can use the \_Z as frequency                                                                                                                                                                                                                                                                             | en          | en                 |

Further recommended code values for expressing general statistical
concepts like `not applicable`, etc., can be found in section
`Generic codes` of the [Guidelines for the creation and management of
SDMX Cross-Domain Code Lists](https://sdmx.org/?page_id=4345).

For further codelists used by reliable statistical agency but not
harmonized on SDMX level please consult the [SDMX Global
Registry](https://registry.sdmx.org/)
[Codelists](https://registry.sdmx.org/items/codelist.html) page.

The creator of this package is not affiliated with SDMX, and this
package was has not been endorsed by SDMX.

## Code of Conduct

Please note that the `statcodelists` project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
