# Phyllo::WorkExperience1Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Company name | [optional] |
| **industries** | **Array&lt;String&gt;** | Industry tags of the company | [optional] |
| **logo_url** | **String** | URL of the company logo image | [optional] |
| **employee_count** | [**WorkExperience1CompanyEmployeeCount**](WorkExperience1CompanyEmployeeCount.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::WorkExperience1Company.new(
  name: null,
  industries: null,
  logo_url: null,
  employee_count: null
)
```

