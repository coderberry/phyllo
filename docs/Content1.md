# Phyllo::Content1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the content item. |  |
| **created_at** | **Time** | Object creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Object updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  | [optional] |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  | [optional] |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  | [optional] |
| **engagement** | [**Content1Engagement**](Content1Engagement.md) |  | [optional] |
| **external_id** | **String** | Unique content ID on the platform. |  |
| **title** | **String** | Title of the content item. |  |
| **format** | **String** | Media type of the content item. | [optional] |
| **type** | **String** | Platform specific content type. |  |
| **url** | **String** | Platform content URL. |  |
| **media_url** | **String** | Direct media URL of the content item, which can be used to download the media item. This is usually a signed URL and may have certain expiry limits so we recommend using it for downloads as soon as possible (such as when a webhook is received), if you are looking to cache media files with you. | [optional] |
| **duration** | **Integer** | Video duration in seconds (only available for YouTube). |  |
| **description** | **String** | Description of the content item. | [optional] |
| **hashtags** | **Array&lt;String&gt;** | List of hashtags found in the title or description of the content item. If there are no hashtags in the title or description of the content item, then the attribute will be null. | [optional] |
| **mentions** | **Array&lt;String&gt;** | List of mentions found in the title or description of the content item. If there are no mentions in the title or description of the content item, then the attribute will be null. | [optional] |
| **visibility** | **String** | Visibility of the content item. | [optional] |
| **thumbnail_url** | **String** | Thumbnail URL of the content item, which can be used to download the media thumbnail. This is usually a signed URL and may have certain expiry limits so we recommend using it for downloads as soon as possible (such as when a webhook is received), if you are looking to cache thumbnails with you. | [optional] |
| **persistent_thumbnail_url** | **String** | Persistent thumbnail URL of the content item. | [optional] |
| **published_at** | **Time** | Publishing timestamp of the content item. |  |
| **platform_profile_id** | **String** | Unique profile ID of the user on the work platform.   Ex - For YouTube it&#39;s the channel ID and for Instagram it&#39;s the Instagram page ID. |  |
| **platform_profile_name** | **String** | User&#39;s profile name on the work platform. This is not unique, is displayed prominently on the profile, usually editable and is most commonly associated with that user&#39;s identity on the platform.  Ex - For YouTube, it&#39;s the channel name displayed on the channel page and for Instagram / Twitter / TikTok etc, it&#39;s the name displayed on the user&#39;s profile page. |  |
| **authors** | **Array&lt;String&gt;** | Names of the authors of the publication | [optional] |
| **audience** | **String** | Audience type that the post will be accessible to. | [optional] |
| **platform** | **String** | Platform the the post was published to. | [optional] |
| **content_tags** | **Array&lt;String&gt;** | Content tags associated with the publica | [optional] |
| **sponsored** | [**Content1Sponsored**](Content1Sponsored.md) |  | [optional] |
| **collaboration** | [**Content1Collaboration**](Content1Collaboration.md) |  | [optional] |
| **is_owned_by_platform_user** | **Boolean** | **true**, if the content is owned by the creator. In YouTube, it is possible that content is actually owned by another creator, but current creator has linked that content in their playlist. In such a case the content will still be listed for the current creator. | [default to true] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Content1.new(
  id: cfcc6603-1d8f-47d9-926a-4b91cc143105,
  created_at: null,
  updated_at: null,
  user: null,
  account: null,
  work_platform: null,
  engagement: null,
  external_id: 12ccaf87,
  title: USA Tours,
  format: VIDEO,
  type: VIDEO,
  url: https://youtu.be/jzWweY4xPe8,
  media_url: https://video.cdninstagram.com/v/t50.16885-16/273384537_472655704353078_8308247021721136693_n.mp4?_nc_cat&#x3D;100&amp;vs&#x3D;661086908417570_1261186177&amp;_nc_vs&#x3D;HBksFQAYJEdGbUVTeEEyNlZ1NzRLMEJBRFd1NHJPbDBreHpidlZCQUFBRhUAAsgBABUAGCRHSnU0U3hEM2kwQ0VQVk1EQUM3S29OeTlueUJzYnZWQkFBQUYVAgLIAQAoABgAGwGIB3VzZV9vaWwBMRUAACbG3%2FGq0JXjPxUCKAJDMywXQCOhysCDEm8YEmRhc2hfYmFzZWxpbmVfMV92MREAdewHAA%3D%3D&amp;ccb&#x3D;1-5&amp;_nc_sid&#x3D;59939d&amp;efg&#x3D;eyJ2ZW5jb2RlX3RhZyI6InZ0c192b2RfdXJsZ2VuLjQ4MC5pZ3R2In0%3D&amp;_nc_ohc&#x3D;qcTIWWC39rQAX9xprW6&amp;_nc_ht&#x3D;video.cdninstagram.com&amp;edm&#x3D;AM6HXa8EAAAA&amp;oh&#x3D;00_AT85xcdCSq921RH5KCSfIukPMfk0QCajZEP5Ym4fY3p1Pw&amp;oe&#x3D;621D1EA5&amp;_nc_rid&#x3D;5d42feb0d5,
  duration: 523,
  description: Super cuteLeopard print cardigan available in navy blue and the coffee color. Only $9.89 reg priced at $34.99 on @amazon #couponcommunity #amazonfinds #like #amazondeals #promocodes #rundeal #explorepage #amazon #neverpayfullprice #onlinedeals&quot;,
  hashtags: null,
  mentions: null,
  visibility: PUBLIC,
  thumbnail_url: https://youtu.be/jzWweY4xPe8.png,
  persistent_thumbnail_url: https://youtu.be/jzWweY4xPe8.png,
  published_at: null,
  platform_profile_id: UCEyLTzBtHJhlUwkeWhxfMXw,
  platform_profile_name: CBSE WINNERS,
  authors: null,
  audience: null,
  platform: null,
  content_tags: null,
  sponsored: null,
  collaboration: null,
  is_owned_by_platform_user: null
)
```

