# Phyllo::WorkExperience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Job title | [optional] |
| **company** | [**WorkExperience1Company**](WorkExperience1Company.md) |  | [optional] |
| **description** | **String** | Work experience description mentioned on the profile | [optional] |
| **time_period** | [**WorkExperience1TimePeriod**](WorkExperience1TimePeriod.md) |  | [optional] |
| **location** | [**WorkExperience1Location**](WorkExperience1Location.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::WorkExperience.new(
  title: null,
  company: null,
  description: null,
  time_period: null,
  location: null
)
```

