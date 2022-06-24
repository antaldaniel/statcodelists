## code to prepare `CL_AREA` dataset goes here
temp_excel_file <- file.path(tempdir(), "CL_AREA.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_AREA/2.0?format=xlsx&detail=full&references=none&saveAS=CL_AREA.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_AREA <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_AREA) <- snakecase::to_snake_case(names(CL_AREA))
CL_AREA$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_AREA$description)), "B", "b")

CL_AREA <- CL_AREA %>% dplyr::select(.data$id, .data$name, .data$description, .data$name_locale, .data$description_locale)
CL_AREA <- as.data.frame(CL_AREA)
usethis::use_data(CL_AREA, overwrite = TRUE)
