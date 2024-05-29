# Phyllo::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the user. |  |
| **external_id** | **String** | External ID of the user as supplied by you. |  |
| **id** | **String** | Unique ID of the user. |  |
| **created_at** | **Time** | User creation timestamp (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | User updation timestamp (UTC date and time in ISO 8601 format) |  |
| **status** | **String** | User status on Phyllo. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::User.new(
  name: John Doe,
  external_id: 179a0bb4-c572-4477-9457-7dacf1b84848,
  id: 0994b847-cc69-4d98-bc99-c5e65e762add,
  created_at: null,
  updated_at: null,
  status: ACTIVE
)
```

