# Engagement API

YARDS Docs: https://www.rubydoc.info/github/coderberry/phyllo/main/Phyllo/IdentityApi

## Setup

```ruby
Phyllo.configure do |config|
  config.username = 'YOUR_CLIENT_ID'
  config.password = 'YOUR_CLIENT_SECRET'
end

client = Phyllo::EngagementApi.new
```

## Retrieve all content items ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/list-v-1-social-contents))

```ruby
# All contents
account_id = "edc2328f-0442-4df1-bea1-a40287de9d73"
results = client.v1_stream_get_contents(account_id)
contents = results.data

# Filter by data range
from_date = Date.today - 15 # 15 days ago
to_date = Date.today
account_id = "edc2328f-0442-4df1-bea1-a40287de9d73"
results = client.v1_stream_get_contents(account_id, from_date: from_date, to_date: to_date)
contents = results.data
```
