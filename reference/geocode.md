# Geocode a place name or an address

Geocode a place name or an address

## Usage

``` r
geocode(
  string = "helsinki",
  hits = 1,
  host = "https://api.digitransit.fi/geocoding"
)
```

## Arguments

- string:

  plane name or an address

- hits:

  Number of hits returned

- host:

  Define host, for instance `http://localhost:3100` if running docker
  container locally

## Value

Data frame with latitude and longitude of the place

## Examples

``` r
geocode(string = "Eduskuntatalo", hits = 1)
#> No encoding supplied: defaulting to UTF-8.
#> Error in tmp[[3]]: subscript out of bounds
```
