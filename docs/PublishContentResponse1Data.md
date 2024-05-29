# Phyllo::PublishContentResponse1Data

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID for the publishing request. |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  |  |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  |  |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  |  |
| **status** | **String** | Status of the publishing request. |  |
| **format** | **String** | Media type of the content being published. |  |
| **published_info** | [**PublishContentResponse1DataAllOfPublishedInfo**](PublishContentResponse1DataAllOfPublishedInfo.md) |  | [optional] |
| **title** | **String** | Title of the post (put the entire text here for tweets). | [optional] |
| **description** | **String** | Description for the post being published. Supports HTML for certain platforms (eg. YouTube). | [optional] |
| **type** | **String** | Platform specific content type of the post being published. |  |
| **visibility** | **String** | Visibility of the post. | [optional][default to &#39;PUBLIC&#39;] |
| **_retry** | **Boolean** | Whether Phyllo should retry posting the content in case of any technical failures. Our retry mechanism and policies are defined on our publishing content guide. | [optional][default to false] |
| **additional_info** | [**PublishContent1AdditionalInfo**](PublishContent1AdditionalInfo.md) |  | [optional] |
| **media** | [**Array&lt;PublishContentMedia1&gt;**](PublishContentMedia1.md) | List of media items to be published. | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::PublishContentResponse1Data.new(
  id: null,
  user: null,
  account: null,
  work_platform: null,
  status: null,
  format: null,
  published_info: null,
  title: null,
  description: null,
  type: null,
  visibility: null,
  _retry: null,
  additional_info: null,
  media: null
)
```

