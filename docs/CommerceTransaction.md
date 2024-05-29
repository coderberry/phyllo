# Phyllo::CommerceTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the transaction. |  |
| **created_at** | **Time** | Object creation time (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Object updation time (UTC date and time in ISO 8601 format) |  |
| **user** | [**UserAttribute1**](UserAttribute1.md) |  |  |
| **account** | [**AccountAttribute1**](AccountAttribute1.md) |  |  |
| **work_platform** | [**WorkPlatformAttribute1**](WorkPlatformAttribute1.md) |  |  |
| **amount** | **Float** | Amount for the given transaction |  |
| **currency** | **String** | 3 letter currency code as per ISO 4217 |  |
| **type** | **String** | Type of the transaction |  |
| **status** | **String** | Status of the transaction on the source platform |  |
| **external_id** | **String** | Transaction ID given by the source platform |  |
| **transaction_at** | **Time** | Date or timestamp of transaction |  |
| **platform_profile_id** | **String** | Unique profile ID of the user on the work platform.   Ex - For YouTube it&#39;s the channel ID and for Instagram it&#39;s the Instagram page ID. |  |
| **platform_profile_name** | **String** | User&#39;s profile name on the work platform. This is not unique, is displayed prominently on the profile, usually editable and is most commonly associated with that user&#39;s identity on the platform.  Ex - For YouTube, it&#39;s the channel name displayed on the channel page and for Instagram / Twitter / TikTok etc, it&#39;s the name displayed on the user&#39;s profile page. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::CommerceTransaction.new(
  id: null,
  created_at: null,
  updated_at: null,
  user: null,
  account: null,
  work_platform: null,
  amount: 123.45,
  currency: USD,
  type: null,
  status: null,
  external_id: 5790fbc3-b022-437b-abf8-0492c7a82056,
  transaction_at: null,
  platform_profile_id: UCEyLTzBtHJhlUwkeWhxfMXw,
  platform_profile_name: Peter Parker
)
```

