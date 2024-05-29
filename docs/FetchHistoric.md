# Phyllo::FetchHistoric

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the account. |  |
| **from_date** | **Date** | Starting date from which the content items need to be refreshed, in YYYY-MM-DD format. |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::FetchHistoric.new(
  account_id: null,
  from_date: null
)
```

