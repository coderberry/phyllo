# Phyllo::Account1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the connected account. |  |
| **created_at** | **Time** | Account creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Account updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  |  |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  |  |
| **platform_username** | **String** | Username of the connected account. This is used to uniquely identify a user on any platform and usually the name that is present in the URLs, used to tag a user etc.  Ex - For YouTube, it&#39;s the channel name in the URL and for Instagram / Twitter / TikTok etc, it&#39;s the handle. |  |
| **profile_pic_url** | **String** | URL of the user&#39;s profile image from the work platform. | [optional] |
| **status** | **String** | Account connection status. |  |
| **platform_profile_name** | **String** | User&#39;s profile name on the work platform. This is not unique, is displayed prominently on the profile, usually editable and is most commonly associated with that user&#39;s identity on the platform.  Ex - For YouTube, it&#39;s the channel name displayed on the channel page and for Instagram / Twitter / TikTok etc, it&#39;s the name displayed on the user&#39;s profile page. |  |
| **platform_profile_id** | **String** | Unique profile ID of the user on the work platform.   Ex - For YouTube it&#39;s the channel ID and for Instagram it&#39;s the Instagram page ID. |  |
| **platform_profile_published_at** | **Time** | Timestamp when the profile was created on the platform. | [optional] |
| **data** | [**Account1Data**](Account1Data.md) |  |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Account1.new(
  id: 12ccaf87-66c2-4b8e-9bf0-d0e8705334d1,
  created_at: null,
  updated_at: null,
  user: null,
  work_platform: null,
  platform_username: john.boyer@gmail.com,
  profile_pic_url: https://platform_domain_name/profile_pic_image.png,
  status: CONNECTED,
  platform_profile_name: CBSE WINNERS,
  platform_profile_id: UCEyLTzBtHJhlUwkeWhxfMXw,
  platform_profile_published_at: null,
  data: null
)
```

