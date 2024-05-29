# Webhook API

YARDS Docs: https://www.rubydoc.info/github/coderberry/phyllo/main/Phyllo/IdentityApi

## Setup

```ruby
Phyllo.configure do |config|
  config.username = 'YOUR_CLIENT_ID'
  config.password = 'YOUR_CLIENT_SECRET'
end

client = Phyllo::WebhookApi.new
```

## Create a webhook ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/create-a-v-1-webhook))

```ruby
create_webhook_request =
  Phyllo::CreateWebhookRequest1.new(
    events: %w[
      ACCOUNTS.CONNECTED
      ACCOUNTS.DISCONNECTED
      PROFILES.ADDED
      PROFILES.UPDATED
      PROFILES_AUDIENCE.ADDED
      PROFILES_AUDIENCE.UPDATED
      CONTENTS.ADDED
      CONTENTS.UPDATED
      CONTENTS_COMMENTS.ADDED
      CONTENTS_COMMENTS.UPDATED
      CONTENT-GROUPS.ADDED
      CONTENT-GROUPS.UPDATED
      TRANSACTIONS.ADDED
      TRANSACTIONS.UPDATED
      PAYOUTS.ADDED
      PAYOUTS.UPDATED
      BALANCES.ADDED
      BALANCES.UPDATED
      CONTENTS.PUBLISH_SUCCESS
      CONTENTS.PUBLISH_READY
      CONTENTS.PUBLISH_FAILURE
      SESSION.EXPIRED
      ACTIVITY-ARTISTS.ADDED
      ACTIVITY-ARTISTS.UPDATED
      ACTIVITY-CONTENTS.ADDED
      ACTIVITY-CONTENTS.UPDATED
    ],
    name: "All the webhooks",
    url: "https://example.com/api/webhooks/phyllo"
  )

webhook_response = client.v1_webhook_post_webhooks(create_webhook_request1: create_webhook_request)
```

## Retrieve all webhooks ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/list-v-1-webhooks))

```ruby
results = client.v1_webhook_get_webhooks
webhooks = results.data
```

## Retrieve a webhook ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/get-a-v-1-webhook))

```ruby
webhook_id = "d5c49c1e-fc1c-477b-95f9-15801cd5e22d" # created in previous example
webhook = client.v1_webhook_get_webhooks_by_id(webhook_id)
```

## Update a webhook ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/update-a-v-1-webhook))

```ruby
webhook_id = "d5c49c1e-fc1c-477b-95f9-15801cd5e22d" # created in previous example
webhook = client.v1_webhook_get_webhooks_by_id(webhook_id)
webhook_attrs = webhook.to_hash.slice(:name, :is_active, :url, :events)
update_webhook_request = Phyllo::UpdateWebhookRequest1.new(webhook_attrs.merge({ is_active: false }))
webhook = client.v1_webhook_put_webhooks_by_id(webhook_id, update_webhook_request1: update_webhook_request)
```

## Delete a webhook ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/delete-a-v-1-webhook))

```ruby
webhook_id = "d5c49c1e-fc1c-477b-95f9-15801cd5e22d" # created in previous example
client.v1_webhook_delete_webhooks_by_id(webhook_id) # returns nil
```

## Send a mock webhook notification ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/create-a-v-1-webhook-send))

```ruby
send_webhook_payload = 
  Phyllo::SendWebhookPayload1.new(
    payload: {
      event: "PROFILES.ADDED",
      name: "profile added",
      data: {
        account_id: "edc2328f-0442-4df1-bea1-a40287de9d73",
        user_id: "daf71949-6a86-4b40-b8e1-cd58c6245753",
        profile_id: "8a9bb20d-6c01-43df-ab62-0cf5c7b8b364"
      }
    }
  )

results = client.v1_webhook_post_webhooks_send(send_webhook_payload1: send_webhook_payload)
```


