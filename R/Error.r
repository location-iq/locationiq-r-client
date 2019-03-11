# LocationIQ
#
# LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.
#
# OpenAPI spec version: 1.0.1
# 
# Generated by: https://openapi-generator.tech


#' Error Class
#'
#' @field error 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Error <- R6::R6Class(
  'Error',
  public = list(
    `error` = NULL,
    initialize = function(`error`=NULL, ...){
      local.optional.var <- list(...)
      if (!is.null(`error`)) {
        stopifnot(is.character(`error`), length(`error`) == 1)
        self$`error` <- `error`
      }
    },
    toJSON = function() {
      ErrorObject <- list()
      if (!is.null(self$`error`)) {
        ErrorObject[['error']] <-
          self$`error`
      }

      ErrorObject
    },
    fromJSON = function(ErrorJson) {
      ErrorObject <- jsonlite::fromJSON(ErrorJson)
      if (!is.null(ErrorObject$`error`)) {
        self$`error` <- ErrorObject$`error`
      }
    },
    toJSONString = function() {
      sprintf(
        '{
           "error":
             "%s"
        }',
        self$`error`
      )
    },
    fromJSONString = function(ErrorJson) {
      ErrorObject <- jsonlite::fromJSON(ErrorJson)
      self$`error` <- ErrorObject$`error`
      self
    }
  )
)
