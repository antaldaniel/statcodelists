## code to prepare `CL_TIMETRANS` dataset goes here
temp_excel_file <- file.path(tempdir(), "CL_TIMETRANS.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_TIMETRANS/1.0?format=xlsx&detail=full&references=none&saveAS=CL_TIMETRANS.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_TIMETRANS <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_TIMETRANS) <- snakecase::to_snake_case(names(CL_TIMETRANS))
CL_TIMETRANS$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_TIMETRANS$description)), "B", "b")

CL_TIMETRANS <- CL_TIMETRANS %>% dplyr::select(.data$id, .data$name, .data$description, .data$name_locale, .data$description_locale)
CL_TIMETRANS <- as.data.frame(CL_TIMETRANS)
usethis::use_data(CL_TIMETRANS, overwrite = TRUE)
