# Phyllo::WebhookApi

All URIs are relative to *https://api.sandbox.getphyllo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_webhook_delete_webhooks_by_id**](WebhookApi.md#v1_webhook_delete_webhooks_by_id) | **DELETE** /v1/webhooks/{id} | Delete a webhook |
| [**v1_webhook_get_webhooks**](WebhookApi.md#v1_webhook_get_webhooks) | **GET** /v1/webhooks | Retrieve all webhooks |
| [**v1_webhook_get_webhooks_by_id**](WebhookApi.md#v1_webhook_get_webhooks_by_id) | **GET** /v1/webhooks/{id} | Retrieve a webhook |
| [**v1_webhook_post_webhooks**](WebhookApi.md#v1_webhook_post_webhooks) | **POST** /v1/webhooks | Create a webhook |
| [**v1_webhook_post_webhooks_send**](WebhookApi.md#v1_webhook_post_webhooks_send) | **POST** /v1/webhooks/send | Send a mock webhook notification |
| [**v1_webhook_put_webhooks_by_id**](WebhookApi.md#v1_webhook_put_webhooks_by_id) | **PUT** /v1/webhooks/{id} | Update a webhook |


## v1_webhook_delete_webhooks_by_id

> v1_webhook_delete_webhooks_by_id(id)

Delete a webhook

Delete a webhook information

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

api_instance = Phyllo::WebhookApi.new
id = '0994b847-cc69-4d98-bc99-c5e65e762add' # String | Unique identifier for the webhook.

begin
  # Delete a webhook
  api_instance.v1_webhook_delete_webhooks_by_id(id)
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_delete_webhooks_by_id: #{e}"
end
```

#### Using the v1_webhook_delete_webhooks_by_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v1_webhook_delete_webhooks_by_id_with_http_info(id)

```ruby
begin
  # Delete a webhook
  data, status_code, headers = api_instance.v1_webhook_delete_webhooks_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_delete_webhooks_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the webhook. |  |

### Return type

nil (empty response body)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## v1_webhook_get_webhooks

> <WebhookResponseList1> v1_webhook_get_webhooks(opts)

Retrieve all webhooks

Lists all Webhooks.

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

api_instance = Phyllo::WebhookApi.new
opts = {
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56 # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
}

begin
  # Retrieve all webhooks
  result = api_instance.v1_webhook_get_webhooks(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_get_webhooks: #{e}"
end
```

#### Using the v1_webhook_get_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponseList1>, Integer, Hash)> v1_webhook_get_webhooks_with_http_info(opts)

```ruby
begin
  # Retrieve all webhooks
  data, status_code, headers = api_instance.v1_webhook_get_webhooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponseList1>
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_get_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |

### Return type

[**WebhookResponseList1**](WebhookResponseList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_webhook_get_webhooks_by_id

> <WebhookResponse1> v1_webhook_get_webhooks_by_id(id)

Retrieve a webhook

Retrieve the information of the Webhook with the supplied Webhook id.

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

api_instance = Phyllo::WebhookApi.new
id = '0994b847-cc69-4d98-bc99-c5e65e762add' # String | Unique identifier for the webhook.

begin
  # Retrieve a webhook
  result = api_instance.v1_webhook_get_webhooks_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_get_webhooks_by_id: #{e}"
end
```

#### Using the v1_webhook_get_webhooks_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse1>, Integer, Hash)> v1_webhook_get_webhooks_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a webhook
  data, status_code, headers = api_instance.v1_webhook_get_webhooks_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse1>
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_get_webhooks_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the webhook. |  |

### Return type

[**WebhookResponse1**](WebhookResponse1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_webhook_post_webhooks

> <WebhookResponse1> v1_webhook_post_webhooks(opts)

Create a webhook

Create a Webhook.

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

api_instance = Phyllo::WebhookApi.new
opts = {
  create_webhook_request1: Phyllo::CreateWebhookRequest1.new({url: 'https://domainname.com/webhook', events: ['ACCOUNTS.CONNECTED'], name: 'name_example'}) # CreateWebhookRequest1 | 
}

begin
  # Create a webhook
  result = api_instance.v1_webhook_post_webhooks(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_post_webhooks: #{e}"
end
```

#### Using the v1_webhook_post_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse1>, Integer, Hash)> v1_webhook_post_webhooks_with_http_info(opts)

```ruby
begin
  # Create a webhook
  data, status_code, headers = api_instance.v1_webhook_post_webhooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse1>
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_post_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook_request1** | [**CreateWebhookRequest1**](CreateWebhookRequest1.md) |  | [optional] |

### Return type

[**WebhookResponse1**](WebhookResponse1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_webhook_post_webhooks_send

> <WebhookPayload1> v1_webhook_post_webhooks_send(opts)

Send a mock webhook notification

Sends a webhook notification on the registered webhook URL.

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

api_instance = Phyllo::WebhookApi.new
opts = {
  send_webhook_payload1: Phyllo::SendWebhookPayload1.new({payload: Phyllo::WebhookPayload1.new({event: 'ACCOUNTS.CONNECTED', data: 3.56})}) # SendWebhookPayload1 | 
}

begin
  # Send a mock webhook notification
  result = api_instance.v1_webhook_post_webhooks_send(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_post_webhooks_send: #{e}"
end
```

#### Using the v1_webhook_post_webhooks_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookPayload1>, Integer, Hash)> v1_webhook_post_webhooks_send_with_http_info(opts)

```ruby
begin
  # Send a mock webhook notification
  data, status_code, headers = api_instance.v1_webhook_post_webhooks_send_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookPayload1>
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_post_webhooks_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_webhook_payload1** | [**SendWebhookPayload1**](SendWebhookPayload1.md) |  | [optional] |

### Return type

[**WebhookPayload1**](WebhookPayload1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_webhook_put_webhooks_by_id

> <WebhookResponse1> v1_webhook_put_webhooks_by_id(id, opts)

Update a webhook

Update a webhook information

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

api_instance = Phyllo::WebhookApi.new
id = '0994b847-cc69-4d98-bc99-c5e65e762add' # String | Unique identifier for the webhook.
opts = {
  update_webhook_request1: Phyllo::UpdateWebhookRequest1.new({url: 'https://domainname.com/webhook', events: ['ACCOUNTS.CONNECTED'], name: 'name_example'}) # UpdateWebhookRequest1 | Updated webhook object.
}

begin
  # Update a webhook
  result = api_instance.v1_webhook_put_webhooks_by_id(id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_put_webhooks_by_id: #{e}"
end
```

#### Using the v1_webhook_put_webhooks_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse1>, Integer, Hash)> v1_webhook_put_webhooks_by_id_with_http_info(id, opts)

```ruby
begin
  # Update a webhook
  data, status_code, headers = api_instance.v1_webhook_put_webhooks_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse1>
rescue Phyllo::ApiError => e
  puts "Error when calling WebhookApi->v1_webhook_put_webhooks_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the webhook. |  |
| **update_webhook_request1** | [**UpdateWebhookRequest1**](UpdateWebhookRequest1.md) | Updated webhook object. | [optional] |

### Return type

[**WebhookResponse1**](WebhookResponse1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

