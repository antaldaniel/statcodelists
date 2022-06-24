## code to prepare `CL_TIME_PER_COLLECT` dataset goes here
temp_excel_file <- file.path(tempdir(), "CL_TIME_PER_COLLECT.xlsx")

download.file(url = '	https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_TIME_PER_COLLECT/1.0?format=xlsx&detail=full&references=none&saveAS=CL_TIME_PER_COLLECT.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_TIME_PER_COLLECT <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_TIME_PER_COLLECT) <- snakecase::to_snake_case(names(CL_TIME_PER_COLLECT))
CL_TIME_PER_COLLECT$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_TIME_PER_COLLECT$description)), "B", "b")

CL_TIME_PER_COLLECT <- CL_TIME_PER_COLLECT %>% dplyr::select(.data$id, .data$name, .data$description, .data$name_locale, .data$description_locale)
CL_TIME_PER_COLLECT <- as.data.frame(CL_TIME_PER_COLLECT)
usethis::use_data(CL_TIME_PER_COLLECT, overwrite = TRUE)
