# Phyllo::PublishContentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the account. |  |
| **title** | **String** | Title of the post (put the entire text here for tweets). | [optional] |
| **description** | **String** | Description for the post being published. Supports HTML for certain platforms (eg. YouTube). | [optional] |
| **type** | **String** | Platform specific content type of the post being published. |  |
| **visibility** | **String** | Visibility of the post. | [optional][default to &#39;PUBLIC&#39;] |
| **_retry** | **Boolean** | Whether Phyllo should retry posting the content in case of any technical failures. Our retry mechanism and policies are defined on our publishing content guide. | [optional][default to false] |
| **additional_info** | [**PublishContent1AdditionalInfo**](PublishContent1AdditionalInfo.md) |  | [optional] |
| **media** | [**Array&lt;PublishContentMedia2&gt;**](PublishContentMedia2.md) | List of media items to be published. | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::PublishContentRequest.new(
  account_id: null,
  title: null,
  description: null,
  type: null,
  visibility: null,
  _retry: null,
  additional_info: null,
  media: null
)
```

