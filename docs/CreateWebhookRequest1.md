# Phyllo::CreateWebhookRequest1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL to which the webhook notification will be delivered. |  |
| **events** | **Array&lt;String&gt;** | Event type for which webhook will send the notification. |  |
| **name** | **String** | Reference name for the webhook |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::CreateWebhookRequest1.new(
  url: https://domainname.com/webhook,
  events: null,
  name: null
)
```

