# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test SearchApi")

api.instance <- SearchApi$new()

test_that("Search", {
  # tests for Search
  # base path: https://eu1.locationiq.com/v1
  # Forward Geocoding
  # The Search API allows converting addresses, such as a street address, into geographic coordinates (latitude and longitude). These coordinates can serve various use-cases, from placing markers on a map to helping algorithms determine nearby bus stops. This process is also known as Forward Geocoding.
  # @param character  q  Address to geocode 
  # @param character  format  Format to geocode. Only JSON supported for SDKs 
  # @param integer  normalizecity  For responses with no city value in the address section, the next available element in this order - city_district, locality, town, borough, municipality, village, hamlet, quarter, neighbourhood - from the address section will be normalized to city. Defaults to 1 for SDKs. 
  # @param integer  addressdetails  Include a breakdown of the address into elements. Defaults to 0.  (optional)
  # @param character  viewbox  The preferred area to find search results.  To restrict results to those within the viewbox, use along with the bounded option. Tuple of 4 floats. Any two corner points of the box - `max_lon,max_lat,min_lon,min_lat` or `min_lon,min_lat,max_lon,max_lat` - are accepted in any order as long as they span a real box.   (optional)
  # @param integer  bounded  Restrict the results to only items contained with the viewbox  (optional)
  # @param integer  limit  Limit the number of returned results. Default is 10.  (optional)
  # @param character  accept.language  Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native  (optional)
  # @param character  countrycodes  Limit search to a list of countries.  (optional)
  # @param integer  namedetails  Include a list of alternative names in the results. These may include language variants, references, operator and brand.  (optional)
  # @param integer  dedupe  Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split in many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match; this is controlled by the dedupe parameter which defaults to 1. Since the limit is, for reasons of efficiency, enforced before and not after de-duplicating, it is possible that de-duplicating leaves you with less results than requested.  (optional)
  # @param integer  extratags  Include additional information in the result if available, e.g. wikipedia link, opening hours.  (optional)
  # @param integer  statecode  Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0  (optional)
  # @param integer  matchquality  Returns additional information about quality of the result in a matchquality object. Read more Defaults to 0 [0,1]  (optional)
  # @param integer  postaladdress  Returns address inside the postaladdress key, that is specifically formatted for each country. Currently supported for addresses in Germany. Defaults to 0 [0,1]  (optional)
  # @return [array[Location]]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

