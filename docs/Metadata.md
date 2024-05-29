# Phyllo::Metadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Offset value passed in the query parameter. | [default to 0] |
| **limit** | **Integer** | Limit value passed in the query parameter. | [default to 10] |
| **from_date** | **String** | From date passed in the query parameter (YYYY-MM-DD). | [optional] |
| **to_date** | **String** | To date passed in the query parameter (YYYY-MM-DD). | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Metadata.new(
  offset: 0,
  limit: 10,
  from_date: 2020-12-31,
  to_date: 2021-12-31
)
```

