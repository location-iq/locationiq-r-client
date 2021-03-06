# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test ReverseApi")

api.instance <- ReverseApi$new()

test_that("Reverse", {
  # tests for Reverse
  # base path: https://eu1.locationiq.com/v1
  # Reverse Geocoding
  # Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.
  # @param numeric  lat  Latitude of the location to generate an address for. 
  # @param numeric  lon  Longitude of the location to generate an address for. 
  # @param character  format  Format to geocode. Only JSON supported for SDKs 
  # @param integer  normalizecity  Normalizes village to city level data to city 
  # @param integer  addressdetails  Include a breakdown of the address into elements. Defaults to 1.  (optional)
  # @param character  accept.language  Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native  (optional)
  # @param integer  namedetails  Include a list of alternative names in the results. These may include language variants, references, operator and brand.  (optional)
  # @param integer  extratags  Include additional information in the result if available, e.g. wikipedia link, opening hours.  (optional)
  # @param integer  statecode  Adds state or province code when available to the statecode key inside the address element. Currently supported for addresses in the USA, Canada and Australia. Defaults to 0  (optional)
  # @param integer  showdistance  Returns the straight line distance (meters) between the input location and the result's location. Value is set in the distance key of the response. Defaults to 0 [0,1]  (optional)
  # @param integer  postaladdress  Returns address inside the postaladdress key, that is specifically formatted for each country. Currently supported for addresses in Germany. Defaults to 0 [0,1]  (optional)
  # @return [Location]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

