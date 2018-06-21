R client for digitransit.fi API
==========================================

API documentation: https://digitransit.fi/en/developers/apis/2-geocoding-api/


Install

```r
devtools::install_git("https://gitlab.com/muuankarski/digitransit")
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

