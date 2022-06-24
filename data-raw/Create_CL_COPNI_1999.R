## code to prepare `CL_COPNI_1999` dataset goes here
temp_excel_file <- file.path(tempdir(), "CL_COPNI_1999.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_COPNI_1999/1.0?format=xlsx&detail=full&references=none&saveAS=CL_COPNI_1999.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_COPNI_1999 <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_COPNI_1999) <- snakecase::to_snake_case(names(CL_COPNI_1999))
CL_COPNI_1999$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_COPNI_1999$description)), "B", "b")

CL_COPNI_1999 <- CL_COPNI_1999 %>%
  dplyr::select(.data$id, .data$name, .data$description,
                .data$name_locale, .data$description_locale)
CL_COPNI_1999 <- as.data.frame(CL_COPNI_1999)
usethis::use_data(CL_COPNI_1999, overwrite = TRUE)
