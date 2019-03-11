# ReverseApi

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Reverse**](ReverseApi.md#Reverse) | **GET** /reverse.php | Reverse Geocoding


# **Reverse**
> Location Reverse(lat, lon, format, normalizecity, addressdetails=1, accept.language=var.accept.language, namedetails=var.namedetails, extratags=var.extratags, statecode=var.statecode)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example
```R
library(locationiq)

var.lat <- 17.24 # numeric | Latitude of the location to generate an address for.
var.lon <- 74.25 # numeric | Longitude of the location to generate an address for.
var.format <- '\"json\"' # character | Format to geocode. Only JSON supported for SDKs
var.normalizecity <- 1 # integer | Normalizes village to city level data to city
var.addressdetails <- 1 # integer | Include a breakdown of the address into elements. Defaults to 1.
var.accept.language <- '\"en\"' # character | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
var.namedetails <- 0 # integer | Include a list of alternative names in the results. These may include language variants, references, operator and brand.
var.extratags <- 0 # integer | Include additional information in the result if available, e.g. wikipedia link, opening hours.
var.statecode <- 0 # integer | Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0

#Reverse Geocoding
api.instance <- ReverseApi$new()
# Configure API key authorization: key
api.instance$apiClient$apiKeys['key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Reverse(var.lat, var.lon, var.format, var.normalizecity, addressdetails=var.addressdetails, accept.language=var.accept.language, namedetails=var.namedetails, extratags=var.extratags, statecode=var.statecode)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **numeric**| Latitude of the location to generate an address for. | 
 **lon** | **numeric**| Longitude of the location to generate an address for. | 
 **format** | **character**| Format to geocode. Only JSON supported for SDKs | 
 **normalizecity** | **integer**| Normalizes village to city level data to city | 
 **addressdetails** | **integer**| Include a breakdown of the address into elements. Defaults to 1. | [optional] [default to 1]
 **accept.language** | **character**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **namedetails** | **integer**| Include a list of alternative names in the results. These may include language variants, references, operator and brand. | [optional] 
 **extratags** | **integer**| Include additional information in the result if available, e.g. wikipedia link, opening hours. | [optional] 
 **statecode** | **integer**| Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0 | [optional] 

### Return type

[**Location**](location.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



