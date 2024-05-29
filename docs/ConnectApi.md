# Phyllo::ConnectApi

All URIs are relative to *https://api.sandbox.getphyllo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_connect_get_users**](ConnectApi.md#v1_connect_get_users) | **GET** /v1/users | Retrieve all users |
| [**v1_connect_get_users_by_external_id**](ConnectApi.md#v1_connect_get_users_by_external_id) | **GET** /v1/users/external_id/{external_id} | Retrieve a user by external ID |
| [**v1_connect_get_users_by_id**](ConnectApi.md#v1_connect_get_users_by_id) | **GET** /v1/users/{id} | Retrieve a user |
| [**v1_connect_get_work_platforms**](ConnectApi.md#v1_connect_get_work_platforms) | **GET** /v1/work-platforms | Retrieve all work platforms |
| [**v1_connect_get_work_platforms_by_id**](ConnectApi.md#v1_connect_get_work_platforms_by_id) | **GET** /v1/work-platforms/{id} | Retrieve a work platform |
| [**v1_connect_post_sdk_tokens**](ConnectApi.md#v1_connect_post_sdk_tokens) | **POST** /v1/sdk-tokens | Create an SDK token |
| [**v1_connect_post_users**](ConnectApi.md#v1_connect_post_users) | **POST** /v1/users | Create a user |
| [**v1_disconnect_account_by_id**](ConnectApi.md#v1_disconnect_account_by_id) | **POST** /v1/accounts/{id}/disconnect | Disconnect an account |
| [**v1_stream_get_accounts**](ConnectApi.md#v1_stream_get_accounts) | **GET** /v1/accounts | Retrieve all accounts |
| [**v1_stream_get_accounts_by_id**](ConnectApi.md#v1_stream_get_accounts_by_id) | **GET** /v1/accounts/{id} | Retrieve an account |


## v1_connect_get_users

> <UserResponseList1> v1_connect_get_users(opts)

Retrieve all users

Lists all Users.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::ConnectApi.new
opts = {
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56 # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
}

begin
  # Retrieve all users
  result = api_instance.v1_connect_get_users(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_get_users: #{e}"
end
```

#### Using the v1_connect_get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponseList1>, Integer, Hash)> v1_connect_get_users_with_http_info(opts)

```ruby
begin
  # Retrieve all users
  data, status_code, headers = api_instance.v1_connect_get_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponseList1>
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |

### Return type

[**UserResponseList1**](UserResponseList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_connect_get_users_by_external_id

> <User> v1_connect_get_users_by_external_id(external_id)

Retrieve a user by external ID

Retrieve the information of the User with the supplied External id.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::ConnectApi.new
external_id = 'external_id_example' # String | Unique ID for the user supplied by you

begin
  # Retrieve a user by external ID
  result = api_instance.v1_connect_get_users_by_external_id(external_id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_get_users_by_external_id: #{e}"
end
```

#### Using the v1_connect_get_users_by_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> v1_connect_get_users_by_external_id_with_http_info(external_id)

```ruby
begin
  # Retrieve a user by external ID
  data, status_code, headers = api_instance.v1_connect_get_users_by_external_id_with_http_info(external_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_get_users_by_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | Unique ID for the user supplied by you |  |

### Return type

[**User**](User.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_connect_get_users_by_id

> <User> v1_connect_get_users_by_id(id)

Retrieve a user

Retrieve the information of the User with the supplied User id.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::ConnectApi.new
id = 'id_example' # String | Unique identifier for the user.

begin
  # Retrieve a user
  result = api_instance.v1_connect_get_users_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_get_users_by_id: #{e}"
end
```

#### Using the v1_connect_get_users_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> v1_connect_get_users_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a user
  data, status_code, headers = api_instance.v1_connect_get_users_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_get_users_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the user. |  |

### Return type

[**User**](User.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_connect_get_work_platforms

> <WorkPlatformList1> v1_connect_get_work_platforms(opts)

Retrieve all work platforms

Lists all Work Platforms.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::ConnectApi.new
opts = {
  name: 'name', # String | Only return objects with the name provided.
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56 # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
}

begin
  # Retrieve all work platforms
  result = api_instance.v1_connect_get_work_platforms(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_get_work_platforms: #{e}"
end
```

#### Using the v1_connect_get_work_platforms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkPlatformList1>, Integer, Hash)> v1_connect_get_work_platforms_with_http_info(opts)

```ruby
begin
  # Retrieve all work platforms
  data, status_code, headers = api_instance.v1_connect_get_work_platforms_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkPlatformList1>
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_get_work_platforms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Only return objects with the name provided. | [optional] |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |

### Return type

[**WorkPlatformList1**](WorkPlatformList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_connect_get_work_platforms_by_id

> <WorkPlatform1> v1_connect_get_work_platforms_by_id(id)

Retrieve a work platform

Retrieves the information of the Work Platform object with the supplied Work Platform id.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::ConnectApi.new
id = '179a0bb4-c572-4477-9457-7dacf1b84848' # String | Unique identifier for the work platform.

begin
  # Retrieve a work platform
  result = api_instance.v1_connect_get_work_platforms_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_get_work_platforms_by_id: #{e}"
end
```

#### Using the v1_connect_get_work_platforms_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkPlatform1>, Integer, Hash)> v1_connect_get_work_platforms_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a work platform
  data, status_code, headers = api_instance.v1_connect_get_work_platforms_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkPlatform1>
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_get_work_platforms_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the work platform. |  |

### Return type

[**WorkPlatform1**](WorkPlatform1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_connect_post_sdk_tokens

> <SDKTokenResponse1> v1_connect_post_sdk_tokens(opts)

Create an SDK token

Creates the Connect SDK Token. This is required while initializing the Connect SDK.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::ConnectApi.new
opts = {
  sdk_token_request1: Phyllo::SDKTokenRequest1.new({user_id: 'cfcc6603-1d8f-47d9-926a-4b91cc143105', products: ['IDENTITY']}) # SDKTokenRequest1 | 
}

begin
  # Create an SDK token
  result = api_instance.v1_connect_post_sdk_tokens(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_post_sdk_tokens: #{e}"
end
```

#### Using the v1_connect_post_sdk_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SDKTokenResponse1>, Integer, Hash)> v1_connect_post_sdk_tokens_with_http_info(opts)

```ruby
begin
  # Create an SDK token
  data, status_code, headers = api_instance.v1_connect_post_sdk_tokens_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SDKTokenResponse1>
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_post_sdk_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sdk_token_request1** | [**SDKTokenRequest1**](SDKTokenRequest1.md) |  | [optional] |

### Return type

[**SDKTokenResponse1**](SDKTokenResponse1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_connect_post_users

> <User> v1_connect_post_users(opts)

Create a user

Create a User.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::ConnectApi.new
opts = {
  user_request1: Phyllo::UserRequest1.new({name: 'John Doe', external_id: '179a0bb4-c572-4477-9457-7dacf1b84848'}) # UserRequest1 | 
}

begin
  # Create a user
  result = api_instance.v1_connect_post_users(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_post_users: #{e}"
end
```

#### Using the v1_connect_post_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> v1_connect_post_users_with_http_info(opts)

```ruby
begin
  # Create a user
  data, status_code, headers = api_instance.v1_connect_post_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_connect_post_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_request1** | [**UserRequest1**](UserRequest1.md) |  | [optional] |

### Return type

[**User**](User.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_disconnect_account_by_id

> <DisconnectAccountResponse1> v1_disconnect_account_by_id(id, opts)

Disconnect an account

Disconnect the supplied account id. An Account represents the user account on the work platform end.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::ConnectApi.new
id = 'id_example' # String | Unique identifier for the account.
opts = {
  body: { ... } # Object | Empty JSON
}

begin
  # Disconnect an account
  result = api_instance.v1_disconnect_account_by_id(id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_disconnect_account_by_id: #{e}"
end
```

#### Using the v1_disconnect_account_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisconnectAccountResponse1>, Integer, Hash)> v1_disconnect_account_by_id_with_http_info(id, opts)

```ruby
begin
  # Disconnect an account
  data, status_code, headers = api_instance.v1_disconnect_account_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisconnectAccountResponse1>
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_disconnect_account_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the account. |  |
| **body** | **Object** | Empty JSON | [optional] |

### Return type

[**DisconnectAccountResponse1**](DisconnectAccountResponse1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_stream_get_accounts

> <AccountList1> v1_stream_get_accounts(opts)

Retrieve all accounts

Lists all Accounts. An Account represents the user account on the work platform end. A user can connect multiple account in the same or across multiple work platforms.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::ConnectApi.new
opts = {
  offset: 56, # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  work_platform_id: '12ccaf87-66c2-4b8e-9bf0-d0e8705334d1', # String | Unique ID of the work platform.
  user_id: '12ccaf87-66c2-4b8e-9bf0-d0e8705334d1' # String | Unique ID of the user.
}

begin
  # Retrieve all accounts
  result = api_instance.v1_stream_get_accounts(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_stream_get_accounts: #{e}"
end
```

#### Using the v1_stream_get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountList1>, Integer, Hash)> v1_stream_get_accounts_with_http_info(opts)

```ruby
begin
  # Retrieve all accounts
  data, status_code, headers = api_instance.v1_stream_get_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountList1>
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_stream_get_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **work_platform_id** | **String** | Unique ID of the work platform. | [optional] |
| **user_id** | **String** | Unique ID of the user. | [optional] |

### Return type

[**AccountList1**](AccountList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_stream_get_accounts_by_id

> <Account1> v1_stream_get_accounts_by_id(id)

Retrieve an account

Retrieve the information of the Account with the supplied Account id. An Account represents the user account on the work platform end. A user can connect multiple account in the same or across multiple work platforms.

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Phyllo::ConnectApi.new
id = 'id_example' # String | Unique identifier for the account.

begin
  # Retrieve an account
  result = api_instance.v1_stream_get_accounts_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_stream_get_accounts_by_id: #{e}"
end
```

#### Using the v1_stream_get_accounts_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account1>, Integer, Hash)> v1_stream_get_accounts_by_id_with_http_info(id)

```ruby
begin
  # Retrieve an account
  data, status_code, headers = api_instance.v1_stream_get_accounts_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account1>
rescue Phyllo::ApiError => e
  puts "Error when calling ConnectApi->v1_stream_get_accounts_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the account. |  |

### Return type

[**Account1**](Account1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

