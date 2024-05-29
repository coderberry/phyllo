# Phyllo::Education

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **degree** | **String** | Name of the degree | [optional] |
| **field_study** | **String** | Field of study | [optional] |
| **grade** | **String** | Grade secured | [optional] |
| **school** | [**Education1School**](Education1School.md) |  | [optional] |
| **description** | **String** | Description mentioned on the profile, if any | [optional] |
| **time_period** | [**Education1TimePeriod**](Education1TimePeriod.md) |  | [optional] |
| **activities** | **String** | Activities participated in | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Education.new(
  degree: null,
  field_study: null,
  grade: null,
  school: null,
  description: null,
  time_period: null,
  activities: null
)
```

