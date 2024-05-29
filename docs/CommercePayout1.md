# Phyllo::CommercePayout1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the payout. |  |
| **created_at** | **Time** | Object creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Object updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  |  |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  |  |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  |  |
| **amount** | **Float** | Amount for the given payout |  |
| **currency** | **String** | 3 letter currency code as per ISO 4217 |  |
| **status** | **String** | Status of the payout on the source platform |  |
| **payout_interval** | **String** | Regular interval at which the source platform processes payouts | [optional] |
| **bank_details** | [**CommercePayout1BankDetails**](CommercePayout1BankDetails.md) |  | [optional] |
| **external_id** | **String** | Payout ID given by the source platform |  |
| **payout_at** | **Time** | Date or timestamp of payout |  |
| **platform_profile_id** | **String** | Unique profile ID of the user on the work platform.   Ex - For YouTube it&#39;s the channel ID and for Instagram it&#39;s the Instagram page ID. |  |
| **platform_profile_name** | **String** | User&#39;s profile name on the work platform. This is not unique, is displayed prominently on the profile, usually editable and is most commonly associated with that user&#39;s identity on the platform.  Ex - For YouTube, it&#39;s the channel name displayed on the channel page and for Instagram / Twitter / TikTok etc, it&#39;s the name displayed on the user&#39;s profile page. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::CommercePayout1.new(
  id: null,
  created_at: null,
  updated_at: null,
  user: null,
  account: null,
  work_platform: null,
  amount: 123.45,
  currency: USD,
  status: null,
  payout_interval: null,
  bank_details: null,
  external_id: 5790fbc3-b022-437b-abf8-0492c7a82056,
  payout_at: null,
  platform_profile_id: UCEyLTzBtHJhlUwkeWhxfMXw,
  platform_profile_name: Peter Parker
)
```

