# Phyllo::UpdateWebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL to which the webhook notification will be delivered. |  |
| **events** | **Array&lt;String&gt;** | Event type for which webhook will send the notification. |  |
| **is_active** | **Boolean** | **true** if webhook should be set to active else **false**.   Note: If Phyllo fails to deliver the webhook in 3 attempts then it sets is_active to **false** and will not deliver notifications until you fix it and update the status by invoking the PUT /v1/webhooks/{webhook_id} API. | [optional][default to true] |
| **name** | **String** | Reference name for the webhook |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::UpdateWebhookRequest.new(
  url: https://domainname.com/webhook,
  events: null,
  is_active: null,
  name: null
)
```

