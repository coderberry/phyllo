# Phyllo::ActivityContent1AdditionalInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **genre** | **Array&lt;String&gt;** | List of genres that the content is categorised into by the platform. | [optional] |
| **artists** | **Array&lt;String&gt;** | List of artist names associated with the content. | [optional] |
| **album** | **String** | Name of the album that the track belongs to. | [optional] |

## Example

```ruby
require 'phyllo'

instance = Phyllo::ActivityContent1AdditionalInfo.new(
  genre: null,
  artists: null,
  album: null
)
```

