# LocationIQ
#
# LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.
#
# The version of the OpenAPI document: 1.1.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Matrix operations
#' @description locationiq.Matrix
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ Matrix } \emph{ Matrix Service }
#' Computes duration of the fastest route between all pairs of supplied coordinates. Returns the durations or distances or both between the coordinate pairs. Note that the distances are not the shortest distance between two coordinates, but rather the distances of the fastest routes.
#'
#' \itemize{
#' \item \emph{ @param } coordinates character
#' \item \emph{ @param } bearings character
#' \item \emph{ @param } radiuses character
#' \item \emph{ @param } generate.hints character
#' \item \emph{ @param } approaches character
#' \item \emph{ @param } exclude character
#' \item \emph{ @param } annotations character
#' \item \emph{ @param } sources integer
#' \item \emph{ @param } destinations integer
#' \item \emph{ @param } fallback.speed numeric
#' \item \emph{ @param } fallback.coordinate character
#' \item \emph{ @returnType } \link{DirectionsMatrix} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : DirectionsMatrix 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Bad Request
#'
#' \item return type : Error 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 401 | Unauthorized
#'
#' \item return type : Error 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 403 | The request has been made from an unauthorized domain.
#'
#' \item return type : Error 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 404 | No location or places were found for the given input
#'
#' \item return type : Error 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 429 | Request exceeded the rate-limits set on your account
#'
#' \item return type : Error 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 500 | Internal Server Error
#'
#' \item return type : Error 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \donttest{
#' ####################  Matrix  ####################
#'
#' library(locationiq)
#' var.coordinates <- '-0.16102,51.523854;-0.15797,51.52326;-0.161593,51.522550' # character | String of format {longitude},{latitude};{longitude},{latitude}[;{longitude},{latitude} ...] or polyline({polyline}) or polyline6({polyline6}). polyline follows Google's polyline format with precision 5
#' var.bearings <- '10,20;40,30;30,9' # character | Limits the search to segments with given bearing in degrees towards true north in clockwise direction. List of positive integer pairs separated by semi-colon and bearings array should be equal to length of coordinate array. Input Value :- {bearing};{bearing}[;{bearing} ...] Bearing follows the following format : bearing {value},{range} integer 0 .. 360,integer 0 .. 180
#' var.radiuses <- '500;200;300' # character | Limits the search to given radius in meters Radiuses array length should be same as coordinates array, eaach value separated by semi-colon. Input Value - {radius};{radius}[;{radius} ...] Radius has following format :- double >= 0 or unlimited (default)
#' var.generate.hints <- 'false' # character | Adds a Hint to the response which can be used in subsequent requests, see hints parameter. Input Value - true (default), false Format - Base64 String
#' var.approaches <- 'curb;curb;curb' # character | Keep waypoints on curb side. Input Value - {approach};{approach}[;{approach} ...] Format - curb or unrestricted (default)
#' var.exclude <- 'toll' # character | Additive list of classes to avoid, order does not matter. input Value - {class}[,{class}] Format - A class name determined by the profile or none.
#' var.annotations <- 'distance' # character | Returns additional metadata for each coordinate along the route geometry.  [ true, false (default), nodes, distance, duration, datasources, weight, speed ]
#' var.sources <- 0 # integer | Use location with given index as source. [ {index};{index}[;{index} ...] or all (default) ] => index  0 <= integer < #locations
#' var.destinations <- 2 # integer | Use location with given index as destination. [ {index};{index}[;{index} ...] or all (default) ]
#' var.fallback.speed <- 25.65 # numeric | If no route found between a source/destination pair, calculate the as-the-crow-flies distance,  then use this speed to estimate duration. double > 0
#' var.fallback.coordinate <- 'input' # character | When using a fallback_speed, use the user-supplied coordinate (input), or the snapped location (snapped) for calculating distances. [ input (default), or snapped ]
#'
#' #Matrix Service
#' api.instance <- MatrixApi$new()
#'
#' #Configure API key authorization: key
#' api.instance$apiClient$apiKeys['key'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$Matrix(var.coordinates, bearings=var.bearings, radiuses=var.radiuses, generate.hints=var.generate.hints, approaches=var.approaches, exclude=var.exclude, annotations=var.annotations, sources=var.sources, destinations=var.destinations, fallback.speed=var.fallback.speed, fallback.coordinate=var.fallback.coordinate)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom caTools base64encode
#' @export
MatrixApi <- R6::R6Class(
  'MatrixApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    Matrix = function(coordinates, bearings=NULL, radiuses=NULL, generate.hints=NULL, approaches=NULL, exclude=NULL, annotations=NULL, sources=NULL, destinations=NULL, fallback.speed=NULL, fallback.coordinate='"input"', ...){
      apiResponse <- self$MatrixWithHttpInfo(coordinates, bearings, radiuses, generate.hints, approaches, exclude, annotations, sources, destinations, fallback.speed, fallback.coordinate, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    MatrixWithHttpInfo = function(coordinates, bearings=NULL, radiuses=NULL, generate.hints=NULL, approaches=NULL, exclude=NULL, annotations=NULL, sources=NULL, destinations=NULL, fallback.speed=NULL, fallback.coordinate='"input"', ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`coordinates`)) {
        stop("Missing required parameter `coordinates`.")
      }

      queryParams['bearings'] <- bearings

      queryParams['radiuses'] <- radiuses

      queryParams['generate_hints'] <- generate.hints

      queryParams['approaches'] <- approaches

      queryParams['exclude'] <- exclude

      queryParams['annotations'] <- annotations

      queryParams['sources'] <- sources

      queryParams['destinations'] <- destinations

      queryParams['fallback_speed'] <- fallback.speed

      queryParams['fallback_coordinate'] <- fallback.coordinate

      urlPath <- "/matrix/driving/{coordinates}"
      if (!missing(`coordinates`)) {
        urlPath <- gsub(paste0("\\{", "coordinates", "\\}"), URLencode(as.character(`coordinates`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("key" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["key"]) > 0) {
        queryParams['key'] <- paste(unlist(self$apiClient$apiKeys["key"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "DirectionsMatrix", loadNamespace("locationiq")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)
