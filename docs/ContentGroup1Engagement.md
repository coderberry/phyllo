# Phyllo::ContentGroup1Engagement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **like_count** | **Integer** | Total likes. | [optional] |
| **dislike_count** | **Integer** | Total dislikes. | [optional] |
| **comment_count** | **Integer** | Total comments. | [optional] |
| **impression_organic_count** | **Integer** | Total organic impressions. | [optional] |
| **reach_organic_count** | **Integer** | Total organic reach. | [optional] |
| **save_count** | **Integer** | Total item saves. | [optional] |
| **view_count** | **Integer** | Total views. | [optional] |
| **watch_time_in_hours** | **Float** | If format is &#x60;video&#x60; - total watch time in hours . | [optional] |
| **share_count** | **Integer** | Total shares. | [optional] |
| **impression_paid_count** | **Integer** | Total paid impressions. | [optional] |
| **reach_paid_count** | **Integer** | Total paid reach. | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::ContentGroup1Engagement.new(
  like_count: 3455,
  dislike_count: 52,
  comment_count: 53,
  impression_organic_count: 545,
  reach_organic_count: 453,
  save_count: 5423,
  view_count: 345,
  watch_time_in_hours: 1.5,
  share_count: 5423,
  impression_paid_count: 545,
  reach_paid_count: 453
)
```

