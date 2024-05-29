# Phyllo::CommerceBalance1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the balance. |  |
| **created_at** | **Time** | Object creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Object updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  |  |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  |  |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  |  |
| **balance** | [**Array&lt;CommerceBalanceAmount1&gt;**](CommerceBalanceAmount1.md) | List of balances in different currencies on the given date | [optional] |
| **balance_at** | **Time** | Date of balance |  |
| **platform_profile_id** | **String** | Unique profile ID of the user on the work platform.   Ex - For YouTube it&#39;s the channel ID and for Instagram it&#39;s the Instagram page ID. |  |
| **platform_profile_name** | **String** | User&#39;s profile name on the work platform. This is not unique, is displayed prominently on the profile, usually editable and is most commonly associated with that user&#39;s identity on the platform.  Ex - For YouTube, it&#39;s the channel name displayed on the channel page and for Instagram / Twitter / TikTok etc, it&#39;s the name displayed on the user&#39;s profile page. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::CommerceBalance1.new(
  id: null,
  created_at: null,
  updated_at: null,
  user: null,
  account: null,
  work_platform: null,
  balance: null,
  balance_at: null,
  platform_profile_id: UCEyLTzBtHJhlUwkeWhxfMXw,
  platform_profile_name: Peter Parker
)
```

