# Phyllo::WebhookPayload1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | Name of the event for which webhook is being triggered |  |
| **name** | **String** | Description of the event | [optional] |
| **data** | **Object** | Corresponding data payload, [read about the events and corresponding payloads here](../../../API/webhook-events) |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::WebhookPayload1.new(
  event: null,
  name: null,
  data: null
)
```

