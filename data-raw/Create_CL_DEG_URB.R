## code to prepare `CL_OCCUPATION` dataset goes here
temp_excel_file <- file.path(tempdir(), "CL_OCCUPATION.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_OCCUPATION/1.0?format=xlsx&detail=full&references=none&saveAS=CL_OCCUPATION.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_OCCUPATION <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_OCCUPATION) <- snakecase::to_snake_case(names(CL_OCCUPATION))
CL_OCCUPATION$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_OCCUPATION$description)), "B", "b")

CL_OCCUPATION <- CL_OCCUPATION %>% dplyr::select(.data$id, .data$name, .data$description, .data$name_locale, .data$description_locale)
CL_OCCUPATION <- as.data.frame(CL_OCCUPATION)
usethis::use_data(CL_OCCUPATION, overwrite = TRUE)
