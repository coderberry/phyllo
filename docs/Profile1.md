# Phyllo::Profile1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the profile. |  |
| **created_at** | **Time** | Profile creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Profile updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  |  |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  |  |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  |  |
| **platform_username** | **String** | Username of the connected account. This is used to uniquely identify a user on any platform and usually the name that is present in the URLs, used to tag a user etc.  Ex - For YouTube, it&#39;s the channel name in the URL and for Instagram / Twitter / TikTok etc, it&#39;s the handle. |  |
| **full_name** | **String** | Full name of the user profile. | [optional] |
| **first_name** | **String** | First name of the user profile. | [optional] |
| **last_name** | **String** | Last name of the user profile. | [optional] |
| **nick_name** | **String** | Nickname of the user profile. | [optional] |
| **url** | **String** | Profile URL on the connected platform. | [optional] |
| **introduction** | **String** | Description of the profile.   Ex - For Instagram it&#39;s the bio and for YouTube it&#39;s the channel introduction. | [optional] |
| **image_url** | **String** | URL of the profile image on the platform. | [optional] |
| **date_of_birth** | **String** | Date of birth of the user on the platform. | [optional] |
| **external_id** | **String** | Unique identifier for the profile on the platform. | [optional] |
| **platform_account_type** | **String** | Account type of the user on the platform. | [optional] |
| **category** | **String** | Category of the user&#39;s platform account.  Ex - For Instagram it&#39;s the page type which could be beauty, fitness etc | [optional] |
| **website** | **String** | User website listed on the platform. | [optional] |
| **reputation** | [**Profile1Reputation**](Profile1Reputation.md) |  | [optional] |
| **emails** | [**Array&lt;Profile1EmailsInner&gt;**](Profile1EmailsInner.md) | Emails object. | [optional] |
| **phone_numbers** | [**Array&lt;Profile1PhoneNumbersInner&gt;**](Profile1PhoneNumbersInner.md) | Phone numbers object. | [optional] |
| **addresses** | [**Array&lt;Profile1AddressesInner&gt;**](Profile1AddressesInner.md) | Addresses object. | [optional] |
| **gender** | **String** | Gender of the user. |  |
| **country** | **String** | Country of the user on the connected platform. | [optional] |
| **platform_profile_name** | **String** | User&#39;s profile name on the work platform. This is not unique, is displayed prominently on the profile, usually editable and is most commonly associated with that user&#39;s identity on the platform.  Ex - For YouTube, it&#39;s the channel name displayed on the channel page and for Instagram / Twitter / TikTok etc, it&#39;s the name displayed on the user&#39;s profile page. | [optional] |
| **platform_profile_id** | **String** | Unique profile ID of the user on the work platform.   Ex - For YouTube it&#39;s the channel ID and for Instagram it&#39;s the Instagram page ID. | [optional] |
| **platform_profile_published_at** | **Time** | Timestamp when the profile was created on the platform. | [optional] |
| **is_verified** | **Boolean** | **true** if the user&#39;&#39;s profile is verified by the platform. | [optional] |
| **is_business** | **Boolean** | **true** if the user&#39;&#39;s profile is business account on the platform. | [optional] |
| **work_experiences** | [**Array&lt;WorkExperience1&gt;**](WorkExperience1.md) |  | [optional] |
| **education** | [**Array&lt;Education1&gt;**](Education1.md) |  | [optional] |
| **publications** | [**Array&lt;Publications1&gt;**](Publications1.md) |  | [optional] |
| **certifications** | [**Array&lt;Certifications1&gt;**](Certifications1.md) |  | [optional] |
| **volunteer_experiences** | [**Array&lt;VolunteerExperiences1&gt;**](VolunteerExperiences1.md) |  | [optional] |
| **honors** | [**Array&lt;Honors1&gt;**](Honors1.md) |  | [optional] |
| **projects** | [**Array&lt;Projects1&gt;**](Projects1.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Profile1.new(
  id: 12ccaf87-66c2-4b8e-9bf0-d0e8705334d1,
  created_at: null,
  updated_at: null,
  user: null,
  account: null,
  work_platform: null,
  platform_username: johndoe,
  full_name: John Doe,
  first_name: John,
  last_name: Doe,
  nick_name: John,
  url: https://instagram.com/12ccaf87,
  introduction: Cloud architect with enterprise expertise.,
  image_url: https://instagram.com/profiles/12ccaf87.png,
  date_of_birth: 11/26/1989,
  external_id: 12ccaf87,
  platform_account_type: CREATOR,
  category: Blog,
  website: https://www.johndoe.com,
  reputation: null,
  emails: null,
  phone_numbers: null,
  addresses: null,
  gender: MALE,
  country: US,
  platform_profile_name: CBSE WINNERS,
  platform_profile_id: UCEyLTzBtHJhlUwkeWhxfMXw,
  platform_profile_published_at: null,
  is_verified: true,
  is_business: true,
  work_experiences: null,
  education: null,
  publications: null,
  certifications: null,
  volunteer_experiences: null,
  honors: null,
  projects: null
)
```

