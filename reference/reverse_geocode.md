# Reverse geocode a geographical location

Reverse geocode a geographical location

## Usage

``` r
reverse_geocode(
  lon = "24.95126",
  lat = "60.15948",
  hits = 1,
  host = "https://api.digitransit.fi/geocoding"
)
```

## Arguments

- lon:

  longitute

- lat:

  A latitude

- hits:

  Number of hits returned

- host:

  Define host, for instance `http://localhost:3100` if running docker
  container locally

## Value

Data frame with information about the point

## Examples

``` r
reverse_geocode(lon = "24.95126", lat = "60.15948", hits = 1)
#> No encoding supplied: defaulting to UTF-8.
#> Error in tmp[[3]]: subscript out of bounds
```
