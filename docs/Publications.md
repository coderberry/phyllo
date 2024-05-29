# Phyllo::Publications

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the publication | [optional] |
| **publisher** | **String** | Name of the publisher | [optional] |
| **description** | **String** | Description of the publication | [optional] |
| **url** | **String** | Publication URL | [optional] |
| **date** | [**Publications1Date**](Publications1Date.md) |  | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Publications.new(
  name: null,
  publisher: null,
  description: null,
  url: null,
  date: null
)
```

