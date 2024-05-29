# Phyllo::ErrorError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the error. |  |
| **error_code** | **String** | Code of the error. |  |
| **message** | **String** | Message of the error. |  |
| **request_id** | **String** | Unique ID associated with this request. Please quote this request while requesting support. |  |
| **http_status_code** | **Float** | Standard HTTP status code for the given request, which is also present in the HTTP response |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::ErrorError.new(
  type: INVALID_REQUEST_PARAMETERS,
  error_code: MISSING_FIELDS,
  message: Request is missing required fields: [enabled, name].,
  request_id: null,
  http_status_code: 400
)
```

