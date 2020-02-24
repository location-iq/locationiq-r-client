# R API client for locationiq

LocationIQ provides flexible enterprise-grade location based solutions. We work with developers, startups and enterprises worldwide serving billions of requests everyday. This page provides an overview of the technical aspects of our API and will help you get started.

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 1.1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RClientCodegen

## Installation

### Prerequisites

Install the dependencies

```R
install.packages("jsonlite")
install.packages("httr")
install.packages("caTools")
```

### Build the package

```sh
git clone https://github.com/location-iq/locationiq-r-client
cd locationiq-r-client
R CMD build .
R CMD check locationiq_1.0.0.tar.gz
R CMD INSTALL locationiq_1.0.0.tar.gz
```

### Install the package

```R
install.packages("locationiq")
```

To install directly from Github, use `devtools`:
```R
install.packages("devtools")
library(devtools)
install_github("location-iq/locationiq-r-client")
```

### Usage

```R
library(locationiq)
```

## Documentation for API Endpoints

All URIs are relative to *https://eu1.locationiq.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AutocompleteApi* | [**Autocomplete**](docs/AutocompleteApi.md#Autocomplete) | **GET** /autocomplete.php | 
*BalanceApi* | [**Balance**](docs/BalanceApi.md#Balance) | **GET** /balance.php | 
*DirectionsApi* | [**Directions**](docs/DirectionsApi.md#Directions) | **GET** /directions/driving/{coordinates} | Directions Service
*MatchingApi* | [**Matching**](docs/MatchingApi.md#Matching) | **GET** /matching/driving/{coordinates} | Matching Service
*MatrixApi* | [**Matrix**](docs/MatrixApi.md#Matrix) | **GET** /matrix/driving/{coordinates} | Matrix Service
*NearestApi* | [**Nearest**](docs/NearestApi.md#Nearest) | **GET** /nearest/driving/{coordinates} | Nearest Service
*ReverseApi* | [**Reverse**](docs/ReverseApi.md#Reverse) | **GET** /reverse.php | Reverse Geocoding
*SearchApi* | [**Search**](docs/SearchApi.md#Search) | **GET** /search.php | Forward Geocoding


## Documentation for Models

 - [Address](docs/Address.md)
 - [Balance](docs/Balance.md)
 - [Daybalance](docs/Daybalance.md)
 - [DirectionsDirections](docs/DirectionsDirections.md)
 - [DirectionsDirectionsRoutes](docs/DirectionsDirectionsRoutes.md)
 - [DirectionsMatching](docs/DirectionsMatching.md)
 - [DirectionsMatrix](docs/DirectionsMatrix.md)
 - [DirectionsMatrixSources](docs/DirectionsMatrixSources.md)
 - [DirectionsNearest](docs/DirectionsNearest.md)
 - [DirectionsNearestWaypoints](docs/DirectionsNearestWaypoints.md)
 - [Error](docs/Error.md)
 - [Location](docs/Location.md)
 - [Matchquality](docs/Matchquality.md)
 - [Namedetails](docs/Namedetails.md)


## Documentation for Authorization


### key

- **Type**: API key
- **API key parameter name**: key
- **Location**: URL query string



## Author



