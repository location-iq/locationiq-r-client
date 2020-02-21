# DirectionsApi

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Directions**](DirectionsApi.md#Directions) | **GET** /directions/driving/{coordinates} | Directions Service


# **Directions**
> DirectionsDirections Directions(coordinates, bearings=var.bearings, radiuses=var.radiuses, generate.hints=var.generate.hints, approaches=var.approaches, exclude=var.exclude, alternatives=var.alternatives, steps=var.steps, annotations='"false"', geometries='"polyline"', overview='"simplified"', continue.straight='"default"')

Directions Service

Finds the fastest route between coordinates in the supplied order.

### Example
```R
library(openapi)

var.coordinates <- '\"-0.16102,51.523854;-0.15797,51.52326;-0.161593,51.522550\"' # character | String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google's polyline format with precision 5
var.bearings <- '\"10,20;40,30;30,9\"' # character | Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180
var.radiuses <- '\"500;200;300\"' # character | Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double >= 0 or unlimited (default)
var.generate.hints <- '\"false\"' # character | Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String
var.approaches <- '\"curb;curb;curb\"' # character | Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default)
var.exclude <- '\"toll\"' # character | Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none.
var.alternatives <- 0 # numeric | Search for alternative routes. Passing a number alternatives=n searches for up to n alternative routes. [ true, false (default), or Number ]
var.steps <- '\"true\"' # character | Returned route steps for each route leg [ true, false (default) ]
var.annotations <- '"false"' # character | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ]
var.geometries <- '"polyline"' # character | Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ]
var.overview <- '"simplified"' # character | Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ]
var.continue.straight <- '"default"' # character | Forces the route to keep going straight at waypoints constraining uturns there even if it would be faster. Default value depends on the profile [ default (default), true, false ]

#Directions Service
api.instance <- DirectionsApi$new()
# Configure API key authorization: key
api.instance$apiClient$apiKeys['key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Directions(var.coordinates, bearings=var.bearings, radiuses=var.radiuses, generate.hints=var.generate.hints, approaches=var.approaches, exclude=var.exclude, alternatives=var.alternatives, steps=var.steps, annotations=var.annotations, geometries=var.geometries, overview=var.overview, continue.straight=var.continue.straight)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coordinates** | **character**| String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5 | 
 **bearings** | **character**| Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 | [optional] 
 **radiuses** | **character**| Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default) | [optional] 
 **generate.hints** | **character**| Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String | [optional] 
 **approaches** | **character**| Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) | [optional] 
 **exclude** | **character**| Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. | [optional] 
 **alternatives** | **numeric**| Search for alternative routes. Passing a number alternatives&#x3D;n searches for up to n alternative routes. [ true, false (default), or Number ] | [optional] 
 **steps** | **character**| Returned route steps for each route leg [ true, false (default) ] | [optional] 
 **annotations** | **character**| Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] | [optional] [default to &#39;&quot;false&quot;&#39;]
 **geometries** | **character**| Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ] | [optional] [default to &#39;&quot;polyline&quot;&#39;]
 **overview** | **character**| Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ] | [optional] [default to &#39;&quot;simplified&quot;&#39;]
 **continue.straight** | **character**| Forces the route to keep going straight at waypoints constraining uturns there even if it would be faster. Default value depends on the profile [ default (default), true, false ] | [optional] [default to &#39;&quot;default&quot;&#39;]

### Return type

[**DirectionsDirections**](directions-directions.md)

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

