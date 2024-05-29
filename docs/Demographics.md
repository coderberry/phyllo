# Phyllo::Demographics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the comment. |  |
| **created_at** | **Time** | Object creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Object updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  |  |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  |  |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  |  |
| **countries** | [**Array&lt;DemographicsAttributes1CountriesInner&gt;**](DemographicsAttributes1CountriesInner.md) |  |  |
| **cities** | [**Array&lt;DemographicsAttributes1CitiesInner&gt;**](DemographicsAttributes1CitiesInner.md) |  |  |
| **gender_age_distribution** | [**Array&lt;DemographicsAttributes1GenderAgeDistributionInner&gt;**](DemographicsAttributes1GenderAgeDistributionInner.md) |  |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Demographics.new(
  id: null,
  created_at: null,
  updated_at: null,
  user: null,
  account: null,
  work_platform: null,
  countries: null,
  cities: null,
  gender_age_distribution: null
)
```

