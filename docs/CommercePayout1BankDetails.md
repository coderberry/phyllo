# Phyllo::CommercePayout1BankDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Bank name to which the payouts are sent | [optional] |
| **account_last_digits** | **String** | Last 4 characters of the bank account to which the payouts are sent | [optional] |
| **account_routing_number** | **String** | Routing number of the bank account to which the payouts are sent | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::CommercePayout1BankDetails.new(
  name: null,
  account_last_digits: null,
  account_routing_number: null
)
```

