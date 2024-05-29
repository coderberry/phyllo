# Phyllo::WorkPlatform1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the work platform. |  |
| **name** | **String** | Name of the work platform |  |
| **logo_url** | **String** | Image URL for the work platform logo. |  |
| **created_at** | **Time** | Object creation timestamp (UTC date and time in ISO 8601 format) |  |
| **updated_at** | **Time** | Object updation timestamp (UTC date and time in ISO 8601 format) |  |
| **category** | **String** | Category of the work platform. |  |
| **status** | **String** | Current status of the work platform. |  |
| **url** | **String** | URL of the work platform. |  |
| **products** | [**WorkPlatform1Products**](WorkPlatform1Products.md) |  |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::WorkPlatform1.new(
  id: 179a0bb4-c572-4477-9457-7dacf1b84848,
  name: Instagram,
  logo_url: https://getphyllo.com/storage/instagram.png,
  created_at: null,
  updated_at: null,
  category: MEDIA,
  status: ACTIVE,
  url: https://www.instagram.com,
  products: null
)
```

