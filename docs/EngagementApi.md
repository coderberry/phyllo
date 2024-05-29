# Phyllo::EngagementApi

All URIs are relative to *https://api.sandbox.getphyllo.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**postv1pubcontentssearch**](EngagementApi.md#postv1pubcontentssearch) | **POST** /v1/publications/contents/search | Retrieve publication content items in bulk |
| [**postv1socialcontentgroupssearch**](EngagementApi.md#postv1socialcontentgroupssearch) | **POST** /v1/social/content-groups/search | Retrieve content group items in bulk |
| [**postv1socialcontentssearch**](EngagementApi.md#postv1socialcontentssearch) | **POST** /v1/social/contents/search | Retrieve content items in bulk |
| [**v1_engagement_get_comments**](EngagementApi.md#v1_engagement_get_comments) | **GET** /v1/social/comments | Retrieve all comments |
| [**v1_fetch_historic_social_content_groups**](EngagementApi.md#v1_fetch_historic_social_content_groups) | **POST** /v1/social/content-groups/fetch-historic | Fetch historic content groups |
| [**v1_fetch_historic_social_contents**](EngagementApi.md#v1_fetch_historic_social_contents) | **POST** /v1/social/contents/fetch-historic | Fetch historic content items |
| [**v1_refresh_social_content_groups**](EngagementApi.md#v1_refresh_social_content_groups) | **POST** /v1/social/content-groups/refresh | Refresh content groups |
| [**v1_refresh_social_contents**](EngagementApi.md#v1_refresh_social_contents) | **POST** /v1/social/contents/refresh | Refresh content items |
| [**v1_stream_get_content_groups**](EngagementApi.md#v1_stream_get_content_groups) | **GET** /v1/social/content-groups | Retrieve all content groups |
| [**v1_stream_get_content_groups_by_id**](EngagementApi.md#v1_stream_get_content_groups_by_id) | **GET** /v1/social/content-groups/{id} | Retrieve a content group |
| [**v1_stream_get_contents**](EngagementApi.md#v1_stream_get_contents) | **GET** /v1/social/contents | Retrieve all content items |
| [**v1_stream_get_contents_by_id**](EngagementApi.md#v1_stream_get_contents_by_id) | **GET** /v1/social/contents/{id} | Retrieve a content item |
| [**v1_streampub_get_contents**](EngagementApi.md#v1_streampub_get_contents) | **GET** /v1/publications/contents | Retrieve all publication content items |
| [**v1_streampub_get_contents_by_id**](EngagementApi.md#v1_streampub_get_contents_by_id) | **GET** /v1/publications/contents/{id} | Retrieve a publication content item |


## postv1pubcontentssearch

> <ContentSearchList1> postv1pubcontentssearch(opts)

Retrieve publication content items in bulk

Search content items in bulk by providing the IDs.   This is best used in combination with webhooks - you can directly take the IDs from \"CONTENTS.ADDED\" and \"CONTENTS.UPDATED\" webhook notifications and pass on to this API to get the updated content items.

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

api_instance = Phyllo::EngagementApi.new
opts = {
  content_search1: Phyllo::ContentSearch1.new({ids: ['ids_example']}) # ContentSearch1 | 
}

begin
  # Retrieve publication content items in bulk
  result = api_instance.postv1pubcontentssearch(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->postv1pubcontentssearch: #{e}"
end
```

#### Using the postv1pubcontentssearch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentSearchList1>, Integer, Hash)> postv1pubcontentssearch_with_http_info(opts)

```ruby
begin
  # Retrieve publication content items in bulk
  data, status_code, headers = api_instance.postv1pubcontentssearch_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentSearchList1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->postv1pubcontentssearch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_search1** | [**ContentSearch1**](ContentSearch1.md) |  | [optional] |

### Return type

[**ContentSearchList1**](ContentSearchList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json


## postv1socialcontentgroupssearch

> <ContentGroupSearchList1> postv1socialcontentgroupssearch(opts)

Retrieve content group items in bulk

Search content group items in bulk by providing the IDs.   This is best used in combination with webhooks - you can directly take the IDs from \"CONTENT-GROUPS.ADDED\" and \"CONTENT-GROUPS.UPDATED\" webhook notifications and pass on to this API to get the updated content group items.

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

api_instance = Phyllo::EngagementApi.new
opts = {
  content_group_search1: Phyllo::ContentGroupSearch1.new({ids: ['ids_example']}) # ContentGroupSearch1 | 
}

begin
  # Retrieve content group items in bulk
  result = api_instance.postv1socialcontentgroupssearch(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->postv1socialcontentgroupssearch: #{e}"
end
```

#### Using the postv1socialcontentgroupssearch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentGroupSearchList1>, Integer, Hash)> postv1socialcontentgroupssearch_with_http_info(opts)

```ruby
begin
  # Retrieve content group items in bulk
  data, status_code, headers = api_instance.postv1socialcontentgroupssearch_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentGroupSearchList1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->postv1socialcontentgroupssearch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_group_search1** | [**ContentGroupSearch1**](ContentGroupSearch1.md) |  | [optional] |

### Return type

[**ContentGroupSearchList1**](ContentGroupSearchList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json


## postv1socialcontentssearch

> <ContentSearchList1> postv1socialcontentssearch(opts)

Retrieve content items in bulk

Search content items in bulk by providing the IDs.   This is best used in combination with webhooks - you can directly take the IDs from \"CONTENTS.ADDED\" and \"CONTENTS.UPDATED\" webhook notifications and pass on to this API to get the updated content items.

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

api_instance = Phyllo::EngagementApi.new
opts = {
  content_search1: Phyllo::ContentSearch1.new({ids: ['ids_example']}) # ContentSearch1 | 
}

begin
  # Retrieve content items in bulk
  result = api_instance.postv1socialcontentssearch(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->postv1socialcontentssearch: #{e}"
end
```

#### Using the postv1socialcontentssearch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentSearchList1>, Integer, Hash)> postv1socialcontentssearch_with_http_info(opts)

```ruby
begin
  # Retrieve content items in bulk
  data, status_code, headers = api_instance.postv1socialcontentssearch_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentSearchList1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->postv1socialcontentssearch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_search1** | [**ContentSearch1**](ContentSearch1.md) |  | [optional] |

### Return type

[**ContentSearchList1**](ContentSearchList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json


## v1_engagement_get_comments

> <CommentResponse> v1_engagement_get_comments(account_id, content_id, opts)

Retrieve all comments

Lists all comments of the given account.

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

api_instance = Phyllo::EngagementApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
content_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the content item.
opts = {
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  offset: 56, # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
  to_date: Date.parse('Sat Jan 30 17:00:00 MST 2021'), # Date | Return comments published on or before this date. (YYYY-MM-DD)
  from_date: Date.parse('Sat Jan 30 17:00:00 MST 2021') # Date | Return comments published on or after this date. (YYYY-MM-DD)
}

begin
  # Retrieve all comments
  result = api_instance.v1_engagement_get_comments(account_id, content_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_engagement_get_comments: #{e}"
end
```

#### Using the v1_engagement_get_comments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommentResponse>, Integer, Hash)> v1_engagement_get_comments_with_http_info(account_id, content_id, opts)

```ruby
begin
  # Retrieve all comments
  data, status_code, headers = api_instance.v1_engagement_get_comments_with_http_info(account_id, content_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommentResponse>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_engagement_get_comments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **content_id** | **String** | Unique ID of the content item. |  |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |
| **to_date** | **Date** | Return comments published on or before this date. (YYYY-MM-DD) | [optional] |
| **from_date** | **Date** | Return comments published on or after this date. (YYYY-MM-DD) | [optional] |

### Return type

[**CommentResponse**](CommentResponse.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_fetch_historic_social_content_groups

> <FetchHistoric1> v1_fetch_historic_social_content_groups(opts)

Fetch historic content groups

Fetch content groups for a connected account starting from a specific date till today by providing the `from_date`. Once Phyllo processes the request, you can fetch the updated content groups by calling the [retrieve content groups API](../reference/openapi.v1.yml/paths/~1v1~1social~1content-groups/get).   Subscribe to the \"CONTENT-GROUPS.ADDED\" and \"CONTENT-GROUPS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve content groups in bulk API](../reference/openapi.v1.yml/paths/~1v1~1social~1content-groups~1search/post) for optimal performance.

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

api_instance = Phyllo::EngagementApi.new
opts = {
  fetch_historic1: Phyllo::FetchHistoric1.new({account_id: 'account_id_example', from_date: Date.today}) # FetchHistoric1 | 
}

begin
  # Fetch historic content groups
  result = api_instance.v1_fetch_historic_social_content_groups(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_fetch_historic_social_content_groups: #{e}"
end
```

#### Using the v1_fetch_historic_social_content_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FetchHistoric1>, Integer, Hash)> v1_fetch_historic_social_content_groups_with_http_info(opts)

```ruby
begin
  # Fetch historic content groups
  data, status_code, headers = api_instance.v1_fetch_historic_social_content_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FetchHistoric1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_fetch_historic_social_content_groups_with_http_info: #{e}"
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


## v1_fetch_historic_social_contents

> <FetchHistoric1> v1_fetch_historic_social_contents(opts)

Fetch historic content items

Fetch content items for a connected account starting from a specific date till today by providing the `from_date`. Once Phyllo processes the request, you can fetch the updated content items by calling the [retrieve content API](../reference/openapi.v1.yml/paths/~1v1~1social~1contents/get).   Subscribe to the \"CONTENTS.ADDED\" and \"CONTENTS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve content items in bulk API](../reference/openapi.v1.yml/paths/~1v1~1social~1contents~1search/post) for optimal performance.

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

api_instance = Phyllo::EngagementApi.new
opts = {
  fetch_historic1: Phyllo::FetchHistoric1.new({account_id: 'account_id_example', from_date: Date.today}) # FetchHistoric1 | 
}

begin
  # Fetch historic content items
  result = api_instance.v1_fetch_historic_social_contents(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_fetch_historic_social_contents: #{e}"
end
```

#### Using the v1_fetch_historic_social_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FetchHistoric1>, Integer, Hash)> v1_fetch_historic_social_contents_with_http_info(opts)

```ruby
begin
  # Fetch historic content items
  data, status_code, headers = api_instance.v1_fetch_historic_social_contents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FetchHistoric1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_fetch_historic_social_contents_with_http_info: #{e}"
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

- **Content-Type**: application/json, application/xml
- **Accept**: application/json


## v1_refresh_social_content_groups

> <Refresh1> v1_refresh_social_content_groups(opts)

Refresh content groups

Refresh content groups for a connected account for the default refresh period, which is T-90 days for content groups. Once Phyllo processes the request, you can fetch the updated content items by calling the [retrieve content groups API](../reference/openapi.v1.yml/paths/~1v1~1social~1content-groups/get).   Subscribe to the \"CONTENT-GROUPS.ADDED\" and \"CONTENT-GROUPS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve content groups in bulk API](../reference/openapi.v1.yml/paths/~1v1~1social~1content-groups~1search/post) for optimal performance.

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

api_instance = Phyllo::EngagementApi.new
opts = {
  refresh1: Phyllo::Refresh1.new({account_id: 'account_id_example'}) # Refresh1 | 
}

begin
  # Refresh content groups
  result = api_instance.v1_refresh_social_content_groups(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_refresh_social_content_groups: #{e}"
end
```

#### Using the v1_refresh_social_content_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refresh1>, Integer, Hash)> v1_refresh_social_content_groups_with_http_info(opts)

```ruby
begin
  # Refresh content groups
  data, status_code, headers = api_instance.v1_refresh_social_content_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refresh1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_refresh_social_content_groups_with_http_info: #{e}"
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

- **Content-Type**: application/json, application/xml
- **Accept**: application/json


## v1_refresh_social_contents

> <Refresh1> v1_refresh_social_contents(opts)

Refresh content items

Refresh content items for a connected account for the default refresh period, which is T-90 days for content items. Once Phyllo processes the request, you can fetch the updated content items by calling the [retrieve content API](../reference/openapi.v1.yml/paths/~1v1~1social~1contents/get).   Subscribe to the \"CONTENTS.ADDED\" and \"CONTENTS.UPDATED\" webhooks to receive a notification once the request is completed. With webhooks, you should use the [retrieve content items in bulk API](../reference/openapi.v1.yml/paths/~1v1~1social~1contents~1search/post) for optimal performance.

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

api_instance = Phyllo::EngagementApi.new
opts = {
  refresh1: Phyllo::Refresh1.new({account_id: 'account_id_example'}) # Refresh1 | 
}

begin
  # Refresh content items
  result = api_instance.v1_refresh_social_contents(opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_refresh_social_contents: #{e}"
end
```

#### Using the v1_refresh_social_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refresh1>, Integer, Hash)> v1_refresh_social_contents_with_http_info(opts)

```ruby
begin
  # Refresh content items
  data, status_code, headers = api_instance.v1_refresh_social_contents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refresh1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_refresh_social_contents_with_http_info: #{e}"
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

- **Content-Type**: application/json, application/xml
- **Accept**: application/json


## v1_stream_get_content_groups

> <ContentGroupList1> v1_stream_get_content_groups(account_id, opts)

Retrieve all content groups

Returns all Content Groups objects.

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

api_instance = Phyllo::EngagementApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
opts = {
  offset: 56, # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  from_date: Date.parse('Sat Jan 30 17:00:00 MST 2021'), # Date | Return content items published on or after this date. (YYYY-MM-DD)
  to_date: Date.parse('Sat Jan 30 17:00:00 MST 2021') # Date | Return content items published on or before this date. (YYYY-MM-DD)
}

begin
  # Retrieve all content groups
  result = api_instance.v1_stream_get_content_groups(account_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_stream_get_content_groups: #{e}"
end
```

#### Using the v1_stream_get_content_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentGroupList1>, Integer, Hash)> v1_stream_get_content_groups_with_http_info(account_id, opts)

```ruby
begin
  # Retrieve all content groups
  data, status_code, headers = api_instance.v1_stream_get_content_groups_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentGroupList1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_stream_get_content_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **from_date** | **Date** | Return content items published on or after this date. (YYYY-MM-DD) | [optional] |
| **to_date** | **Date** | Return content items published on or before this date. (YYYY-MM-DD) | [optional] |

### Return type

[**ContentGroupList1**](ContentGroupList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_stream_get_content_groups_by_id

> <ContentGroup1> v1_stream_get_content_groups_by_id(id)

Retrieve a content group

Retrieve the information of the Content Group with the supplied Content Group id.

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

api_instance = Phyllo::EngagementApi.new
id = 'id_example' # String | Unique identifier for the content group

begin
  # Retrieve a content group
  result = api_instance.v1_stream_get_content_groups_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_stream_get_content_groups_by_id: #{e}"
end
```

#### Using the v1_stream_get_content_groups_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentGroup1>, Integer, Hash)> v1_stream_get_content_groups_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a content group
  data, status_code, headers = api_instance.v1_stream_get_content_groups_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentGroup1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_stream_get_content_groups_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the content group |  |

### Return type

[**ContentGroup1**](ContentGroup1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_stream_get_contents

> <ContentList1> v1_stream_get_contents(account_id, opts)

Retrieve all content items

Lists all Contents.

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

api_instance = Phyllo::EngagementApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
opts = {
  offset: 56, # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
  limit: 56, # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  from_date: Date.parse('Sat Jan 30 17:00:00 MST 2021'), # Date | Return content items published on or after this date. (YYYY-MM-DD)
  to_date: Date.parse('Sat Jan 30 17:00:00 MST 2021') # Date | Return content items published on or before this date. (YYYY-MM-DD)
}

begin
  # Retrieve all content items
  result = api_instance.v1_stream_get_contents(account_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_stream_get_contents: #{e}"
end
```

#### Using the v1_stream_get_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentList1>, Integer, Hash)> v1_stream_get_contents_with_http_info(account_id, opts)

```ruby
begin
  # Retrieve all content items
  data, status_code, headers = api_instance.v1_stream_get_contents_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentList1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_stream_get_contents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |
| **from_date** | **Date** | Return content items published on or after this date. (YYYY-MM-DD) | [optional] |
| **to_date** | **Date** | Return content items published on or before this date. (YYYY-MM-DD) | [optional] |

### Return type

[**ContentList1**](ContentList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_stream_get_contents_by_id

> <Content1> v1_stream_get_contents_by_id(id)

Retrieve a content item

Retrieve the information of the Content with the supplied Content id.

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

api_instance = Phyllo::EngagementApi.new
id = 'id_example' # String | Unique identifier for the content

begin
  # Retrieve a content item
  result = api_instance.v1_stream_get_contents_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_stream_get_contents_by_id: #{e}"
end
```

#### Using the v1_stream_get_contents_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Content1>, Integer, Hash)> v1_stream_get_contents_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a content item
  data, status_code, headers = api_instance.v1_stream_get_contents_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Content1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_stream_get_contents_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the content |  |

### Return type

[**Content1**](Content1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_streampub_get_contents

> <ContentList1> v1_streampub_get_contents(account_id, opts)

Retrieve all publication content items

Lists all publication posts.

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

api_instance = Phyllo::EngagementApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique ID of the connected account.
opts = {
  offset: 56, # Integer | The number of objects to skip. Use this argument for pagination. The default value is 0.
  limit: 56 # Integer | The number of objects to be returned. It can be between 1 to 100. The default value is 10.
}

begin
  # Retrieve all publication content items
  result = api_instance.v1_streampub_get_contents(account_id, opts)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_streampub_get_contents: #{e}"
end
```

#### Using the v1_streampub_get_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContentList1>, Integer, Hash)> v1_streampub_get_contents_with_http_info(account_id, opts)

```ruby
begin
  # Retrieve all publication content items
  data, status_code, headers = api_instance.v1_streampub_get_contents_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContentList1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_streampub_get_contents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique ID of the connected account. |  |
| **offset** | **Integer** | The number of objects to skip. Use this argument for pagination. The default value is 0. | [optional][default to 0] |
| **limit** | **Integer** | The number of objects to be returned. It can be between 1 to 100. The default value is 10. | [optional][default to 10] |

### Return type

[**ContentList1**](ContentList1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_streampub_get_contents_by_id

> <Content1> v1_streampub_get_contents_by_id(id)

Retrieve a publication content item

Retrieve the engagement information of the newsletter publication with the supplied content id.

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

api_instance = Phyllo::EngagementApi.new
id = 'id_example' # String | Unique identifier for the content

begin
  # Retrieve a publication content item
  result = api_instance.v1_streampub_get_contents_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_streampub_get_contents_by_id: #{e}"
end
```

#### Using the v1_streampub_get_contents_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Content1>, Integer, Hash)> v1_streampub_get_contents_by_id_with_http_info(id)

```ruby
begin
  # Retrieve a publication content item
  data, status_code, headers = api_instance.v1_streampub_get_contents_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Content1>
rescue Phyllo::ApiError => e
  puts "Error when calling EngagementApi->v1_streampub_get_contents_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the content |  |

### Return type

[**Content1**](Content1.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

