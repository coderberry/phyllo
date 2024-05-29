# Phyllo::Account1DataIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Status of the data retrieval between Phyllo and the work platform. |  |
| **last_sync_at** | **Time** | Last sync time for the profile object (UTC date and time in ISO 8601 format) | [optional] |
| **monitoring_type** | **String** | Monitoring plan for the identity product. |  |
| **audience** | [**Account1DataIdentityAudience**](Account1DataIdentityAudience.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Account1DataIdentity.new(
  status: SYNCED,
  last_sync_at: null,
  monitoring_type: STANDARD,
  audience: null
)
```

