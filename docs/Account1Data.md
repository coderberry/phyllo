# Phyllo::Account1Data

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**Account1DataIdentity**](Account1DataIdentity.md) |  | [optional] |
| **engagement** | [**Account1DataEngagement**](Account1DataEngagement.md) |  | [optional] |
| **income** | [**Account1DataIncome**](Account1DataIncome.md) |  | [optional] |
| **activity** | [**Account1DataActivity**](Account1DataActivity.md) |  | [optional] |
| **publish** | [**Account1DataPublish**](Account1DataPublish.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Account1Data.new(
  identity: null,
  engagement: null,
  income: null,
  activity: null,
  publish: null
)
```

