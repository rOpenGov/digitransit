#' Geocode a place name or an address
#'
#' @param string plane name or an address
#' @param hits Number of hits returned
#' @return Data frame with latitude and longitude of the place
#' @examples
#' geocode(string = "Eduskuntatalo", hits = 1)


geocode <- function(string = "helsinki", hits = 1) {
  string <- gsub(" ", "%20", string)
  resp <- httr::GET(paste0("https://api.digitransit.fi/geocoding/v1/search?text=",string,"&size=",hits))
  # print("Hello, world!")
  tmp <- jsonlite::fromJSON(content(resp, "text"), simplifyVector = FALSE)
  dat <- data.frame(string = string,
             lon = tmp[[3]][[1]]$geometry$coordinates[[1]],
             lat = tmp[[3]][[1]]$geometry$coordinates[[2]],
             label = tmp[[3]][[1]]$properties$label)
  return(dat)
}
