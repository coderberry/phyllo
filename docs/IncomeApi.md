# Phyllo::IncomeApi

All URIs are relative to *https://api.sandbox.getphyllo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**v1_fetch_historic_commerce_income_balances**](IncomeApi.md#v1_fetch_historic_commerce_income_balances) | **POST** /v1/commerce/income/balances/fetch-historic | Fetch historic e-commerce balances for an account |
| [**v1_fetch_historic_commerce_income_payouts**](IncomeApi.md#v1_fetch_historic_commerce_income_payouts) | **POST** /v1/commerce/income/payouts/fetch-historic | Fetch historic e-commerce payouts for an account |
| [**v1_fetch_historic_commerce_income_transactions**](IncomeApi.md#v1_fetch_historic_commerce_income_transactions) | **POST** /v1/commerce/income/transactions/fetch-historic | Fetch historic e-commerce transactions for an account |
| [**v1_fetch_historic_social_income_payouts**](IncomeApi.md#v1_fetch_historic_social_income_payouts) | **POST** /v1/social/income/payouts/fetch-historic | Fetch historic social payouts for an account |
| [**v1_fetch_historic_social_income_transactions**](IncomeApi.md#v1_fetch_historic_social_income_transactions) | **POST** /v1/social/income/transactions/fetch-historic | Fetch historic social transactions for an account |
| [**v1_get_commerce_income_balance_by_id**](IncomeApi.md#v1_get_commerce_income_balance_by_id) | **GET** /v1/commerce/income/balances/{id} | Retrieve a e-commerce balance |
| [**v1_get_commerce_income_balances**](IncomeApi.md#v1_get_commerce_income_balances) | **GET** /v1/commerce/income/balances | Retrieve e-commerce balances for an account |
| [**v1_get_commerce_income_payout_by_id**](IncomeApi.md#v1_get_commerce_income_payout_by_id) | **GET** /v1/commerce/income/payouts/{id} | Retrieve a e-commerce payout |
| [**v1_get_commerce_income_payouts**](IncomeApi.md#v1_get_commerce_income_payouts) | **GET** /v1/commerce/income/payouts | Retrieve e-commerce payouts for an account |
| [**v1_get_commerce_income_transaction_by_id**](IncomeApi.md#v1_get_commerce_income_transaction_by_id) | **GET** /v1/commerce/income/transactions/{id} | Retrieve a e-commerce transaction |
| [**v1_get_commerce_income_transactions**](IncomeApi.md#v1_get_commerce_income_transactions) | **GET** /v1/commerce/income/transactions | Retrieve e-commerce transactions for an account |
| [**v1_get_social_income_payout_by_id**](IncomeApi.md#v1_get_social_income_payout_by_id) | **GET** /v1/social/income/payouts/{id} | Retrieve a social payout |
| [**v1_get_social_income_payouts**](IncomeApi.md#v1_get_social_income_payouts) | **GET** /v1/social/income/payouts | Retrieve social payouts for an account |
| [**v1_get_social_income_transaction_by_id**](IncomeApi.md#v1_get_social_income_transaction_by_id) | **GET** /v1/social/income/transactions/{id} | Retrieve a social transaction |
| [**v1_get_social_income_transactions**](IncomeApi.md#v1_get_social_income_transactions) | **GET** /v1/social/income/transactions | Retrieve social transactions for an account |
| [**v1_refresh_commerce_income_balances**](IncomeApi.md#v1_refresh_commerce_income_balances) | **POST** /v1/commerce/income/balances/refresh | Refresh e-commerce balances for an account |
| [**v1_refresh_commerce_income_payouts**](IncomeApi.md#v1_refresh_commerce_income_payouts) | **POST** /v1/commerce/income/payouts/refresh | Refresh e-commerce payouts for an account |
| [**v1_refresh_commerce_income_transactions**](IncomeApi.md#v1_refresh_commerce_income_transactions) | **POST** /v1/commerce/income/transactions/refresh | Refresh e-commerce transactions for an account |
| [**v1_refresh_social_income_payouts**](IncomeApi.md#v1_refresh_social_income_payouts) | **POST** /v1/social/income/payouts/refresh | Refresh social payouts for an account |
| [**v1_refresh_social_income_transactions**](IncomeApi.md#v1_refresh_social_income_transactions) | **POST** /v1/social/income/transactions/refresh | Refresh social transactions for an account |
| [**v1_search_commerce_income_balances**](IncomeApi.md#v1_search_commerce_income_balances) | **POST** /v1/commerce/income/balances/search | Retrieve e-commerce balances in bulk |
| [**v1_search_commerce_income_payouts**](IncomeApi.md#v1_search_commerce_income_payouts) | **POST** /v1/commerce/income/payouts/search | Retrieve e-commerce payouts in bulk |
| [**v1_search_commerce_income_transactions**](IncomeApi.md#v1_search_commerce_income_transactions) | **POST** /v1/commerce/income/transactions/search | Retrieve e-commerce transactions in bulk |
| [**v1_search_social_income_payouts**](IncomeApi.md#v1_search_social_income_payouts) | **POST** /v1/social/income/payouts/search | Retrieve social payouts in bulk |
| [**v1_search_social_income_transactions**](IncomeApi.md#v1_search_social_income_transactions) | **POST** /v1/social/income/transactions/search | Retrieve social transactions in bulk |


## v1_fetch_historic_commerce_income_balances

> <FetchHistoric1> v1_fetch_historic_commerce_income_balances(opts)

Fetch historic e-commerce balances for an account

Fetch balances for a connected e-commerce account starting from a specific date till today by providing the `from_date`. Once Phyllo processes the request, you can fetch the updated balances by calling the [retrieve e-commerce balances API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1balances/get).   Subscribe to the \"BALANCES.ADDED\" and \"BALANCES.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve e-commerce balances in bulk API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1balances~1search/post) for optimal performance.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  fetch_historic1: Phyllo::FetchHistoric1.new({account_id: 'account_id_example', from_date: Date.today}) # FetchHistoric1 | 
}

begin
  # Fetch historic e-commerce balances for an account
  result = api_instance.v1_fetch_historic_commerce_income_balances(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_fetch_historic_commerce_income_balances: #{e}"
end
```

#### Using the v1_fetch_historic_commerce_income_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FetchHistoric1>, Integer, Hash)> v1_fetch_historic_commerce_income_balances_with_http_info(opts)

```ruby
begin
  # Fetch historic e-commerce balances for an account
  data, status_code, headers = api_instance.v1_fetch_historic_commerce_income_balances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FetchHistoric1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_fetch_historic_commerce_income_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fetch_historic1** | [**FetchHistoric1**](FetchHistoric1.md) |  | [optional] |

### Return type

[**FetchHistoric1**](FetchHistoric1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_fetch_historic_commerce_income_payouts

> <FetchHistoric1> v1_fetch_historic_commerce_income_payouts(opts)

Fetch historic e-commerce payouts for an account

Fetch payouts for a connected e-commerce account starting from a specific date till today by providing the `from_date`. Once Phyllo processes the request, you can fetch the updated payouts by calling the [retrieve e-commerce payouts API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1payouts/get).   Subscribe to the \"PAYOUTS.ADDED\" and \"PAYOUTS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve e-commerce payouts in bulk API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1payouts~1search/post) for optimal performance.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  fetch_historic1: Phyllo::FetchHistoric1.new({account_id: 'account_id_example', from_date: Date.today}) # FetchHistoric1 | 
}

begin
  # Fetch historic e-commerce payouts for an account
  result = api_instance.v1_fetch_historic_commerce_income_payouts(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_fetch_historic_commerce_income_payouts: #{e}"
end
```

#### Using the v1_fetch_historic_commerce_income_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FetchHistoric1>, Integer, Hash)> v1_fetch_historic_commerce_income_payouts_with_http_info(opts)

```ruby
begin
  # Fetch historic e-commerce payouts for an account
  data, status_code, headers = api_instance.v1_fetch_historic_commerce_income_payouts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FetchHistoric1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_fetch_historic_commerce_income_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fetch_historic1** | [**FetchHistoric1**](FetchHistoric1.md) |  | [optional] |

### Return type

[**FetchHistoric1**](FetchHistoric1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_fetch_historic_commerce_income_transactions

> <FetchHistoric1> v1_fetch_historic_commerce_income_transactions(opts)

Fetch historic e-commerce transactions for an account

Fetch transactions for a connected e-commerce account starting from a specific date till today by providing the `from_date`. Once Phyllo processes the request, you can fetch the updated transactions by calling the [retrieve e-commerce transactions API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1transactions/get).   Subscribe to the \"TRANSACTIONS.ADDED\" and \"TRANSACTIONS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve e-commerce transactions in bulk API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1transactions~1search/post) for optimal performance.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  fetch_historic1: Phyllo::FetchHistoric1.new({account_id: 'account_id_example', from_date: Date.today}) # FetchHistoric1 | 
}

begin
  # Fetch historic e-commerce transactions for an account
  result = api_instance.v1_fetch_historic_commerce_income_transactions(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_fetch_historic_commerce_income_transactions: #{e}"
end
```

#### Using the v1_fetch_historic_commerce_income_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FetchHistoric1>, Integer, Hash)> v1_fetch_historic_commerce_income_transactions_with_http_info(opts)

```ruby
begin
  # Fetch historic e-commerce transactions for an account
  data, status_code, headers = api_instance.v1_fetch_historic_commerce_income_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FetchHistoric1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_fetch_historic_commerce_income_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fetch_historic1** | [**FetchHistoric1**](FetchHistoric1.md) |  | [optional] |

### Return type

[**FetchHistoric1**](FetchHistoric1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_fetch_historic_social_income_payouts

> <FetchHistoric1> v1_fetch_historic_social_income_payouts(opts)

Fetch historic social payouts for an account

Fetch payouts for a connected social account starting from a specific date till today by providing the `from_date`. Once Phyllo processes the request, you can fetch the updated payouts by calling the [retrieve social payouts API](../reference/openapi.v1.yml/paths/~1v1~1social~1income~1payouts/get).   Subscribe to the \"PAYOUTS.ADDED\" and \"PAYOUTS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve social payouts in bulk API](../reference/openapi.v1.yml/paths/~1v1~1social~1income~1payouts~1search/post) for optimal performance.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"social\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  fetch_historic1: Phyllo::FetchHistoric1.new({account_id: 'account_id_example', from_date: Date.today}) # FetchHistoric1 | 
}

begin
  # Fetch historic social payouts for an account
  result = api_instance.v1_fetch_historic_social_income_payouts(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_fetch_historic_social_income_payouts: #{e}"
end
```

#### Using the v1_fetch_historic_social_income_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FetchHistoric1>, Integer, Hash)> v1_fetch_historic_social_income_payouts_with_http_info(opts)

```ruby
begin
  # Fetch historic social payouts for an account
  data, status_code, headers = api_instance.v1_fetch_historic_social_income_payouts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FetchHistoric1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_fetch_historic_social_income_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fetch_historic1** | [**FetchHistoric1**](FetchHistoric1.md) |  | [optional] |

### Return type

[**FetchHistoric1**](FetchHistoric1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_fetch_historic_social_income_transactions

> <FetchHistoric1> v1_fetch_historic_social_income_transactions(opts)

Fetch historic social transactions for an account

Fetch transactions for a connected social account starting from a specific date till today by providing the `from_date`. Once Phyllo processes the request, you can fetch the updated transactions by calling the [retrieve social transactions API](../reference/openapi.v1.yml/paths/~1v1~1social~1income~1transactions/get).   Subscribe to the \"TRANSACTIONS.ADDED\" and \"TRANSACTIONS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve social transactions in bulk API](../reference/openapi.v1.yml/paths/~1v1~1social~1income~1transactions~1search/post) for optimal performance.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"social\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  fetch_historic1: Phyllo::FetchHistoric1.new({account_id: 'account_id_example', from_date: Date.today}) # FetchHistoric1 | 
}

begin
  # Fetch historic social transactions for an account
  result = api_instance.v1_fetch_historic_social_income_transactions(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_fetch_historic_social_income_transactions: #{e}"
end
```

#### Using the v1_fetch_historic_social_income_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FetchHistoric1>, Integer, Hash)> v1_fetch_historic_social_income_transactions_with_http_info(opts)

```ruby
begin
  # Fetch historic social transactions for an account
  data, status_code, headers = api_instance.v1_fetch_historic_social_income_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FetchHistoric1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_fetch_historic_social_income_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fetch_historic1** | [**FetchHistoric1**](FetchHistoric1.md) |  | [optional] |

### Return type

[**FetchHistoric1**](FetchHistoric1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_get_commerce_income_balance_by_id

> <CommerceBalance1> v1_get_commerce_income_balance_by_id(id)

Retrieve a e-commerce balance

Retrieve the information of the balance with the supplied balance ID.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
id = 'id_example' # String | Unique identifier for the balance

begin
  # Retrieve a e-commerce balance
  result = api_instance.v1_get_commerce_income_balance_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_balance_by_id: #{e}"
end
```

#### Using the v1_get_commerce_income_balance_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommerceBalance1>, Integer, Hash)> v1_get_commerce_income_balance_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a e-commerce balance
  data, status_code, headers = api_instance.v1_get_commerce_income_balance_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommerceBalance1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_balance_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the balance |  |

### Return type

[**CommerceBalance1**](CommerceBalance1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_commerce_income_balances

> <CommerceBalanceList1> v1_get_commerce_income_balances(balance_from_date, balance_to_date, account_id, opts)

Retrieve e-commerce balances for an account

Lists all daily balances of the given e-commerce account.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
balance_from_date = Date.parse('2013-10-20') # Date | Return daily balances on or after this date. (YYYY-MM-DD)
balance_to_date = Date.parse('2013-10-20') # Date | Return daily balances on or before this date. (YYYY-MM-DD)
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
opts = {
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56 # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
}

begin
  # Retrieve e-commerce balances for an account
  result = api_instance.v1_get_commerce_income_balances(balance_from_date, balance_to_date, account_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_balances: #{e}"
end
```

#### Using the v1_get_commerce_income_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommerceBalanceList1>, Integer, Hash)> v1_get_commerce_income_balances_with_http_info(balance_from_date, balance_to_date, account_id, opts)

```ruby
begin
  # Retrieve e-commerce balances for an account
  data, status_code, headers = api_instance.v1_get_commerce_income_balances_with_http_info(balance_from_date, balance_to_date, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommerceBalanceList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance_from_date** | **Date** | Return daily balances on or after this date. (YYYY-MM-DD) |  |
| **balance_to_date** | **Date** | Return daily balances on or before this date. (YYYY-MM-DD) |  |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |

### Return type

[**CommerceBalanceList1**](CommerceBalanceList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_commerce_income_payout_by_id

> <CommercePayout1> v1_get_commerce_income_payout_by_id(id)

Retrieve a e-commerce payout

Retrieve the information of the payout with the supplied payout ID.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
id = 'id_example' # String | Unique identifier for the payout

begin
  # Retrieve a e-commerce payout
  result = api_instance.v1_get_commerce_income_payout_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_payout_by_id: #{e}"
end
```

#### Using the v1_get_commerce_income_payout_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommercePayout1>, Integer, Hash)> v1_get_commerce_income_payout_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a e-commerce payout
  data, status_code, headers = api_instance.v1_get_commerce_income_payout_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommercePayout1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_payout_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the payout |  |

### Return type

[**CommercePayout1**](CommercePayout1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_commerce_income_payouts

> <CommercePayoutList1> v1_get_commerce_income_payouts(payout_from_date, payout_to_date, account_id, opts)

Retrieve e-commerce payouts for an account

Lists all payouts of the given e-commerce account.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
payout_from_date = Date.parse('2013-10-20') # Date | Return payouts on or after this date. (YYYY-MM-DD)
payout_to_date = Date.parse('2013-10-20') # Date | Return payouts on or before this date. (YYYY-MM-DD)
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
opts = {
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56 # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
}

begin
  # Retrieve e-commerce payouts for an account
  result = api_instance.v1_get_commerce_income_payouts(payout_from_date, payout_to_date, account_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_payouts: #{e}"
end
```

#### Using the v1_get_commerce_income_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommercePayoutList1>, Integer, Hash)> v1_get_commerce_income_payouts_with_http_info(payout_from_date, payout_to_date, account_id, opts)

```ruby
begin
  # Retrieve e-commerce payouts for an account
  data, status_code, headers = api_instance.v1_get_commerce_income_payouts_with_http_info(payout_from_date, payout_to_date, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommercePayoutList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_from_date** | **Date** | Return payouts on or after this date. (YYYY-MM-DD) |  |
| **payout_to_date** | **Date** | Return payouts on or before this date. (YYYY-MM-DD) |  |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |

### Return type

[**CommercePayoutList1**](CommercePayoutList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_commerce_income_transaction_by_id

> <CommerceTransaction1> v1_get_commerce_income_transaction_by_id(id)

Retrieve a e-commerce transaction

Retrieve the information of the transaction with the supplied transaction ID.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
id = 'id_example' # String | Unique identifier for the transaction

begin
  # Retrieve a e-commerce transaction
  result = api_instance.v1_get_commerce_income_transaction_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_transaction_by_id: #{e}"
end
```

#### Using the v1_get_commerce_income_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommerceTransaction1>, Integer, Hash)> v1_get_commerce_income_transaction_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a e-commerce transaction
  data, status_code, headers = api_instance.v1_get_commerce_income_transaction_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommerceTransaction1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the transaction |  |

### Return type

[**CommerceTransaction1**](CommerceTransaction1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_commerce_income_transactions

> <CommerceTransactionList1> v1_get_commerce_income_transactions(transaction_from_date, transaction_to_date, account_id, opts)

Retrieve e-commerce transactions for an account

Lists all transactions of the given e-commerce account.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
transaction_from_date = Date.parse('Sat Jan 30 17:00:00 MST 2021') # Date | Return transactions on or after this date. (YYYY-MM-DD)
transaction_to_date = Date.parse('Sat Jan 30 17:00:00 MST 2021') # Date | Return transactions on or before this date. (YYYY-MM-DD)
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
opts = {
  type: 'SALE', # String | Type of transaction on the e-commerce platform
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56 # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
}

begin
  # Retrieve e-commerce transactions for an account
  result = api_instance.v1_get_commerce_income_transactions(transaction_from_date, transaction_to_date, account_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_transactions: #{e}"
end
```

#### Using the v1_get_commerce_income_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommerceTransactionList1>, Integer, Hash)> v1_get_commerce_income_transactions_with_http_info(transaction_from_date, transaction_to_date, account_id, opts)

```ruby
begin
  # Retrieve e-commerce transactions for an account
  data, status_code, headers = api_instance.v1_get_commerce_income_transactions_with_http_info(transaction_from_date, transaction_to_date, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommerceTransactionList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_commerce_income_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_from_date** | **Date** | Return transactions on or after this date. (YYYY-MM-DD) |  |
| **transaction_to_date** | **Date** | Return transactions on or before this date. (YYYY-MM-DD) |  |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **type** | **String** | Type of transaction on the e-commerce platform | [optional] |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |

### Return type

[**CommerceTransactionList1**](CommerceTransactionList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_social_income_payout_by_id

> <CommercePayout1> v1_get_social_income_payout_by_id(id)

Retrieve a social payout

Retrieve the information of the payout with the supplied payout ID.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"social\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
id = 'id_example' # String | Unique identifier for the transaction

begin
  # Retrieve a social payout
  result = api_instance.v1_get_social_income_payout_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_social_income_payout_by_id: #{e}"
end
```

#### Using the v1_get_social_income_payout_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommercePayout1>, Integer, Hash)> v1_get_social_income_payout_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a social payout
  data, status_code, headers = api_instance.v1_get_social_income_payout_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommercePayout1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_social_income_payout_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the transaction |  |

### Return type

[**CommercePayout1**](CommercePayout1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_social_income_payouts

> <CommercePayoutList1> v1_get_social_income_payouts(payout_from_date, payout_to_date, account_id, opts)

Retrieve social payouts for an account

Lists all payouts of the given social account.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"social\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
payout_from_date = Date.parse('2013-10-20') # Date | Return payouts on or after this date. (YYYY-MM-DD)
payout_to_date = Date.parse('2013-10-20') # Date | Return payouts on or before this date. (YYYY-MM-DD)
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
opts = {
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56 # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
}

begin
  # Retrieve social payouts for an account
  result = api_instance.v1_get_social_income_payouts(payout_from_date, payout_to_date, account_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_social_income_payouts: #{e}"
end
```

#### Using the v1_get_social_income_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommercePayoutList1>, Integer, Hash)> v1_get_social_income_payouts_with_http_info(payout_from_date, payout_to_date, account_id, opts)

```ruby
begin
  # Retrieve social payouts for an account
  data, status_code, headers = api_instance.v1_get_social_income_payouts_with_http_info(payout_from_date, payout_to_date, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommercePayoutList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_social_income_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_from_date** | **Date** | Return payouts on or after this date. (YYYY-MM-DD) |  |
| **payout_to_date** | **Date** | Return payouts on or before this date. (YYYY-MM-DD) |  |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |

### Return type

[**CommercePayoutList1**](CommercePayoutList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_social_income_transaction_by_id

> <SocialTransaction1> v1_get_social_income_transaction_by_id(id)

Retrieve a social transaction

Retrieve the information of the transaction with the supplied transaction ID.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"social\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
id = 'id_example' # String | Unique identifier for the transaction

begin
  # Retrieve a social transaction
  result = api_instance.v1_get_social_income_transaction_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_social_income_transaction_by_id: #{e}"
end
```

#### Using the v1_get_social_income_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SocialTransaction1>, Integer, Hash)> v1_get_social_income_transaction_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a social transaction
  data, status_code, headers = api_instance.v1_get_social_income_transaction_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SocialTransaction1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_social_income_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the transaction |  |

### Return type

[**SocialTransaction1**](SocialTransaction1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_get_social_income_transactions

> <SocialTransactionList1> v1_get_social_income_transactions(transaction_from_date, transaction_to_date, account_id, opts)

Retrieve social transactions for an account

Lists all transactions of the given social account.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"social\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
transaction_from_date = Date.parse('Sat Jan 30 17:00:00 MST 2021') # Date | Return transactions on or after this date. (YYYY-MM-DD)
transaction_to_date = Date.parse('Sat Jan 30 17:00:00 MST 2021') # Date | Return transactions on or before this date. (YYYY-MM-DD)
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
opts = {
  type: 'AD', # String | Type of transaction on the social platform
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56 # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
}

begin
  # Retrieve social transactions for an account
  result = api_instance.v1_get_social_income_transactions(transaction_from_date, transaction_to_date, account_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_social_income_transactions: #{e}"
end
```

#### Using the v1_get_social_income_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SocialTransactionList1>, Integer, Hash)> v1_get_social_income_transactions_with_http_info(transaction_from_date, transaction_to_date, account_id, opts)

```ruby
begin
  # Retrieve social transactions for an account
  data, status_code, headers = api_instance.v1_get_social_income_transactions_with_http_info(transaction_from_date, transaction_to_date, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SocialTransactionList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_get_social_income_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_from_date** | **Date** | Return transactions on or after this date. (YYYY-MM-DD) |  |
| **transaction_to_date** | **Date** | Return transactions on or before this date. (YYYY-MM-DD) |  |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **type** | **String** | Type of transaction on the social platform | [optional] |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |

### Return type

[**SocialTransactionList1**](SocialTransactionList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_refresh_commerce_income_balances

> <Refresh1> v1_refresh_commerce_income_balances(opts)

Refresh e-commerce balances for an account

Refresh balances for a connected e-commerce account for the default refresh period, which is T-12 months for balances. Once Phyllo processes the request, you can fetch the updated balances by calling the [retrieve e-commerce balances API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1balances/get).   Subscribe to the \"BALANCES.ADDED\" and \"BALANCES.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve e-commerce balances in bulk API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1balances~1search/post) for optimal performance.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  refresh1: Phyllo::Refresh1.new({account_id: 'account_id_example'}) # Refresh1 | 
}

begin
  # Refresh e-commerce balances for an account
  result = api_instance.v1_refresh_commerce_income_balances(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_refresh_commerce_income_balances: #{e}"
end
```

#### Using the v1_refresh_commerce_income_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refresh1>, Integer, Hash)> v1_refresh_commerce_income_balances_with_http_info(opts)

```ruby
begin
  # Refresh e-commerce balances for an account
  data, status_code, headers = api_instance.v1_refresh_commerce_income_balances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refresh1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_refresh_commerce_income_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh1** | [**Refresh1**](Refresh1.md) |  | [optional] |

### Return type

[**Refresh1**](Refresh1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_refresh_commerce_income_payouts

> <Refresh1> v1_refresh_commerce_income_payouts(opts)

Refresh e-commerce payouts for an account

Refresh payouts for a connected e-commerce account for the default refresh period, which is T-12 months for payouts. Once Phyllo processes the request, you can fetch the updated payouts by calling the [retrieve e-commerce payouts API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1payouts/get).   Subscribe to the \"PAYOUTS.ADDED\" and \"PAYOUTS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve e-commerce payouts in bulk API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1payouts~1search/post) for optimal performance.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  refresh1: Phyllo::Refresh1.new({account_id: 'account_id_example'}) # Refresh1 | 
}

begin
  # Refresh e-commerce payouts for an account
  result = api_instance.v1_refresh_commerce_income_payouts(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_refresh_commerce_income_payouts: #{e}"
end
```

#### Using the v1_refresh_commerce_income_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refresh1>, Integer, Hash)> v1_refresh_commerce_income_payouts_with_http_info(opts)

```ruby
begin
  # Refresh e-commerce payouts for an account
  data, status_code, headers = api_instance.v1_refresh_commerce_income_payouts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refresh1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_refresh_commerce_income_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh1** | [**Refresh1**](Refresh1.md) |  | [optional] |

### Return type

[**Refresh1**](Refresh1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_refresh_commerce_income_transactions

> <Refresh1> v1_refresh_commerce_income_transactions(opts)

Refresh e-commerce transactions for an account

Refresh transactions for a connected e-commerce account for the default refresh period, which is T-12 months for transactions. Once Phyllo processes the request, you can fetch the updated transactions by calling the [retrieve e-commerce transactions API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1transactions/get).   Subscribe to the \"TRANSACTIONS.ADDED\" and \"TRANSACTIONS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve e-commerce transactions in bulk API](../reference/openapi.v1.yml/paths/~1v1~1commerce~1income~1transactions~1search/post) for optimal performance.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  refresh1: Phyllo::Refresh1.new({account_id: 'account_id_example'}) # Refresh1 | 
}

begin
  # Refresh e-commerce transactions for an account
  result = api_instance.v1_refresh_commerce_income_transactions(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_refresh_commerce_income_transactions: #{e}"
end
```

#### Using the v1_refresh_commerce_income_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refresh1>, Integer, Hash)> v1_refresh_commerce_income_transactions_with_http_info(opts)

```ruby
begin
  # Refresh e-commerce transactions for an account
  data, status_code, headers = api_instance.v1_refresh_commerce_income_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refresh1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_refresh_commerce_income_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh1** | [**Refresh1**](Refresh1.md) |  | [optional] |

### Return type

[**Refresh1**](Refresh1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_refresh_social_income_payouts

> <Refresh1> v1_refresh_social_income_payouts(opts)

Refresh social payouts for an account

Refresh payouts for a connected social account for the default refresh period, which is T-12 months for payouts. Once Phyllo processes the request, you can fetch the updated payouts by calling the [retrieve social payouts API](../reference/openapi.v1.yml/paths/~1v1~1social~1income~1payouts/get).   Subscribe to the \"PAYOUTS.ADDED\" and \"PAYOUTS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve social payouts in bulk API](../reference/openapi.v1.yml/paths/~1v1~1social~1income~1payouts~1search/post) for optimal performance.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"social\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  refresh1: Phyllo::Refresh1.new({account_id: 'account_id_example'}) # Refresh1 | 
}

begin
  # Refresh social payouts for an account
  result = api_instance.v1_refresh_social_income_payouts(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_refresh_social_income_payouts: #{e}"
end
```

#### Using the v1_refresh_social_income_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refresh1>, Integer, Hash)> v1_refresh_social_income_payouts_with_http_info(opts)

```ruby
begin
  # Refresh social payouts for an account
  data, status_code, headers = api_instance.v1_refresh_social_income_payouts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refresh1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_refresh_social_income_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh1** | [**Refresh1**](Refresh1.md) |  | [optional] |

### Return type

[**Refresh1**](Refresh1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_refresh_social_income_transactions

> <Refresh1> v1_refresh_social_income_transactions(opts)

Refresh social transactions for an account

Refresh transactions for a connected social account for the default refresh period, which is T-12 months for transactions. Once Phyllo processes the request, you can fetch the updated transactions by calling the [retrieve social transactions API](../reference/openapi.v1.yml/paths/~1v1~1social~1income~1transactions/get).   Subscribe to the \"TRANSACTIONS.ADDED\" and \"TRANSACTIONS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve social transactions in bulk API](../reference/openapi.v1.yml/paths/~1v1~1social~1income~1transactions~1search/post) for optimal performance.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"social\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  refresh1: Phyllo::Refresh1.new({account_id: 'account_id_example'}) # Refresh1 | 
}

begin
  # Refresh social transactions for an account
  result = api_instance.v1_refresh_social_income_transactions(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_refresh_social_income_transactions: #{e}"
end
```

#### Using the v1_refresh_social_income_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refresh1>, Integer, Hash)> v1_refresh_social_income_transactions_with_http_info(opts)

```ruby
begin
  # Refresh social transactions for an account
  data, status_code, headers = api_instance.v1_refresh_social_income_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refresh1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_refresh_social_income_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh1** | [**Refresh1**](Refresh1.md) |  | [optional] |

### Return type

[**Refresh1**](Refresh1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_search_commerce_income_balances

> <CommerceBalanceSearchList1> v1_search_commerce_income_balances(opts)

Retrieve e-commerce balances in bulk

Search balances in bulk by providing the IDs.   This is best used in combination with webhooks - you can directly take the IDs from \"BALANCES.ADDED\" and \"BALANCES.UPDATED\" webhook notifications and pass on to this API to get the updated transaction items.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  commerce_balance_search1: Phyllo::CommerceBalanceSearch1.new({ids: ['ids_example']}) # CommerceBalanceSearch1 | 
}

begin
  # Retrieve e-commerce balances in bulk
  result = api_instance.v1_search_commerce_income_balances(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_search_commerce_income_balances: #{e}"
end
```

#### Using the v1_search_commerce_income_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommerceBalanceSearchList1>, Integer, Hash)> v1_search_commerce_income_balances_with_http_info(opts)

```ruby
begin
  # Retrieve e-commerce balances in bulk
  data, status_code, headers = api_instance.v1_search_commerce_income_balances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommerceBalanceSearchList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_search_commerce_income_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commerce_balance_search1** | [**CommerceBalanceSearch1**](CommerceBalanceSearch1.md) |  | [optional] |

### Return type

[**CommerceBalanceSearchList1**](CommerceBalanceSearchList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_search_commerce_income_payouts

> <CommercePayoutSearchList1> v1_search_commerce_income_payouts(opts)

Retrieve e-commerce payouts in bulk

Search payouts in bulk by providing the IDs.   This is best used in combination with webhooks - you can directly take the IDs from \"PAYOUTS.ADDED\" and \"PAYOUTS.UPDATED\" webhook notifications and pass on to this API to get the updated payout items.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  commerce_payout_search1: Phyllo::CommercePayoutSearch1.new({ids: ['ids_example']}) # CommercePayoutSearch1 | 
}

begin
  # Retrieve e-commerce payouts in bulk
  result = api_instance.v1_search_commerce_income_payouts(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_search_commerce_income_payouts: #{e}"
end
```

#### Using the v1_search_commerce_income_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommercePayoutSearchList1>, Integer, Hash)> v1_search_commerce_income_payouts_with_http_info(opts)

```ruby
begin
  # Retrieve e-commerce payouts in bulk
  data, status_code, headers = api_instance.v1_search_commerce_income_payouts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommercePayoutSearchList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_search_commerce_income_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commerce_payout_search1** | [**CommercePayoutSearch1**](CommercePayoutSearch1.md) |  | [optional] |

### Return type

[**CommercePayoutSearchList1**](CommercePayoutSearchList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_search_commerce_income_transactions

> <CommerceTransactionSearchList1> v1_search_commerce_income_transactions(opts)

Retrieve e-commerce transactions in bulk

Search transactions in bulk by providing the IDs.   This is best used in combination with webhooks - you can directly take the IDs from \"TRANSACTIONS.ADDED\" and \"TRANSACTIONS.UPDATED\" webhook notifications and pass on to this API to get the updated transaction items.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"commerce\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  commerce_transaction_search1: Phyllo::CommerceTransactionSearch1.new({ids: ['ids_example']}) # CommerceTransactionSearch1 | 
}

begin
  # Retrieve e-commerce transactions in bulk
  result = api_instance.v1_search_commerce_income_transactions(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_search_commerce_income_transactions: #{e}"
end
```

#### Using the v1_search_commerce_income_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommerceTransactionSearchList1>, Integer, Hash)> v1_search_commerce_income_transactions_with_http_info(opts)

```ruby
begin
  # Retrieve e-commerce transactions in bulk
  data, status_code, headers = api_instance.v1_search_commerce_income_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommerceTransactionSearchList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_search_commerce_income_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commerce_transaction_search1** | [**CommerceTransactionSearch1**](CommerceTransactionSearch1.md) |  | [optional] |

### Return type

[**CommerceTransactionSearchList1**](CommerceTransactionSearchList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_search_social_income_payouts

> <CommercePayoutSearchList1> v1_search_social_income_payouts(opts)

Retrieve social payouts in bulk

Search payouts in bulk by providing the IDs.   This is best used in combination with webhooks - you can directly take the IDs from \"PAYOUTS.ADDED\" and \"PAYOUTS.UPDATED\" webhook notifications and pass on to this API to get the updated payout items.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"social\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  commerce_payout_search1: Phyllo::CommercePayoutSearch1.new({ids: ['ids_example']}) # CommercePayoutSearch1 | 
}

begin
  # Retrieve social payouts in bulk
  result = api_instance.v1_search_social_income_payouts(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_search_social_income_payouts: #{e}"
end
```

#### Using the v1_search_social_income_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommercePayoutSearchList1>, Integer, Hash)> v1_search_social_income_payouts_with_http_info(opts)

```ruby
begin
  # Retrieve social payouts in bulk
  data, status_code, headers = api_instance.v1_search_social_income_payouts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommercePayoutSearchList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_search_social_income_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commerce_payout_search1** | [**CommercePayoutSearch1**](CommercePayoutSearch1.md) |  | [optional] |

### Return type

[**CommercePayoutSearchList1**](CommercePayoutSearchList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_search_social_income_transactions

> <SocialTransactionSearchList1> v1_search_social_income_transactions(opts)

Retrieve social transactions in bulk

Search transactions in bulk by providing the IDs.   This is best used in combination with webhooks - you can directly take the IDs from \"TRANSACTIONS.ADDED\" and \"TRANSACTIONS.UPDATED\" webhook notifications and pass on to this API to get the updated transaction items.   Check the `category` field from [the work platform API](../reference/openapi.v1.yml/paths/~1v1~1work-platforms/get) response or the \"Category\" column in [this data guide](https://airtable.com/shrwEMTWlgECOUhre) to see which platfroms we serve under \"social\".

### Examples

```ruby
require 'time'
require 'phyllo'
# setup authorization
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::IncomeApi.new
opts = {
  social_transaction_search1: Phyllo::SocialTransactionSearch1.new({ids: ['ids_example']}) # SocialTransactionSearch1 | 
}

begin
  # Retrieve social transactions in bulk
  result = api_instance.v1_search_social_income_transactions(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_search_social_income_transactions: #{e}"
end
```

#### Using the v1_search_social_income_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SocialTransactionSearchList1>, Integer, Hash)> v1_search_social_income_transactions_with_http_info(opts)

```ruby
begin
  # Retrieve social transactions in bulk
  data, status_code, headers = api_instance.v1_search_social_income_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SocialTransactionSearchList1>
rescue Phyllo::ApiError => e
  puts "Error when calling IncomeApi->v1_search_social_income_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **social_transaction_search1** | [**SocialTransactionSearch1**](SocialTransactionSearch1.md) |  | [optional] |

### Return type

[**SocialTransactionSearchList1**](SocialTransactionSearchList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

