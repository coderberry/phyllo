# Connect API

YARDS Docs: https://www.rubydoc.info/github/coderberry/phyllo/main/Phyllo/IdentityApi

## Setup

```ruby
Phyllo.configure do |config|
  config.username = 'YOUR_CLIENT_ID'
  config.password = 'YOUR_CLIENT_SECRET'
end

client = Phyllo::IdentityApi.new
```

## Retrieve all profiles ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/list-v-1-profiles))

```ruby
# All profiles
results = client.v1_stream_get_profiles
profiles = results.data

# Filter by User ID
user_id = "daf71949-6a86-4b40-b8e1-cd58c6245753"
results = client.v1_stream_get_profiles(user_id: user_id)
user_profiles = results.data

# Filter by Work Platform ID
twitter_platform_id = "7645460a-96e0-4192-a3ce-a1fc30641f72"
results = client.v1_stream_get_profiles(work_platform_id: twitter_platform_id)
twitter_profiles = results.data
```

## Retrieve a profile ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/get-a-v-1-profile))

```ruby
profile_id = "8a9bb20d-6c01-43df-ab62-0cf5c7b8b364"
profile = client.v1_stream_get_profile_by_id(profile_id)
```

## Refresh a profile ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/create-a-v-1-profile-refresh))

```ruby
account_id = "edc2328f-0442-4df1-bea1-a40287de9d73"
refresh = Phyllo::Refresh1.new(account_id: account_id)
results = client.v1_refresh_profile(refresh1: refresh)
```

## Retrieve audience demographics ([docs](https://docs.getphyllo.com/docs/api-reference/api/ref/operations/get-a-v-1-audience))

```ruby
account_id = "edc2328f-0442-4df1-bea1-a40287de9d73"
demographics = client.v1_get_audience_demographics(account_id)
```
