# Phyllo::AccountAttribute1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the account linked to this object. |  |
| **platform_username** | **String** | Username of the account linked to this object. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::AccountAttribute1.new(
  id: fb83e3ca-eae7-4eaa-bf51-601ea4b3daeb,
  platform_username: john.doe@gmail.com
)
```

