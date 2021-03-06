# LocationIQ
#
# LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.
#
# The version of the OpenAPI document: 1.1.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Matchquality
#' @description Matchquality Class
#' @format An \code{R6Class} generator object
#' @field matchcode  character [optional]
#'
#' @field matchtype  character [optional]
#'
#' @field matchlevel  character [optional]
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Matchquality <- R6::R6Class(
  'Matchquality',
  public = list(
    `matchcode` = NULL,
    `matchtype` = NULL,
    `matchlevel` = NULL,
    initialize = function(`matchcode`=NULL, `matchtype`=NULL, `matchlevel`=NULL, ...){
      local.optional.var <- list(...)
      if (!is.null(`matchcode`)) {
        stopifnot(is.character(`matchcode`), length(`matchcode`) == 1)
        self$`matchcode` <- `matchcode`
      }
      if (!is.null(`matchtype`)) {
        stopifnot(is.character(`matchtype`), length(`matchtype`) == 1)
        self$`matchtype` <- `matchtype`
      }
      if (!is.null(`matchlevel`)) {
        stopifnot(is.character(`matchlevel`), length(`matchlevel`) == 1)
        self$`matchlevel` <- `matchlevel`
      }
    },
    toJSON = function() {
      MatchqualityObject <- list()
      if (!is.null(self$`matchcode`)) {
        MatchqualityObject[['matchcode']] <-
          self$`matchcode`
      }
      if (!is.null(self$`matchtype`)) {
        MatchqualityObject[['matchtype']] <-
          self$`matchtype`
      }
      if (!is.null(self$`matchlevel`)) {
        MatchqualityObject[['matchlevel']] <-
          self$`matchlevel`
      }

      MatchqualityObject
    },
    fromJSON = function(MatchqualityJson) {
      MatchqualityObject <- jsonlite::fromJSON(MatchqualityJson)
      if (!is.null(MatchqualityObject$`matchcode`)) {
        self$`matchcode` <- MatchqualityObject$`matchcode`
      }
      if (!is.null(MatchqualityObject$`matchtype`)) {
        self$`matchtype` <- MatchqualityObject$`matchtype`
      }
      if (!is.null(MatchqualityObject$`matchlevel`)) {
        self$`matchlevel` <- MatchqualityObject$`matchlevel`
      }
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`matchcode`)) {
        sprintf(
        '"matchcode":
          "%s"
                ',
        self$`matchcode`
        )},
        if (!is.null(self$`matchtype`)) {
        sprintf(
        '"matchtype":
          "%s"
                ',
        self$`matchtype`
        )},
        if (!is.null(self$`matchlevel`)) {
        sprintf(
        '"matchlevel":
          "%s"
                ',
        self$`matchlevel`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(MatchqualityJson) {
      MatchqualityObject <- jsonlite::fromJSON(MatchqualityJson)
      self$`matchcode` <- MatchqualityObject$`matchcode`
      self$`matchtype` <- MatchqualityObject$`matchtype`
      self$`matchlevel` <- MatchqualityObject$`matchlevel`
      self
    }
  )
)
