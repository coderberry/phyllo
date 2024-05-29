# Phyllo::ActivityArtist

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the artist. |  |
| **created_at** | **Time** | Object creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Object updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  |  |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  |  |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  |  |
| **platform_artist_id** | **String** | Unique artist ID given by the source platform. |  |
| **image_url** | **String** | Image URL of the artist on the platform. | [optional] |
| **artist_name** | **String** | Artist&#39;s name on the platform. |  |
| **artist_url** | **String** | URL of the artist&#39;s page/profile on the platform. | [optional] |
| **genre** | **Array&lt;String&gt;** | List of genres that the artist is categorised into by the work platform. | [optional] |
| **activity_type** | **String** | Whether the artist is in the &#x60;TOP&#x60; artists of the user (as defined by the work platform) or is &#x60;FOLLOWED&#x60; by the user. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::ActivityArtist.new(
  id: null,
  created_at: null,
  updated_at: null,
  user: null,
  account: null,
  work_platform: null,
  platform_artist_id: null,
  image_url: null,
  artist_name: null,
  artist_url: null,
  genre: null,
  activity_type: null
)
```

