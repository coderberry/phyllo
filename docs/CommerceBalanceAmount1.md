# Phyllo::CommerceBalanceAmount1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount for the given balance | [optional] |
| **currency** | **String** | 3 letter currency code as per ISO 4217 |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::CommerceBalanceAmount1.new(
  amount: 123.45,
  currency: USD
)
```

