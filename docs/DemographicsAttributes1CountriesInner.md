# Phyllo::DemographicsAttributes1CountriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | 2 letter country code as per ISO 3166-1 alpha-2 |  |
| **value** | **Float** | Percentage value of demographics from the corresponding country |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::DemographicsAttributes1CountriesInner.new(
  code: US,
  value: 78.9
)
```

