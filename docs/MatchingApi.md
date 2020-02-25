# MatchingApi

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Matching**](MatchingApi.md#Matching) | **GET** /matching/driving/{coordinates} | Matching Service


# **Matching**
> DirectionsMatching Matching(coordinates, generate.hints=var.generate.hints, approaches=var.approaches, exclude=var.exclude, bearings=var.bearings, radiuses=var.radiuses, steps=var.steps, annotations='"false"', geometries='"polyline"', overview='"simplified"', timestamps=var.timestamps, gaps='"split"', tidy='"false"', waypoints=var.waypoints)

Matching Service

Matching API matches or snaps given GPS points to the road network in the most plausible way.  Please note the request might result multiple sub-traces.  Large jumps in the timestamps (> 60s) or improbable transitions lead to trace splits if a complete matching could not be found. The algorithm might not be able to match all points. Outliers are removed if they can not be matched successfully.

### Example
```R
library(locationiq)

var.coordinates <- '-0.16102,51.523854;-0.15797,51.52326;-0.161593,51.522550' # character | String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google's polyline format with precision 5
var.generate.hints <- 'false' # character | Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String
var.approaches <- 'curb;curb;curb' # character | Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default)
var.exclude <- 'toll' # character | Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none.
var.bearings <- 'None' # character | Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180
var.radiuses <- 'None' # character | Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double >= 0 or unlimited (default)
var.steps <- 'true' # character | Returned route steps for each route leg [ true, false (default) ]
var.annotations <- 'false' # character | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ]
var.geometries <- 'polyline' # character | Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ]
var.overview <- 'simplified' # character | Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ]
var.timestamps <- '200;300;900' # character | Timestamps for the input locations in seconds since UNIX epoch. Timestamps need to be monotonically increasing. [ {timestamp};{timestamp}[;{timestamp} ...]  integer seconds since UNIX epoch
var.gaps <- 'split' # character | Allows the input track splitting based on huge timestamp gaps between points. [ split (default), ignore ]
var.tidy <- 'false' # character | Allows the input track modification to obtain better matching quality for noisy tracks. [ true, false (default) ]
var.waypoints <- '0;1;2' # character | Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints. [ {index};{index};{index}... ]

#Matching Service
api.instance <- MatchingApi$new()
# Configure API key authorization: key
api.instance$apiClient$apiKeys['key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Matching(var.coordinates, generate.hints=var.generate.hints, approaches=var.approaches, exclude=var.exclude, bearings=var.bearings, radiuses=var.radiuses, steps=var.steps, annotations=var.annotations, geometries=var.geometries, overview=var.overview, timestamps=var.timestamps, gaps=var.gaps, tidy=var.tidy, waypoints=var.waypoints)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coordinates** | **character**| String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google&#39;s polyline format with precision 5 | 
 **generate.hints** | **character**| Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String | [optional] 
 **approaches** | **character**| Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default) | [optional] 
 **exclude** | **character**| Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none. | [optional] 
 **bearings** | **character**| Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180 | [optional] 
 **radiuses** | **character**| Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double &gt;&#x3D; 0 or unlimited (default) | [optional] 
 **steps** | **character**| Returned route steps for each route leg [ true, false (default) ] | [optional] 
 **annotations** | **character**| Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ] | [optional] [default to &#39;&quot;false&quot;&#39;]
 **geometries** | **character**| Returned route geometry format (influences overview and per step) [ polyline (default), polyline6, geojson ] | [optional] [default to &#39;&quot;polyline&quot;&#39;]
 **overview** | **character**| Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. [ simplified (default), full, false ] | [optional] [default to &#39;&quot;simplified&quot;&#39;]
 **timestamps** | **character**| Timestamps for the input locations in seconds since UNIX epoch. Timestamps need to be monotonically increasing. [ {timestamp};{timestamp}[;{timestamp} ...]  integer seconds since UNIX epoch | [optional] 
 **gaps** | **character**| Allows the input track splitting based on huge timestamp gaps between points. [ split (default), ignore ] | [optional] [default to &#39;&quot;split&quot;&#39;]
 **tidy** | **character**| Allows the input track modification to obtain better matching quality for noisy tracks. [ true, false (default) ] | [optional] [default to &#39;&quot;false&quot;&#39;]
 **waypoints** | **character**| Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints. [ {index};{index};{index}... ] | [optional] 

### Return type

[**DirectionsMatching**](directions-matching.md)

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

