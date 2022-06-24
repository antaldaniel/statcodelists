## code to prepare `CL_TIMETRANS_PER` dataset goes here
temp_excel_file <- file.path(tempdir(), "CL_TIMETRANS_PER.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_TIMETRANS_PER/1.0?format=xlsx&detail=full&references=none&saveAS=CL_TIMETRANS_PER.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_TIMETRANS_PER <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_TIMETRANS_PER) <- snakecase::to_snake_case(names(CL_TIMETRANS_PER))
CL_TIMETRANS_PER$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_TIMETRANS_PER$description)), "B", "b")

CL_TIMETRANS_PER <- CL_TIMETRANS_PER %>% dplyr::select(.data$id, .data$name, .data$description, .data$name_locale, .data$description_locale)
CL_TIMETRANS_PER <- as.data.frame(CL_TIMETRANS_PER)
usethis::use_data(CL_TIMETRANS_PER, overwrite = TRUE)
