# Phyllo::ActivityContent1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the content item. |  |
| **created_at** | **Time** | Object creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Object updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  | [optional] |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  | [optional] |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  | [optional] |
| **platform_content_id** | **String** | Unique content ID on the platform. |  |
| **title** | **String** | Title of the content item. |  |
| **format** | **String** | Media type of the content item. | [optional] |
| **type** | **String** | Platform specific content type. |  |
| **url** | **String** | Platform content URL. |  |
| **description** | **String** | Description of the content item. | [optional] |
| **thumbnail_url** | **String** | Thumbnail URL of the content item, which can be used to download the media thumbnail. This is usually a signed URL and may have certain expiry limits so we recommend using it for downloads as soon as possible (such as when a webhook is received), if you are looking to cache thumbnails with you. | [optional] |
| **embed_url** | **String** | Embed URL of the content item, which can be used to embed the media item. | [optional] |
| **activity_type** | **String** | Whether the media content is in the &#x60;TOP&#x60; contents of the user (as defined by the work platform) or is &#x60;SAVED&#x60; by the user or was a &#x60;RECENT&#x60; media played by the user. |  |
| **additional_info** | [**ActivityContent1AdditionalInfo**](ActivityContent1AdditionalInfo.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::ActivityContent1.new(
  id: cfcc6603-1d8f-47d9-926a-4b91cc143105,
  created_at: null,
  updated_at: null,
  user: null,
  account: null,
  work_platform: null,
  platform_content_id: 12ccaf87,
  title: USA Tours,
  format: VIDEO,
  type: VIDEO,
  url: https://youtu.be/jzWweY4xPe8,
  description: US tours video.,
  thumbnail_url: https://youtu.be/jzWweY4xPe8.png,
  embed_url: https://youtu.be/jzWweY4xPe8.png,
  activity_type: null,
  additional_info: null
)
```

