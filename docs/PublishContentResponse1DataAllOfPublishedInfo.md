# Phyllo::PublishContentResponse1DataAllOfPublishedInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_id** | **String** | Unique ID of the published content item. |  |
| **url** | **String** | Platform content URL. |  |
| **media_url** | **String** | Direct media URL of the content item, which can be used to download the media item. This is usually a signed URL and may have certain expiry limits so we recommend using it for downloads as soon as possible (such as when a webhook is received), if you are looking to cache media files with you. |  |
| **thumbnail_url** | **String** | Thumbnail URL of the content item, which can be used to download the media thumbnail. This is usually a signed URL and may have certain expiry limits so we recommend using it for downloads as soon as possible (such as when a webhook is received), if you are looking to cache thumbnails with you. |  |
| **published_at** | **Time** | Publishing timestamp of the content item. |  |
| **platform_content_id** | **String** | Unique content ID on the platform. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::PublishContentResponse1DataAllOfPublishedInfo.new(
  content_id: null,
  url: null,
  media_url: null,
  thumbnail_url: null,
  published_at: null,
  platform_content_id: null
)
```

