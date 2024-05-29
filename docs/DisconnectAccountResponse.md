# Phyllo::DisconnectAccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the connected account. |  |
| **created_at** | **Time** | Account creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Account updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  |  |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  |  |
| **status** | **String** | Account connection status. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::DisconnectAccountResponse.new(
  id: 12ccaf87-66c2-4b8e-9bf0-d0e8705334d1,
  created_at: null,
  updated_at: null,
  user: null,
  work_platform: null,
  status: CONNECTED
)
```

