# Connect API

YARD Docs: https://www.rubydoc.info/github/coderberry/phyllo/main/Phyllo/ConnectApi

## Setup

```ruby
Phyllo.configure do |config|
  config.username = 'YOUR_CLIENT_ID'
  config.password = 'YOUR_CLIENT_SECRET'
end

client = Phyllo::ConnectApi.new
```

## Retrieve all users ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/list-v-1-users))

```ruby
results = client.v1_connect_get_users(limit: 10, offset: 0)
users = results.data
```

## Retrieve a user ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/get-a-v-1-user))

```ruby
user_id = "daf71949-6a86-4b40-b8e1-cd58c6245753"
user = client.v1_connect_get_users_by_id(user_id)
```

## Create a user ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/create-a-v-1-user))

```ruby
user_request = Phyllo::UserRequest1.new(external_id: "my-external-id-123", name: "Joe Schmoe")
user = client.v1_connect_post_users(user_request1: user_request)
```

## Retrieve a user by external ID ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/get-a-v-1-user-external-id))

```ruby
external_user_id = "my-external-id-123" 
user = client.v1_connect_get_users_by_external_id(external_user_id)
```

## Retrieve all work platforms ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/list-v-1-work-platforms))

```ruby
results = client.v1_connect_get_work_platforms
work_platforms = results.data
```

## Retrieve a work platform ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/get-a-v-1-work-platform))

```ruby
twitter_platform_id = "7645460a-96e0-4192-a3ce-a1fc30641f72"
twitter_platform = client.v1_connect_get_work_platforms_by_id(twitter_platform_id)
```

## Retrieve all accounts ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/list-v-1-accounts))

```ruby
# All accounts
results = client.v1_stream_get_accounts
accounts = results.data

# Filter by User ID
user_id = "daf71949-6a86-4b40-b8e1-cd58c6245753"
results = client.v1_stream_get_accounts(user_id: user_id)
user_accounts = results.data

# Filter by Work Platform ID
twitter_platform_id = "7645460a-96e0-4192-a3ce-a1fc30641f72"
results = client.v1_stream_get_accounts(work_platform_id: twitter_platform_id)
twitter_accounts = results.data
```

## Retrieve an account ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/get-a-v-1-account))

```ruby
account_id = "edc2328f-0442-4df1-bea1-a40287de9d73"
account = client.v1_stream_get_accounts_by_id(account_id)
```

## Disconnect an account ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/create-a-v-1-account-disconnect))

```ruby
account_id = "d33e24a5-bb65-467e-8038-fb85ddf9fefa"
results = client.v1_disconnect_account_by_id(account_id)
puts results

# {
#   :id=>"d33e24a5-bb65-467e-8038-fb85ddf9fefa", 
#   :created_at=>2024-05-28 15:16:10.845867 -0600, 
#   :updated_at=>2024-05-29 16:31:23.304644 -0600, 
#   :user=>{
#     :id=>"7e256f9f-2017-48fe-9860-e46173130aed", :name=>"Eric"}, 
#   :work_platform=>{:id=>"7645460a-96e0-4192-a3ce-a1fc30641f72", :name=>"X", :logo_url=>"https://cdn.getphyllo.com/platforms_logo/logos/logo_x.png"}, 
#   :status=>"NOT_CONNECTED"
# }
```

## Create an SDK Token ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/create-a-v-1-sdk-token))

```ruby
sdk_token_request = 
  Phyllo::SDKTokenRequest1.new(
    user_id: "daf71949-6a86-4b40-b8e1-cd58c6245753",
    products: %w[
      IDENTITY
      IDENTITY.AUDIENCE
      ENGAGEMENT
      ENGAGEMENT.AUDIENCE
      INCOME
      PUBLISH.CONTENT
      ACTIVITY
    ]
  )

token_response = client.v1_connect_post_sdk_tokens(sdk_token_request1: sdk_token_request)
```
