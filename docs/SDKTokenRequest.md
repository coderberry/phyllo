# Phyllo::SDKTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | Unique ID of the user. |  |
| **products** | **Array&lt;String&gt;** | Requested Phyllo products. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::SDKTokenRequest.new(
  user_id: cfcc6603-1d8f-47d9-926a-4b91cc143105,
  products: null
)
```

