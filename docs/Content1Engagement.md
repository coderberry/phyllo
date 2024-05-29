# Phyllo::Content1Engagement

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
| **watch_time_in_hours** | **Float** | If format is &#x60;video&#x60; - total watch time in hours. | [optional] |
| **share_count** | **Integer** | Total shares. | [optional] |
| **impression_paid_count** | **Integer** | Total paid impressions. | [optional] |
| **reach_paid_count** | **Integer** | Total paid reach. | [optional] |
| **email_open_rate** | **Float** | Percentage of emails that have been opened | [optional] |
| **email_click_rate** | **Float** | Percentage of emails that have been clicked | [optional] |
| **unsubscribe_count** | **Integer** | Number of unsubscribes on the email | [optional] |
| **spam_report_count** | **Integer** | Number of email subscribers that report this post as spam | [optional] |
| **click_count** | **Integer** | Total web click count on the content item | [optional] |
| **additional_info** | [**Content1EngagementAdditionalInfo**](Content1EngagementAdditionalInfo.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Content1Engagement.new(
  like_count: 42134,
  dislike_count: 342,
  comment_count: 4234,
  impression_organic_count: 4234,
  reach_organic_count: 34,
  save_count: 43,
  view_count: 42343,
  watch_time_in_hours: 1.5,
  share_count: 42343,
  impression_paid_count: 4234,
  reach_paid_count: 34,
  email_open_rate: null,
  email_click_rate: null,
  unsubscribe_count: null,
  spam_report_count: null,
  click_count: null,
  additional_info: null
)
```

