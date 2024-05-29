# Phyllo::WebhookResponse1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL to which webhook notifications will be delivered. |  |
| **id** | **String** | Unique ID of the webhook. |  |
| **created_at** | **Time** | UTC date and time of the object, when it was created, in ISO 8601 format. |  |
| **updated_at** | **Time** | UTC date and time of the object, when it was updated recently, in ISO 8601 format. |  |
| **is_active** | **Boolean** | **true** if webhook is active else **false**.   Note: If Phyllo fails to deliver the webhook in 3 attempts then it sets is_active to **false** and will not deliver notifications until you fix it and update the status by invoking the PUT /v1/webhooks/{webhook_id} API. | [default to true] |
| **events** | **Array&lt;String&gt;** | Event type for which the webhook notification is delivered |  |
| **name** | **String** | Reference name for the webhook |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::WebhookResponse1.new(
  url: https://domainname.com/webhook,
  id: 0994b847-cc69-4d98-bc99-c5e65e762add,
  created_at: null,
  updated_at: null,
  is_active: null,
  events: null,
  name: null
)
```

