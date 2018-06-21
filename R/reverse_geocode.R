#' Reverse geocode a geographical location
#'
#' @param lon longitute
#' @param lat A latitude
#' @param hits Number of hits returned
#' @return Data frame with information about the point
#' @examples
#' reverse_geocode(lon = "24.95126", lat = "60.15948", hits = 1)

reverse_geocode <- function(lon = "24.95126", lat = "60.15948", hits = 1) {
  resp <- httr::GET(paste0("https://api.digitransit.fi/geocoding/v1/reverse?point.lat=",lat,"&point.lon=",lon,"&size=",hits))
  # print("Hello, world!")
  tmp <- jsonlite::fromJSON(content(resp, "text"), simplifyVector = FALSE)
  dat <- data.frame(lon = lon,
                    lat = lat,
             country = tmp[[3]][[1]]$properties$country,
             country_a = tmp[[3]][[1]]$properties$country_a,
             region = tmp[[3]][[1]]$properties$region,
             localadmin = tmp[[3]][[1]]$properties$localadmin,
             locality = tmp[[3]][[1]]$properties$locality,
             label = tmp[[3]][[1]]$properties$label)
  return(dat)
}
