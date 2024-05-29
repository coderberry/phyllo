# Phyllo::Certifications

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the certification | [optional] |
| **id** | **String** | Identifier of the issued certificate | [optional] |
| **url** | **String** | URL of the certification | [optional] |
| **authority** | **String** | Name of the certificate issuing authority | [optional] |
| **time_period** | [**Certifications1TimePeriod**](Certifications1TimePeriod.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Certifications.new(
  name: null,
  id: null,
  url: null,
  authority: null,
  time_period: null
)
```

