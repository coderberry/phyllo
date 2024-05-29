# Phyllo::Projects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Name of the project | [optional] |
| **description** | **String** | Description of the project | [optional] |
| **url** | **String** | URL of the project | [optional] |
| **time_period** | [**Education1TimePeriod**](Education1TimePeriod.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Projects.new(
  title: null,
  description: null,
  url: null,
  time_period: null
)
```

