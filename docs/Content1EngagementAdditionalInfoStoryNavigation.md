# Phyllo::Content1EngagementAdditionalInfoStoryNavigation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automatic_forwards** | **Integer** | Number of automatic forwards on a story. | [optional] |
| **tap_backs** | **Integer** | Number of tap backs on a story. | [optional] |
| **tap_exits** | **Integer** | Number of tap exits on a story. | [optional] |
| **tap_forwards** | **Integer** | Number of tap forwards on a story. | [optional] |
| **swipe_backs** | **Integer** | Number of swipe backs on a story. | [optional] |
| **swipe_ups** | **Integer** | Number of swipe ups on a story. | [optional] |
| **swipe_downs** | **Integer** | Number of swipe downs on a story. | [optional] |
| **swipe_forwards** | **Integer** | Number of swipe forwards on a story. | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Content1EngagementAdditionalInfoStoryNavigation.new(
  automatic_forwards: 5,
  tap_backs: 5,
  tap_exits: 6,
  tap_forwards: 22,
  swipe_backs: 3,
  swipe_ups: 8,
  swipe_downs: 2,
  swipe_forwards: 13
)
```

