#' @title Get a codelist
#' @return A codelist in a data frame.
#' @param codelist The abbreviation of the codelist.
#' @param var_name The name of the \code{id} identifier variable that is coded.
#' @example get_codelist("CL_OBS_STATUS")
#' @export

get_codelist <- function( codelist = "CL_FREQ", var_name = "id") {

 get(toupper(codelist))

  if (var_name != "id") {
    names(CL_FREQ)[1] <- var_name
    CL_FREQ
  } else {
    CL_FREQ
  }
}



