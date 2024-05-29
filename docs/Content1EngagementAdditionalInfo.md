# Phyllo::Content1EngagementAdditionalInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **followers_gained** | **Integer** | Number of new followers gained from a content item. | [optional] |
| **profile_visits** | **Integer** | Number of profile visits from a content item. | [optional] |
| **bio_link_clicked** | **Integer** | Number of bio link clicks generated from a content item. | [optional] |
| **story_navigation** | [**Content1EngagementAdditionalInfoStoryNavigation**](Content1EngagementAdditionalInfoStoryNavigation.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Content1EngagementAdditionalInfo.new(
  followers_gained: 14,
  profile_visits: 123,
  bio_link_clicked: 9,
  story_navigation: null
)
```

