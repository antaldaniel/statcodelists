## code to prepare `CL_ACTIVITY_NACE2` dataset goes here
temp_excel_file <- file.path(tempdir(), "CL_ACTIVITY_NACE2.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_ACTIVITY_NACE2/1.0?format=xlsx&detail=full&references=none&saveAS=CL_ACTIVITY_NACE2.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_ACTIVITY_NACE2 <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_ACTIVITY_NACE2) <- snakecase::to_snake_case(names(CL_ACTIVITY_NACE2))
CL_ACTIVITY_NACE2$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_ACTIVITY_NACE2$description)), "B", "b")

CL_ACTIVITY_NACE2 <- CL_ACTIVITY_NACE2 %>% dplyr::select(.data$id, .data$name, .data$description, .data$name_locale, .data$description_locale)
CL_ACTIVITY_NACE2 <- as.data.frame(CL_ACTIVITY_NACE2)
usethis::use_data(CL_ACTIVITY_NACE2, overwrite = TRUE)
