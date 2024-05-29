# Phyllo::Content1Sponsored

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_sponsored** | **Boolean** | Indicates if the content item is sponsored. | [optional] |
| **tags** | **String** | Sponsor tag (can include mentions of the sponsor) | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::Content1Sponsored.new(
  is_sponsored: true,
  tags: null
)
```

