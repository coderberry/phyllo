# Phyllo::UserRequest1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the user. |  |
| **external_id** | **String** | Unique ID for the user supplied by you. Avoid passing PII such as the user&#39;s email or phone number as the external ID.  |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::UserRequest1.new(
  name: John Doe,
  external_id: 179a0bb4-c572-4477-9457-7dacf1b84848
)
```

