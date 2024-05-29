# Phyllo::Account1DataEngagementAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Status of the data retrieval between Phyllo and the work platform. |  |
| **last_sync_at** | **Time** | Last sync time for the engagement object (UTC date and time in ISO 8601 format) | [optional] |
| **refresh_since** | **Time** | Time period for which engagement object is refreshed (UTC date and time in ISO 8601 format) | [optional] |
| **data_available_from** | **Time** | Start period from which engagement data is available (UTC date and time in ISO 8601 format) | [optional] |
| **monitoring_type** | **String** | Monitoring plan for the engagement.audience product. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Account1DataEngagementAudience.new(
  status: IN_PROGRESS,
  last_sync_at: null,
  refresh_since: null,
  data_available_from: null,
  monitoring_type: STANDARD
)
```

