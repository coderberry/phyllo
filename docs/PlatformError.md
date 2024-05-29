# Phyllo::PlatformError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the error. |  |
| **error_code** | **String** | Code of the error. |  |
| **message** | **String** | Message of the error. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::PlatformError.new(
  type: INVALID_REQUEST_PARAMETERS,
  error_code: INVALID_MEDIA_FORMAT,
  message: Image cannot be a GIF.
)
```

