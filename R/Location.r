# LocationIQ
#
# LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.
#
# OpenAPI spec version: 1.0.1
# 
# Generated by: https://openapi-generator.tech


#' Location Class
#'
#' @field place_id 
#' @field licence 
#' @field osm_type 
#' @field osm_id 
#' @field boundingbox 
#' @field lat 
#' @field lon 
#' @field display_name 
#' @field class 
#' @field type 
#' @field importance 
#' @field address 
#' @field namedetails 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Location <- R6::R6Class(
  'Location',
  public = list(
    `place_id` = NULL,
    `licence` = NULL,
    `osm_type` = NULL,
    `osm_id` = NULL,
    `boundingbox` = NULL,
    `lat` = NULL,
    `lon` = NULL,
    `display_name` = NULL,
    `class` = NULL,
    `type` = NULL,
    `importance` = NULL,
    `address` = NULL,
    `namedetails` = NULL,
    initialize = function(`place_id`=NULL, `licence`=NULL, `osm_type`=NULL, `osm_id`=NULL, `boundingbox`=NULL, `lat`=NULL, `lon`=NULL, `display_name`=NULL, `class`=NULL, `type`=NULL, `importance`=NULL, `address`=NULL, `namedetails`=NULL, ...){
      local.optional.var <- list(...)
      if (!is.null(`place_id`)) {
        stopifnot(is.character(`place_id`), length(`place_id`) == 1)
        self$`place_id` <- `place_id`
      }
      if (!is.null(`licence`)) {
        stopifnot(is.character(`licence`), length(`licence`) == 1)
        self$`licence` <- `licence`
      }
      if (!is.null(`osm_type`)) {
        stopifnot(is.character(`osm_type`), length(`osm_type`) == 1)
        self$`osm_type` <- `osm_type`
      }
      if (!is.null(`osm_id`)) {
        stopifnot(is.character(`osm_id`), length(`osm_id`) == 1)
        self$`osm_id` <- `osm_id`
      }
      if (!is.null(`boundingbox`)) {
        stopifnot(is.vector(`boundingbox`), length(`boundingbox`) != 0)
        sapply(`boundingbox`, function(x) stopifnot(is.character(x)))
        self$`boundingbox` <- `boundingbox`
      }
      if (!is.null(`lat`)) {
        stopifnot(is.character(`lat`), length(`lat`) == 1)
        self$`lat` <- `lat`
      }
      if (!is.null(`lon`)) {
        stopifnot(is.character(`lon`), length(`lon`) == 1)
        self$`lon` <- `lon`
      }
      if (!is.null(`display_name`)) {
        stopifnot(is.character(`display_name`), length(`display_name`) == 1)
        self$`display_name` <- `display_name`
      }
      if (!is.null(`class`)) {
        stopifnot(is.character(`class`), length(`class`) == 1)
        self$`class` <- `class`
      }
      if (!is.null(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!is.null(`importance`)) {
        self$`importance` <- `importance`
      }
      if (!is.null(`address`)) {
        stopifnot(R6::is.R6(`address`))
        self$`address` <- `address`
      }
      if (!is.null(`namedetails`)) {
        stopifnot(R6::is.R6(`namedetails`))
        self$`namedetails` <- `namedetails`
      }
    },
    toJSON = function() {
      LocationObject <- list()
      if (!is.null(self$`place_id`)) {
        LocationObject[['place_id']] <-
          self$`place_id`
      }
      if (!is.null(self$`licence`)) {
        LocationObject[['licence']] <-
          self$`licence`
      }
      if (!is.null(self$`osm_type`)) {
        LocationObject[['osm_type']] <-
          self$`osm_type`
      }
      if (!is.null(self$`osm_id`)) {
        LocationObject[['osm_id']] <-
          self$`osm_id`
      }
      if (!is.null(self$`boundingbox`)) {
        LocationObject[['boundingbox']] <-
          self$`boundingbox`
      }
      if (!is.null(self$`lat`)) {
        LocationObject[['lat']] <-
          self$`lat`
      }
      if (!is.null(self$`lon`)) {
        LocationObject[['lon']] <-
          self$`lon`
      }
      if (!is.null(self$`display_name`)) {
        LocationObject[['display_name']] <-
          self$`display_name`
      }
      if (!is.null(self$`class`)) {
        LocationObject[['class']] <-
          self$`class`
      }
      if (!is.null(self$`type`)) {
        LocationObject[['type']] <-
          self$`type`
      }
      if (!is.null(self$`importance`)) {
        LocationObject[['importance']] <-
          self$`importance`
      }
      if (!is.null(self$`address`)) {
        LocationObject[['address']] <-
          self$`address`$toJSON()
      }
      if (!is.null(self$`namedetails`)) {
        LocationObject[['namedetails']] <-
          self$`namedetails`$toJSON()
      }

      LocationObject
    },
    fromJSON = function(LocationJson) {
      LocationObject <- jsonlite::fromJSON(LocationJson)
      if (!is.null(LocationObject$`place_id`)) {
        self$`place_id` <- LocationObject$`place_id`
      }
      if (!is.null(LocationObject$`licence`)) {
        self$`licence` <- LocationObject$`licence`
      }
      if (!is.null(LocationObject$`osm_type`)) {
        self$`osm_type` <- LocationObject$`osm_type`
      }
      if (!is.null(LocationObject$`osm_id`)) {
        self$`osm_id` <- LocationObject$`osm_id`
      }
      if (!is.null(LocationObject$`boundingbox`)) {
        self$`boundingbox` <- LocationObject$`boundingbox`
      }
      if (!is.null(LocationObject$`lat`)) {
        self$`lat` <- LocationObject$`lat`
      }
      if (!is.null(LocationObject$`lon`)) {
        self$`lon` <- LocationObject$`lon`
      }
      if (!is.null(LocationObject$`display_name`)) {
        self$`display_name` <- LocationObject$`display_name`
      }
      if (!is.null(LocationObject$`class`)) {
        self$`class` <- LocationObject$`class`
      }
      if (!is.null(LocationObject$`type`)) {
        self$`type` <- LocationObject$`type`
      }
      if (!is.null(LocationObject$`importance`)) {
        self$`importance` <- LocationObject$`importance`
      }
      if (!is.null(LocationObject$`address`)) {
        addressObject <- Address$new()
        addressObject$fromJSON(jsonlite::toJSON(LocationObject$address, auto_unbox = TRUE))
        self$`address` <- addressObject
      }
      if (!is.null(LocationObject$`namedetails`)) {
        namedetailsObject <- Namedetails$new()
        namedetailsObject$fromJSON(jsonlite::toJSON(LocationObject$namedetails, auto_unbox = TRUE))
        self$`namedetails` <- namedetailsObject
      }
    },
    toJSONString = function() {
      sprintf(
        '{
           "place_id":
             "%s",
           "licence":
             "%s",
           "osm_type":
             "%s",
           "osm_id":
             "%s",
           "boundingbox":
             [%s],
           "lat":
             "%s",
           "lon":
             "%s",
           "display_name":
             "%s",
           "class":
             "%s",
           "type":
             "%s",
           "importance":
             %d,
           "address":
             %s,
           "namedetails":
             %s
        }',
        self$`place_id`,
        self$`licence`,
        self$`osm_type`,
        self$`osm_id`,
        paste(unlist(lapply(self$`boundingbox`, function(x) paste0('"', x, '"'))), collapse=","),
        self$`lat`,
        self$`lon`,
        self$`display_name`,
        self$`class`,
        self$`type`,
        self$`importance`,
        jsonlite::toJSON(self$`address`$toJSON(), auto_unbox=TRUE),
        jsonlite::toJSON(self$`namedetails`$toJSON(), auto_unbox=TRUE)
      )
    },
    fromJSONString = function(LocationJson) {
      LocationObject <- jsonlite::fromJSON(LocationJson)
      self$`place_id` <- LocationObject$`place_id`
      self$`licence` <- LocationObject$`licence`
      self$`osm_type` <- LocationObject$`osm_type`
      self$`osm_id` <- LocationObject$`osm_id`
      self$`boundingbox` <- lapply(LocationObject$`boundingbox`, function (x) x)
      self$`lat` <- LocationObject$`lat`
      self$`lon` <- LocationObject$`lon`
      self$`display_name` <- LocationObject$`display_name`
      self$`class` <- LocationObject$`class`
      self$`type` <- LocationObject$`type`
      self$`importance` <- LocationObject$`importance`
      self$`address` <- Address$new()$fromJSON(jsonlite::toJSON(LocationObject$address, auto_unbox = TRUE))
      self$`namedetails` <- Namedetails$new()$fromJSON(jsonlite::toJSON(LocationObject$namedetails, auto_unbox = TRUE))
      self
    }
  )
)
