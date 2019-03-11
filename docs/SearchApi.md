# SearchApi

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Search**](SearchApi.md#Search) | **GET** /search.php | Forward Geocoding


# **Search**
> Location Search(q, format, normalizecity, addressdetails=var.addressdetails, viewbox=var.viewbox, bounded=var.bounded, limit=10, accept.language=var.accept.language, countrycodes=var.countrycodes, namedetails=var.namedetails, dedupe=var.dedupe, extratags=var.extratags, statecode=var.statecode)

Forward Geocoding

The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.

### Example
```R
library(locationiq)

var.q <- '\"Empire state building\"' # character | Address to geocode
var.format <- '\"json\"' # character | Format to geocode. Only JSON supported for SDKs
var.normalizecity <- 1 # integer | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs.
var.addressdetails <- 1 # integer | Include a breakdown of the address into elements. Defaults to 0.
var.viewbox <- '\"-132.84908,47.69382,-70.44674,30.82531\"' # character | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box. 
var.bounded <- 1 # integer | Restrict the results to only items contained with the viewbox
var.limit <- 10 # integer | Limit the number of returned results. Default is 10.
var.accept.language <- '\"en\"' # character | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
var.countrycodes <- '\"us\"' # character | Limit search to a list of countries.
var.namedetails <- 1 # integer | Include a list of alternative names in the results. These may include language variants, references, operator and brand.
var.dedupe <- 1 # integer | Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested.
var.extratags <- 0 # integer | Include additional information in the result if available, e.g. wikipedia link, opening hours.
var.statecode <- 0 # integer | Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0

#Forward Geocoding
api.instance <- SearchApi$new()
# Configure API key authorization: key
api.instance$apiClient$apiKeys['key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Search(var.q, var.format, var.normalizecity, addressdetails=var.addressdetails, viewbox=var.viewbox, bounded=var.bounded, limit=var.limit, accept.language=var.accept.language, countrycodes=var.countrycodes, namedetails=var.namedetails, dedupe=var.dedupe, extratags=var.extratags, statecode=var.statecode)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| Address to geocode | 
 **format** | **character**| Format to geocode. Only JSON supported for SDKs | 
 **normalizecity** | **integer**| For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. | 
 **addressdetails** | **integer**| Include a breakdown of the address into elements. Defaults to 0. | [optional] 
 **viewbox** | **character**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **bounded** | **integer**| Restrict the results to only items contained with the viewbox | [optional] 
 **limit** | **integer**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **accept.language** | **character**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **countrycodes** | **character**| Limit search to a list of countries. | [optional] 
 **namedetails** | **integer**| Include a list of alternative names in the results. These may include language variants, references, operator and brand. | [optional] 
 **dedupe** | **integer**| Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested. | [optional] 
 **extratags** | **integer**| Include additional information in the result if available, e.g. wikipedia link, opening hours. | [optional] 
 **statecode** | **integer**| Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0 | [optional] 

### Return type

[**Location**](location.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



