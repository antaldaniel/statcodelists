## code to prepare `CL_OBS_STATUS` dataset goes here
library(dplyr)

temp_excel_file <- file.path(tempdir(), "CLOBSSTATUS.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_OBS_STATUS/2.2?format=xlsx&detail=full&references=none&saveAS=CLFREQ.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_OBS_STATUS <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_OBS_STATUS) <- snakecase::to_snake_case(names(CL_OBS_STATUS))
CL_OBS_STATUS$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_OBS_STATUS$description)), "B", "b")

CL_OBS_STATUS <- CL_OBS_STATUS %>% dplyr::select(.data$id, .data$name, .data$description, .data$name_locale, .data$description_locale)
CL_OBS_STATUS <- as.data.frame(CL_OBS_STATUS)
usethis::use_data(CL_OBS_STATUS, overwrite = TRUE)
