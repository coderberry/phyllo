# Phyllo::DemographicsAttributes1GenderAgeDistributionInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gender** | **String** | Gender of the audience |  |
| **age_range** | **String** | Age range of the audience |  |
| **value** | **Float** | Percentage value of demographics from the corresponding gender in the corresponding age range |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::DemographicsAttributes1GenderAgeDistributionInner.new(
  gender: FEMALE,
  age_range: 13-18,
  value: 12.3
)
```

