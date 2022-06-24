## code to prepare `CL_DECIMALS` dataset goes here
temp_excel_file <- file.path(tempdir(), "CL_DECIMALS.xlsx")

download.file(url = 'https://registry.sdmx.org/ws/public/sdmxapi/rest/codelist/SDMX/CL_DECIMALS/1.0?format=xlsx&detail=full&references=none&saveAS=CL_DECIMALS.xlsx',
              destfile = temp_excel_file, method = 'curl')

tmp <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)

CL_DECIMALS <- readxl::read_excel(temp_excel_file, sheet = 1, skip = 11)
names(CL_DECIMALS) <- snakecase::to_snake_case(names(CL_DECIMALS))
CL_DECIMALS$description <- stringr::str_replace(gsub("\\s+", " ", stringr::str_trim(CL_DECIMALS$description)), "B", "b")

CL_DECIMALS <- CL_DECIMALS %>%
  dplyr::select(.data$id, .data$name, .data$description,
                .data$name_locale, .data$description_locale)
CL_DECIMALS <- as.data.frame(CL_DECIMALS)
usethis::use_data(CL_DECIMALS, overwrite = TRUE)
