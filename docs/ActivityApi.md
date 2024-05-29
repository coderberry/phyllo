# Phyllo::ActivityApi

All URIs are relative to *https://api.sandbox.getphyllo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_get_media_activity_artist_by_id**](ActivityApi.md#v1_get_media_activity_artist_by_id) | **GET** /v1/media/activity/artists/{id} | Retrieve an artist (user activity) |
| [**v1_get_media_activity_artists**](ActivityApi.md#v1_get_media_activity_artists) | **GET** /v1/media/activity/artists | Retrieve artists for an account (user activity) |
| [**v1_get_media_activity_content_by_id**](ActivityApi.md#v1_get_media_activity_content_by_id) | **GET** /v1/media/activity/contents/{id} | Retrieve a content (user activity) |
| [**v1_get_media_activity_contents**](ActivityApi.md#v1_get_media_activity_contents) | **GET** /v1/media/activity/contents | Retrieve contents for an account (user activity) |
| [**v1_search_media_activity_artists**](ActivityApi.md#v1_search_media_activity_artists) | **POST** /v1/media/activity/artists/search | Retrieve artists for an account (user activity) in bulk |
| [**v1_search_media_activity_contents**](ActivityApi.md#v1_search_media_activity_contents) | **POST** /v1/media/activity/contents/search | Retrieve contents for an account (user activity) in bulk |


## v1_get_media_activity_artist_by_id

> <ActivityArtist1> v1_get_media_activity_artist_by_id(id)

Retrieve an artist (user activity)

Retrieve the information of the artist with the supplied artist ID.

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

api_instance = Phyllo::ActivityApi.new
id = 'id_example' # String | Unique identifier for the artist

begin
  # Retrieve an artist (user activity)
  result = api_instance.v1_get_media_activity_artist_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_get_media_activity_artist_by_id: #{e}"
end
```

#### Using the v1_get_media_activity_artist_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivityArtist1>, Integer, Hash)> v1_get_media_activity_artist_by_id_with_http_info(id)

```ruby
begin
  # Retrieve an artist (user activity)
  data, status_code, headers = api_instance.v1_get_media_activity_artist_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivityArtist1>
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_get_media_activity_artist_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the artist |  |

### Return type

[**ActivityArtist1**](ActivityArtist1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_media_activity_artists

> <ActivityArtistList1> v1_get_media_activity_artists(account_id, opts)

Retrieve artists for an account (user activity)

Lists all `TOP` and `FOLLOWED` artists from the activity history of the given account.

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

api_instance = Phyllo::ActivityApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
opts = {
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56 # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
}

begin
  # Retrieve artists for an account (user activity)
  result = api_instance.v1_get_media_activity_artists(account_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_get_media_activity_artists: #{e}"
end
```

#### Using the v1_get_media_activity_artists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivityArtistList1>, Integer, Hash)> v1_get_media_activity_artists_with_http_info(account_id, opts)

```ruby
begin
  # Retrieve artists for an account (user activity)
  data, status_code, headers = api_instance.v1_get_media_activity_artists_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivityArtistList1>
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_get_media_activity_artists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |

### Return type

[**ActivityArtistList1**](ActivityArtistList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_media_activity_content_by_id

> <ActivityContent1> v1_get_media_activity_content_by_id(id)

Retrieve a content (user activity)

Retrieve the information of the content with the supplied content ID.

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

api_instance = Phyllo::ActivityApi.new
id = 'id_example' # String | Unique identifier for the content

begin
  # Retrieve a content (user activity)
  result = api_instance.v1_get_media_activity_content_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_get_media_activity_content_by_id: #{e}"
end
```

#### Using the v1_get_media_activity_content_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivityContent1>, Integer, Hash)> v1_get_media_activity_content_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a content (user activity)
  data, status_code, headers = api_instance.v1_get_media_activity_content_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivityContent1>
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_get_media_activity_content_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the content |  |

### Return type

[**ActivityContent1**](ActivityContent1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_media_activity_contents

> <ActivityContentList1> v1_get_media_activity_contents(account_id, opts)

Retrieve contents for an account (user activity)

Lists all `RECENT`, `TOP` and `SAVED` contents from the activity history of the given account.

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

api_instance = Phyllo::ActivityApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
opts = {
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56 # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
}

begin
  # Retrieve contents for an account (user activity)
  result = api_instance.v1_get_media_activity_contents(account_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_get_media_activity_contents: #{e}"
end
```

#### Using the v1_get_media_activity_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivityContentList1>, Integer, Hash)> v1_get_media_activity_contents_with_http_info(account_id, opts)

```ruby
begin
  # Retrieve contents for an account (user activity)
  data, status_code, headers = api_instance.v1_get_media_activity_contents_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivityContentList1>
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_get_media_activity_contents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |

### Return type

[**ActivityContentList1**](ActivityContentList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_search_media_activity_artists

> <ActivityArtistSearchList1> v1_search_media_activity_artists(opts)

Retrieve artists for an account (user activity) in bulk

Search information of the artists in bulk by providing IDs.   This is best used in combination with webhooks - you can directly take the IDs from \"ACTIVITY-ARTISTS.ADDED\" and \"ACTIVITY-ARTISTS.UPDATED\" webhook notifications and pass on to this API to get the updated artist items.

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

api_instance = Phyllo::ActivityApi.new
opts = {
  activity_artist_search1: Phyllo::ActivityArtistSearch1.new({ids: ['ids_example']}) # ActivityArtistSearch1 | 
}

begin
  # Retrieve artists for an account (user activity) in bulk
  result = api_instance.v1_search_media_activity_artists(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_search_media_activity_artists: #{e}"
end
```

#### Using the v1_search_media_activity_artists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivityArtistSearchList1>, Integer, Hash)> v1_search_media_activity_artists_with_http_info(opts)

```ruby
begin
  # Retrieve artists for an account (user activity) in bulk
  data, status_code, headers = api_instance.v1_search_media_activity_artists_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivityArtistSearchList1>
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_search_media_activity_artists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activity_artist_search1** | [**ActivityArtistSearch1**](ActivityArtistSearch1.md) |  | [optional] |

### Return type

[**ActivityArtistSearchList1**](ActivityArtistSearchList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_search_media_activity_contents

> <ActivityContentSearchList1> v1_search_media_activity_contents(opts)

Retrieve contents for an account (user activity) in bulk

Search information of the contents in bulk by providing IDs.   This is best used in combination with webhooks - you can directly take the IDs from \"ACTIVITY-CONTENTS.ADDED\" and \"ACTIVITY-CONTENTS.UPDATED\" webhook notifications and pass on to this API to get the updated content items.

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

api_instance = Phyllo::ActivityApi.new
opts = {
  activity_content_search1: Phyllo::ActivityContentSearch1.new({ids: ['ids_example']}) # ActivityContentSearch1 | 
}

begin
  # Retrieve contents for an account (user activity) in bulk
  result = api_instance.v1_search_media_activity_contents(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_search_media_activity_contents: #{e}"
end
```

#### Using the v1_search_media_activity_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivityContentSearchList1>, Integer, Hash)> v1_search_media_activity_contents_with_http_info(opts)

```ruby
begin
  # Retrieve contents for an account (user activity) in bulk
  data, status_code, headers = api_instance.v1_search_media_activity_contents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivityContentSearchList1>
rescue Phyllo::ApiError => e
  puts "Error when calling ActivityApi->v1_search_media_activity_contents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activity_content_search1** | [**ActivityContentSearch1**](ActivityContentSearch1.md) |  | [optional] |

### Return type

[**ActivityContentSearchList1**](ActivityContentSearchList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

