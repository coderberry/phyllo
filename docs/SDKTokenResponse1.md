# Phyllo::SDKTokenResponse1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sdk_token** | **String** | Token which is used to initialise the connect SDK. |  |
| **expires_at** | **Time** | Token expiry time (UTC date and time in ISO 8601 format) |  |

## Example

```ruby
require 'phyllo'

instance = Phyllo::SDKTokenResponse1.new(
  sdk_token: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiOTU0NmI0ZmUtY2VmNy00OGM0LWFiOWYtOTYwZGQwMDgwNzI4IiwidGVuYW50X2lkIjoiMjg1Yjc1Y2EtMjE5MS00ZWEyLWJkMzQtNDdjZGI4NDEzNmVkIiwidGVuYW50X2FwcF9pZCI6IjljOGY0ZTUyLWE4MmQtNGQ0Ny05MmQzLTdmNGQ4MGM4NWZkNiIsInByb2R1Y3RzIjpbIklOQ09NRSIsIkVOR0FHRU1FTlQiLCJFTkdBR0VNRU5UX0FVRElFTkNFIiwiSURFTlRJVFkiXSwiaXNzIjoiaHR0cHM6Ly9hcGkuc2FuZGJveC5nZXRwaHlsbG8uY29tIiwiYXVkIjoiaHR0cHM6Ly9hcGkuc2FuZGJveC5nZXRwaHlsbG8uY29tL3YxL2ludGVybmFsIiwiaWF0IjoxNjQ4NTc1NDQ3LjUyNTAxMywiZXhwIjoxNjQ5MTgwMjQ3LjUyNTAwMn0.0fvAvCTpD1mKukAPq5r2nktLaQuxYWK7vVz2-xNkawc,
  expires_at: null
)
```

