# BalanceApi

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Balance**](BalanceApi.md#Balance) | **GET** /balance.php | 


# **Balance**
> Balance Balance()



The Balance API provides a count of request credits left in the user's account for the day. Balance is reset at midnight UTC everyday (00:00 UTC).

### Example
```R
library(openapi)


api.instance <- BalanceApi$new()
# Configure API key authorization: key
api.instance$apiClient$apiKeys['key'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Balance()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Balance**](balance.md)

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

