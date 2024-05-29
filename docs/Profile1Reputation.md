# Phyllo::Profile1Reputation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **follower_count** | **Integer** | Total number of followers of this profile. | [optional] |
| **following_count** | **Integer** | Total number of profiles this profile is following. | [optional] |
| **subscriber_count** | **Integer** | Total number of free subscribers. | [optional] |
| **paid_subscriber_count** | **Integer** | Total number of paid/premium subscribers. | [optional] |
| **content_count** | **Integer** | Total number of content items (videos, images, posts etc). | [optional] |
| **content_group_count** | **Integer** | Total number of content group items (playlists, albums, collections etc). | [optional] |
| **watch_time_in_hours** | **Integer** | Total watch time in hours (available for YouTube). | [optional] |
| **average_open_rate** | **Float** | The historical average open rate of the publication as percentage. | [optional] |
| **average_click_rate** | **Float** | The historical average clickthrough rate of the publication as percentage. | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Profile1Reputation.new(
  follower_count: 3456778,
  following_count: 5678,
  subscriber_count: 987654,
  paid_subscriber_count: null,
  content_count: 987654,
  content_group_count: 987654,
  watch_time_in_hours: 55,
  average_open_rate: null,
  average_click_rate: null
)
```

