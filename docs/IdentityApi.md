# Phyllo::IdentityApi

All URIs are relative to *https://api.sandbox.getphyllo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_get_audience_demographics**](IdentityApi.md#v1_get_audience_demographics) | **GET** /v1/audience | Retrieve audience demographics |
| [**v1_refresh_profile**](IdentityApi.md#v1_refresh_profile) | **POST** /v1/profiles/refresh | Refresh a profile |
| [**v1_stream_get_profile_by_id**](IdentityApi.md#v1_stream_get_profile_by_id) | **GET** /v1/profiles/{id} | Retrieve a profile |
| [**v1_stream_get_profiles**](IdentityApi.md#v1_stream_get_profiles) | **GET** /v1/profiles | Retrieve all profiles |


## v1_get_audience_demographics

> <V1GetAudienceDemographics200Response> v1_get_audience_demographics(account_id)

Retrieve audience demographics

Retrieves audience demographics for the given account. Demographics object contains information related to the audience of the user: countries, cities, age & gender distribution, etc. The values in this data are in percentages and are tied to a particular work platform account. This data is lifetime data.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IdentityApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.

begin
  # Retrieve audience demographics
  result = api_instance.v1_get_audience_demographics(account_id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IdentityApi->v1_get_audience_demographics: #{e}"
end
```

#### Using the v1_get_audience_demographics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<V1GetAudienceDemographics200Response>, Integer, Hash)> v1_get_audience_demographics_with_http_info(account_id)

```ruby
begin
  # Retrieve audience demographics
  data, status_code, headers = api_instance.v1_get_audience_demographics_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <V1GetAudienceDemographics200Response>
rescue Phyllo::ApiError => e
  puts "Error when calling IdentityApi->v1_get_audience_demographics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the connected account. |  |

### Return type

[**V1GetAudienceDemographics200Response**](V1GetAudienceDemographics200Response.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_refresh_profile

> <Refresh1> v1_refresh_profile(opts)

Refresh a profile

Refresh profile for a connected account. Once Phyllo processes the request, you can fetch the updated profile by calling the [retrieve a profile API](../reference/openapi.v1.yml/paths/~1v1~1profiles~1{id}/get).   Subscribe to the \"PROFILES.UPDATED\" webhook to receive a notification once the request is completed.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IdentityApi.new
opts = {
  refresh1: Phyllo::Refresh1.new({account_id: 'account_id_example'}) # Refresh1 | 
}

begin
  # Refresh a profile
  result = api_instance.v1_refresh_profile(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IdentityApi->v1_refresh_profile: #{e}"
end
```

#### Using the v1_refresh_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refresh1>, Integer, Hash)> v1_refresh_profile_with_http_info(opts)

```ruby
begin
  # Refresh a profile
  data, status_code, headers = api_instance.v1_refresh_profile_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refresh1>
rescue Phyllo::ApiError => e
  puts "Error when calling IdentityApi->v1_refresh_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh1** | [**Refresh1**](Refresh1.md) |  | [optional] |

### Return type

[**Refresh1**](Refresh1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json


## v1_stream_get_profile_by_id

> <Profile1> v1_stream_get_profile_by_id(id)

Retrieve a profile

Retrieve the information of the Profile with the supplied Profile id. Profile object contains information related to the identity of the user like name, address, contact details, etc. The data in a profile is tied to a particular work platform account that the user has connected to via Connect SDK.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IdentityApi.new
id = 'id_example' # String | Unique identifier for the profile.

begin
  # Retrieve a profile
  result = api_instance.v1_stream_get_profile_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IdentityApi->v1_stream_get_profile_by_id: #{e}"
end
```

#### Using the v1_stream_get_profile_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Profile1>, Integer, Hash)> v1_stream_get_profile_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a profile
  data, status_code, headers = api_instance.v1_stream_get_profile_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Profile1>
rescue Phyllo::ApiError => e
  puts "Error when calling IdentityApi->v1_stream_get_profile_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the profile. |  |

### Return type

[**Profile1**](Profile1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_stream_get_profiles

> <ProfileList1> v1_stream_get_profiles(opts)

Retrieve all profiles

Lists all Profiles. Profile object contains information related to the identity of the user like name, address, contact details, etc. The data in a profile is tied to a particular work platform account that the user has connected to via Connect SDK.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IdentityApi.new
opts = {
  offset: 56, # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  account_id: '12ccaf87-66c2-4b8e-9bf0-d0e8705334d1', # String | Unique ID of the connected account.
  work_platform_id: '12ccaf87-66c2-4b8e-9bf0-d0e8705334d1', # String | Unique ID of the work platform.
  user_id: '12ccaf87-66c2-4b8e-9bf0-d0e8705334d1' # String | Unique ID of the user.
}

begin
  # Retrieve all profiles
  result = api_instance.v1_stream_get_profiles(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IdentityApi->v1_stream_get_profiles: #{e}"
end
```

#### Using the v1_stream_get_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProfileList1>, Integer, Hash)> v1_stream_get_profiles_with_http_info(opts)

```ruby
begin
  # Retrieve all profiles
  data, status_code, headers = api_instance.v1_stream_get_profiles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProfileList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IdentityApi->v1_stream_get_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **account_id** | **String** | Unique ID of the connected account. | [optional] |
| **work_platform_id** | **String** | Unique ID of the work platform. | [optional] |
| **user_id** | **String** | Unique ID of the user. | [optional] |

### Return type

[**ProfileList1**](ProfileList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

