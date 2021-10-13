# digitransit <a href='https://ropengov.github.io/digitransit/'><img src='man/figures/logo.png' align="right" height="139" /></a>

<!-- badges: start -->

[![rOG-badge](https://ropengov.github.io/rogtemplate/reference/figures/ropengov-badge.svg)](http://ropengov.org/)
[![R build
status](https://github.com/rOpenGov/digitransit/workflows/R-CMD-check/badge.svg)](https://github.com/rOpenGov/digitransit/actions)
<!-- badges: end -->

## R client for digitransit.fi API

API documentation: https://digitransit.fi/en/developers/apis/2-geocoding-api/


Install

```r
remotes::install_git("https://github.com/ropengov/digitransit")
```

Use

```r
digitransit::geocode("Eduskuntatalo")
#   string      lon     lat                                       label
# 1 Eduskuntatalo 24.93315 60.1725 Eduskuntatalo, Mannerheimintie 30, Helsinki
```


```r
digitransit::reverse_geocode(lon = 24.93315, lat = 60.1725)
# lon     lat country country_a  region localadmin locality                        label
# 1 24.93315 60.1725   Suomi       FIN Uusimaa   Helsinki Helsinki Mannerheimintie 30, Helsinki

```

- (C) Markus Kainu 2018
- License: MIT

