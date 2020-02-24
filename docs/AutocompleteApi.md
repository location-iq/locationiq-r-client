# AutocompleteApi

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Autocomplete**](AutocompleteApi.md#Autocomplete) | **GET** /autocomplete.php | 


# **Autocomplete**
> array[object] Autocomplete(q, normalizecity, limit=10, viewbox=var.viewbox, bounded=var.bounded, countrycodes=var.countrycodes, accept.language=var.accept.language, tag=var.tag)



The Autocomplete API is a variant of the Search API that returns place predictions in response to an HTTP request.  The request specifies a textual search string and optional geographic bounds.  The service can be used to provide autocomplete functionality for text-based geographic searches, by returning places such as businesses, addresses and points of interest as a user types. The Autocomplete API can match on full words as well as substrings. Applications can therefore send queries as the user types, to provide on-the-fly place predictions.

### Example
```R
library(locationiq)

var.q <- '\"Empire state\"' # character | Address to geocode
var.normalizecity <- 1 # integer | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs.
var.limit <- 10 # integer | Limit the number of returned results. Default is 10.
var.viewbox <- '\"-132.84908,47.69382,-70.44674,30.82531\"' # character | The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box. 
var.bounded <- 1 # integer | Restrict the results to only items contained with the viewbox
var.countrycodes <- '\"us\"' # character | Limit search to a list of countries.
var.accept.language <- '\"en\"' # character | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
var.tag <- '\"place\"' # character | Restricts the autocomplete search results to elements of specific OSM class and type.  Example - To restrict results to only class place and type city: tag=place:city, To restrict the results to all of OSM class place: tag=place

api.instance <- AutocompleteApi$new()
# Configure API key authorization: key
api.instance$apiClient$apiKeys['key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Autocomplete(var.q, var.normalizecity, limit=var.limit, viewbox=var.viewbox, bounded=var.bounded, countrycodes=var.countrycodes, accept.language=var.accept.language, tag=var.tag)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| Address to geocode | 
 **normalizecity** | Enum [1] | For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. | 
 **limit** | **integer**| Limit the number of returned results. Default is 10. | [optional] [default to 10]
 **viewbox** | **character**| The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - &#x60;max_lon,max_lat,min_lon,min_lat&#x60; or &#x60;min_lon,min_lat,max_lon,max_lat&#x60; - are accepted in any order as long as they span a real box.  | [optional] 
 **bounded** | Enum [0, 1] | Restrict the results to only items contained with the viewbox | [optional] 
 **countrycodes** | **character**| Limit search to a list of countries. | [optional] 
 **accept.language** | **character**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **tag** | **character**| Restricts the autocomplete search results to elements of specific OSM class and type.  Example - To restrict results to only class place and type city: tag&#x3D;place:city, To restrict the results to all of OSM class place: tag&#x3D;place | [optional] 

### Return type

**array[object]**

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized |  -  |
| **403** | The request has been made from an unauthorized domain. |  -  |
| **404** | No location or places were found for the given input |  -  |
| **429** | Request exceeded the rate-limits set on your account |  -  |
| **500** | Internal Server Error |  -  |

