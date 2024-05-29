# Activity API

YARDS Docs: https://www.rubydoc.info/github/coderberry/phyllo/main/Phyllo/ActivityApi

## Setup

```ruby
Phyllo.configure do |config|
  config.username = 'YOUR_CLIENT_ID'
  config.password = 'YOUR_CLIENT_SECRET'
end

client = Phyllo::ActivityApi.new
```

## Retrieve contents for an account (user activity) ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/list-v-1-media-activity-contents))

```ruby
account_id = "607fe16d-f4b7-4d80-b612-0ae88227fc43" # instagram
results = client.v1_get_media_activity_contents(account_id)
contents = results.data
```

## Retrieve artists for an account (user activity) ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/list-v-1-media-activity-artists))

```ruby
account_id = "607fe16d-f4b7-4d80-b612-0ae88227fc43" # instagram
results = client.v1_get_media_activity_artists(account_id)
artists = results.data
```
