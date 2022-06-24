## code to prepare `CL_UNIT_MULT` dataset goes here
temp_excel_file <- file.path(tempdir(), "CL_UNIT_MULT.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_UNIT_MULT/1.1?format=xlsx&detail=full&references=none&saveAS=CL_UNIT_MULT.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_UNIT_MULT <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_UNIT_MULT) <- snakecase::to_snake_case(names(CL_UNIT_MULT))
CL_UNIT_MULT$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_UNIT_MULT$description)), "B", "b")

CL_UNIT_MULT <- CL_UNIT_MULT %>% dplyr::select(.data$id, .data$name, .data$description, .data$name_locale, .data$description_locale)
CL_UNIT_MULT <- as.data.frame(CL_UNIT_MULT)
usethis::use_data(CL_UNIT_MULT, overwrite = TRUE)
