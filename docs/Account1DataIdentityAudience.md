# Phyllo::Account1DataIdentityAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Status of the data retrieval between Phyllo and the work platform. |  |
| **last_sync_at** | **Time** | Last sync time for the engagement object (UTC date and time in ISO 8601 format) | [optional] |
| **monitoring_type** | **String** | Monitoring plan for the identity.audience product. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Account1DataIdentityAudience.new(
  status: IN_PROGRESS,
  last_sync_at: null,
  monitoring_type: STANDARD
)
```

