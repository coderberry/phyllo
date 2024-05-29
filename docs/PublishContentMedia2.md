# Phyllo::PublishContentMedia2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **media_type** | **String** | Media type of the media item being published. |  |
| **source_media_url** | **String** | Publicly accessible URL for the media to be uploaded. |  |
| **source_thumbnail_url** | **String** | Publicly accessible image URL to be used as the thumbnail to be uploaded. | [optional] |
| **thumbnail_offset** | **Integer** | Time offset in milliseconds within the video for the frame that should be used as the thumbnail (Instagram only). | [optional][default to 0] |
| **additional_info** | **Object** | Platform specific fields come here. | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::PublishContentMedia2.new(
  media_type: null,
  source_media_url: null,
  source_thumbnail_url: null,
  thumbnail_offset: null,
  additional_info: null
)
```

