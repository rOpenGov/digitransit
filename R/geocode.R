#' Geocode a place name or an address
#'
#' @param string plane name or an address
#' @param hits Number of hits returned
#' @param host Define host, for instance \code{http://localhost:3100} if running docker container locally
#' @return Data frame with latitude and longitude of the place
#' @examples
#' geocode(string = "Eduskuntatalo", hits = 1)


geocode <- function(string = "helsinki", hits = 1, host = "https://api.digitransit.fi/geocoding") {
  string <- gsub(" ", "%20", string)
  resp <- httr::GET(paste0(host,"/v1/search?text=",string,"&size=",hits))
  # print("Hello, world!")
  tmp <- jsonlite::fromJSON(content(resp, "text"), simplifyVector = FALSE)
  dat <- data.frame(string = string,
             lon = tmp[[3]][[1]]$geometry$coordinates[[1]],
             lat = tmp[[3]][[1]]$geometry$coordinates[[2]],
             label = tmp[[3]][[1]]$properties$label)
  return(dat)
}
