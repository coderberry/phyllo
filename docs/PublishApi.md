# Phyllo::PublishApi

All URIs are relative to *https://api.sandbox.getphyllo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_get_social_content_publish**](PublishApi.md#v1_get_social_content_publish) | **GET** /v1/social/contents/publish/{id} | Check status of content publish |
| [**v1_social_content_publish**](PublishApi.md#v1_social_content_publish) | **POST** /v1/social/contents/publish | Publish content to a platform |


## v1_get_social_content_publish

> <PublishContentResponse1> v1_get_social_content_publish(id)

Check status of content publish

Check status of the content publish request by ID.   This is best used in combination with webhooks - you can directly take the publish ID from \"CONTENTS.PUBLISH_SUCCESS\", \"CONTENTS.PUBLISH_READY\" and \"CONTENTS.PUBLISH_FAILURE\" webhook notifications and pass on to this API to get the updated status of publishing request.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::PublishApi.new
id = 'id_example' # String | Unique ID of the publish request

begin
  # Check status of content publish
  result = api_instance.v1_get_social_content_publish(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling PublishApi->v1_get_social_content_publish: #{e}"
end
```

#### Using the v1_get_social_content_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublishContentResponse1>, Integer, Hash)> v1_get_social_content_publish_with_http_info(id)

```ruby
begin
  # Check status of content publish
  data, status_code, headers = api_instance.v1_get_social_content_publish_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublishContentResponse1>
rescue Phyllo::ApiError => e
  puts "Error when calling PublishApi->v1_get_social_content_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the publish request |  |

### Return type

[**PublishContentResponse1**](PublishContentResponse1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_social_content_publish

> <PublishContentResponse1> v1_social_content_publish(opts)

Publish content to a platform

Publish content to a platform by providing the account ID.   Check the [publishing content page](../../../API/publishing-content) for detailed info on how to use this API.   Subscribe to the \"CONTENTS.PUBLISH_SUCCESS\", \"CONTENTS.PUBLISH_READY\" and \"CONTENTS.PUBLISH_FAILURE\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [check status of content publish API](../reference/openapi.v1.yml/paths/~1v1~1social~1contents~1publish~1{id}/get) to check the detailed status of the publish request.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::PublishApi.new
opts = {
  publish_content_request1: Phyllo::PublishContentRequest1.new({account_id: 'account_id_example', type: 'TWEET'}) # PublishContentRequest1 | 
}

begin
  # Publish content to a platform
  result = api_instance.v1_social_content_publish(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling PublishApi->v1_social_content_publish: #{e}"
end
```

#### Using the v1_social_content_publish_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublishContentResponse1>, Integer, Hash)> v1_social_content_publish_with_http_info(opts)

```ruby
begin
  # Publish content to a platform
  data, status_code, headers = api_instance.v1_social_content_publish_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublishContentResponse1>
rescue Phyllo::ApiError => e
  puts "Error when calling PublishApi->v1_social_content_publish_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **publish_content_request1** | [**PublishContentRequest1**](PublishContentRequest1.md) |  | [optional] |

### Return type

[**PublishContentResponse1**](PublishContentResponse1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

