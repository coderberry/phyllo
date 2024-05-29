# Phyllo::Honors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Name of the honor | [optional] |
| **issuer** | **String** | Name of the honor issuer | [optional] |
| **description** | **String** | Description mentioned on the profile, if any | [optional] |
| **date** | [**Honors1Date**](Honors1Date.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Honors.new(
  title: null,
  issuer: null,
  description: null,
  date: null
)
```

