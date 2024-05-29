# Phyllo::Comment1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the comment. |  |
| **created_at** | **Time** | Object creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Object updation time (UTC date and time in ISO 8601 format) |  |
| **published_at** | **Time** | Publishing timestamp of the comment. |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  |  |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  |  |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  |  |
| **content** | [**ContentAttribute1**](ContentAttribute1.md) |  |  |
| **external_id** | **String** | Unique comment ID on the platform. |  |
| **text** | **String** | Text content of the comment. | [optional] |
| **commenter_username** | **String** | Commenter profile username. | [optional] |
| **commenter_display_name** | **String** | Full display name of the commenter profile. | [optional] |
| **commenter_id** | **String** | Unique identifier for the commenter&#39;s profile on the platform. | [optional] |
| **commenter_profile_url** | **String** | Commenter&#39;s profile URL on the connected platform. | [optional] |
| **like_count** | **Integer** | Total likes. | [optional] |
| **reply_count** | **Integer** | Total replies. | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Comment1.new(
  id: null,
  created_at: null,
  updated_at: null,
  published_at: null,
  user: null,
  account: null,
  work_platform: null,
  content: null,
  external_id: null,
  text: null,
  commenter_username: null,
  commenter_display_name: null,
  commenter_id: null,
  commenter_profile_url: null,
  like_count: null,
  reply_count: null
)
```

