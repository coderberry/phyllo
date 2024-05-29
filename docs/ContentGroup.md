# Phyllo::ContentGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the content group. |  |
| **created_at** | **Time** | Object creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Object updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  | [optional] |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  | [optional] |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  | [optional] |
| **engagement** | [**ContentGroup1Engagement**](ContentGroup1Engagement.md) |  | [optional] |
| **external_id** | **String** | Unique content group ID on the platform. |  |
| **title** | **String** | Title of the content group. |  |
| **format** | **String** | Media type of the content item. | [optional] |
| **type** | **String** | Platform specific content type. |  |
| **url** | **String** | Platform content group URL. Ex - for YouTube, it will the playlist URL. | [optional] |
| **description** | **String** | Description of the content group. | [optional] |
| **visibility** | **String** | Visibility of the content group. | [optional] |
| **thumbnail_url** | **String** | Thumbnail URL of the content group, which can be used to download the media thumbnail. This is usually a signed URL and may have certain expiry limits so we recommend using it for downloads as soon as possible (such as when a webhook is received), if you are looking to cache thumbnails with you. | [optional] |
| **published_at** | **Time** | Publishing timestamp of the content group. |  |
| **platform_profile_id** | **String** | Unique profile ID of the user on the work platform.   Ex - For YouTube it&#39;s the channel ID and for Instagram it&#39;s the Instagram page ID. |  |
| **platform_profile_name** | **String** | User&#39;s profile name on the work platform. This is not unique, is displayed prominently on the profile, usually editable and is most commonly associated with that user&#39;s identity on the platform.  Ex - For YouTube, it&#39;s the channel name displayed on the channel page and for Instagram / Twitter / TikTok etc, it&#39;s the name displayed on the user&#39;s profile page. |  |
| **item_count** | **Integer** | Number of content items in this content group. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::ContentGroup.new(
  id: cfcc6603-1d8f-47d9-926a-4b91cc143105,
  created_at: null,
  updated_at: null,
  user: null,
  account: null,
  work_platform: null,
  engagement: null,
  external_id: fb83e3ca-eae7-4eaa-bf51-601ea4b3daeb,
  title: USA Tours,
  format: VIDEO,
  type: ALBUM,
  url: https://youtu.be/jzWweY4xPe8,
  description: US tours video.,
  visibility: PUBLIC,
  thumbnail_url: https://youtu.be/jzWweY4xPe8.png,
  published_at: null,
  platform_profile_id: UCEyLTzBtHJhlUwkeWhxfMXw,
  platform_profile_name: CBSE WINNERS,
  item_count: null
)
```

