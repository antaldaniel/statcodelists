## code to prepare `CL_AGE` dataset goes here
## https://registry.sdmx.org/overview.html

temp_excel_file <- file.path(tempdir(), "CL_AGE.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_AGE/1.0?format=xlsx&detail=full&references=none&saveAS=CL_AGE.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_AGE <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_AGE) <- snakecase::to_snake_case(names(CL_AGE))
CL_AGE$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_AGE$description)), "B", "b")

CL_AGE <- CL_AGE %>% dplyr::select(.data$id, .data$name, .data$description, .data$name_locale, .data$description_locale)
CL_AGE <- as.data.frame(CL_AGE)
usethis::use_data(CL_AGE, overwrite = TRUE)
