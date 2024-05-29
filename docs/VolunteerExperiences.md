# Phyllo::VolunteerExperiences

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** | Volunteering role | [optional] |
| **organization** | **String** | Name of the organization | [optional] |
| **cause** | **String** | Volunteering cause | [optional] |
| **description** | **String** | Description mentioned on the profile, if any | [optional] |
| **time_period** | [**Education1TimePeriod**](Education1TimePeriod.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::VolunteerExperiences.new(
  role: null,
  organization: null,
  cause: null,
  description: null,
  time_period: null
)
```

