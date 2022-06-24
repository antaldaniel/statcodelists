## code to prepare `CL_SEX` dataset goes here
## https://registry.sdmx.org/overview.html

temp_excel_file <- file.path(tempdir(), "CL_SEX.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_SEX/2.1?format=xlsx&detail=full&references=none&saveAS=CL_SEX.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_SEX <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_SEX) <- snakecase::to_snake_case(names(CL_SEX))
CL_SEX$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_SEX$description)), "B", "b")

CL_SEX <- CL_SEX %>% dplyr::select(.data$id, .data$name, .data$description, .data$name_locale, .data$description_locale)
CL_SEX <- as.data.frame(CL_SEX)
usethis::use_data(CL_SEX, overwrite = TRUE)
