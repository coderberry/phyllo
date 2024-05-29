# Phyllo

[![RubyDocs](https://img.shields.io/badge/RubyDocs-Phyllo-red?logo=rubygems)](https://www.rubydoc.info/github/coderberry/phyllo)

The **Phyllo API** is built on RESTful principles and returns JSON encoded responses and accepts JSON payloads. It is only available through HTTPS to ensure the security of the data in transfer. These APIs must be called only from your server and never from your app / frontend as this is a security concern.

The API operates in three environments: **sandbox**, **staging** and **production**.

The sandbox environment returns mock data and is used for testing the basic functionality of the system.

The staging environment is exactly like a production environment but with certain limitations. It is used for your internal testing and development purposes.

The production environment connects to real platform accounts and all data reads and writes are made to live accounts. This is what you would use to get data for your customers.

## Sponsors

<p align="center">
  <em>Proudly sponsored by</em>
</p>
<p align="center">
  <a href="https://www.sponsorless.com">
    <img src="https://www.sponsorless.com/assets/logo-horizontal-color-white-26909ed8dd6bacc4bae4a40542b273cd05c484297f2077bd47e9c50e2f8f6969.svg" width="575" />
  </a>
</p>

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build sponsorless-phyllo.gemspec
```

Then either install the gem locally:

```shell
gem install ./sponsorless-phyllo-1.0.0.gem
```

(for development, run `gem install --dev ./sponsorless-phyllo-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'sponsorless-phyllo', '~> 1.0.0', require: "phyllo"

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/coderberry/phyllo.git, then add the following in the Gemfile:

    gem 'sponsorless-phyllo', :git => 'https://github.com/sponsorless/sponsorless-phyllo.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'phyllo'

# Setup authorization 
# NOTE: credentials are different between environments (e.g. sandbox, staging, production)
Phyllo.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'CLIENT_ID'
  config.password = 'CLIENT_SECRET'
end

api_instance = Phyllo::ActivityApi.new
id = 'id_example' # String | Unique identifier for the artist

begin
  #Retrieve an artist (user activity)
  result = api_instance.v1_get_media_activity_artist_by_id(id)
  p result
rescue Phyllo::ApiError => e
  puts "Exception when calling ActivityApi->v1_get_media_activity_artist_by_id: #{e}"
end

```

## API Usage Examples

- **[Connect API](https://github.com/coderberry/phyllo/blob/main/CONNECT_API.md):** Creator’s consent is required to access their data. Connect APIs manage users and consent before fetching data about them.
- **[Identity API](https://github.com/coderberry/phyllo/blob/main/IDENTITY_API.md):** Access creator’s profile & reputation information.
- **[Engagement API](https://github.com/coderberry/phyllo/blob/main/ENGAGEMENT_API.md):** Engagement APIs help access the creator’s content and its related engagement metrics.
- **[Activity API](https://github.com/coderberry/phyllo/blob/main/ACTIVITY_API.md):** Activity APIs help access information related to the user activity on the platform.
- **[Webhook API](https://github.com/coderberry/phyllo/blob/main/WEBHOOKS_API.md):** Phyllo uses webhooks to send programmatic updates about your creator’s data when the data is **added**, **updated**, or **deleted**. For example, Phyllo sends an event account.added when the creator links a new work platform account.

## Documentation for API Endpoints

All URIs are relative to *https://api.sandbox.getphyllo.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Phyllo::ActivityApi* | [**v1_get_media_activity_artist_by_id**](docs/ActivityApi.md#v1_get_media_activity_artist_by_id) | **GET** /v1/media/activity/artists/{id} | Retrieve an artist (user activity)
*Phyllo::ActivityApi* | [**v1_get_media_activity_artists**](docs/ActivityApi.md#v1_get_media_activity_artists) | **GET** /v1/media/activity/artists | Retrieve artists for an account (user activity)
*Phyllo::ActivityApi* | [**v1_get_media_activity_content_by_id**](docs/ActivityApi.md#v1_get_media_activity_content_by_id) | **GET** /v1/media/activity/contents/{id} | Retrieve a content (user activity)
*Phyllo::ActivityApi* | [**v1_get_media_activity_contents**](docs/ActivityApi.md#v1_get_media_activity_contents) | **GET** /v1/media/activity/contents | Retrieve contents for an account (user activity)
*Phyllo::ActivityApi* | [**v1_search_media_activity_artists**](docs/ActivityApi.md#v1_search_media_activity_artists) | **POST** /v1/media/activity/artists/search | Retrieve artists for an account (user activity) in bulk
*Phyllo::ActivityApi* | [**v1_search_media_activity_contents**](docs/ActivityApi.md#v1_search_media_activity_contents) | **POST** /v1/media/activity/contents/search | Retrieve contents for an account (user activity) in bulk
*Phyllo::ConnectApi* | [**v1_connect_get_users**](docs/ConnectApi.md#v1_connect_get_users) | **GET** /v1/users | Retrieve all users
*Phyllo::ConnectApi* | [**v1_connect_get_users_by_external_id**](docs/ConnectApi.md#v1_connect_get_users_by_external_id) | **GET** /v1/users/external_id/{external_id} | Retrieve a user by external ID
*Phyllo::ConnectApi* | [**v1_connect_get_users_by_id**](docs/ConnectApi.md#v1_connect_get_users_by_id) | **GET** /v1/users/{id} | Retrieve a user
*Phyllo::ConnectApi* | [**v1_connect_get_work_platforms**](docs/ConnectApi.md#v1_connect_get_work_platforms) | **GET** /v1/work-platforms | Retrieve all work platforms
*Phyllo::ConnectApi* | [**v1_connect_get_work_platforms_by_id**](docs/ConnectApi.md#v1_connect_get_work_platforms_by_id) | **GET** /v1/work-platforms/{id} | Retrieve a work platform
*Phyllo::ConnectApi* | [**v1_connect_post_sdk_tokens**](docs/ConnectApi.md#v1_connect_post_sdk_tokens) | **POST** /v1/sdk-tokens | Create an SDK token
*Phyllo::ConnectApi* | [**v1_connect_post_users**](docs/ConnectApi.md#v1_connect_post_users) | **POST** /v1/users | Create a user
*Phyllo::ConnectApi* | [**v1_disconnect_account_by_id**](docs/ConnectApi.md#v1_disconnect_account_by_id) | **POST** /v1/accounts/{id}/disconnect | Disconnect an account
*Phyllo::ConnectApi* | [**v1_stream_get_accounts**](docs/ConnectApi.md#v1_stream_get_accounts) | **GET** /v1/accounts | Retrieve all accounts
*Phyllo::ConnectApi* | [**v1_stream_get_accounts_by_id**](docs/ConnectApi.md#v1_stream_get_accounts_by_id) | **GET** /v1/accounts/{id} | Retrieve an account
*Phyllo::EngagementApi* | [**postv1pubcontentssearch**](docs/EngagementApi.md#postv1pubcontentssearch) | **POST** /v1/publications/contents/search | Retrieve publication content items in bulk
*Phyllo::EngagementApi* | [**postv1socialcontentgroupssearch**](docs/EngagementApi.md#postv1socialcontentgroupssearch) | **POST** /v1/social/content-groups/search | Retrieve content group items in bulk
*Phyllo::EngagementApi* | [**postv1socialcontentssearch**](docs/EngagementApi.md#postv1socialcontentssearch) | **POST** /v1/social/contents/search | Retrieve content items in bulk
*Phyllo::EngagementApi* | [**v1_engagement_get_comments**](docs/EngagementApi.md#v1_engagement_get_comments) | **GET** /v1/social/comments | Retrieve all comments
*Phyllo::EngagementApi* | [**v1_fetch_historic_social_content_groups**](docs/EngagementApi.md#v1_fetch_historic_social_content_groups) | **POST** /v1/social/content-groups/fetch-historic | Fetch historic content groups
*Phyllo::EngagementApi* | [**v1_fetch_historic_social_contents**](docs/EngagementApi.md#v1_fetch_historic_social_contents) | **POST** /v1/social/contents/fetch-historic | Fetch historic content items
*Phyllo::EngagementApi* | [**v1_refresh_social_content_groups**](docs/EngagementApi.md#v1_refresh_social_content_groups) | **POST** /v1/social/content-groups/refresh | Refresh content groups
*Phyllo::EngagementApi* | [**v1_refresh_social_contents**](docs/EngagementApi.md#v1_refresh_social_contents) | **POST** /v1/social/contents/refresh | Refresh content items
*Phyllo::EngagementApi* | [**v1_stream_get_content_groups**](docs/EngagementApi.md#v1_stream_get_content_groups) | **GET** /v1/social/content-groups | Retrieve all content groups
*Phyllo::EngagementApi* | [**v1_stream_get_content_groups_by_id**](docs/EngagementApi.md#v1_stream_get_content_groups_by_id) | **GET** /v1/social/content-groups/{id} | Retrieve a content group
*Phyllo::EngagementApi* | [**v1_stream_get_contents**](docs/EngagementApi.md#v1_stream_get_contents) | **GET** /v1/social/contents | Retrieve all content items
*Phyllo::EngagementApi* | [**v1_stream_get_contents_by_id**](docs/EngagementApi.md#v1_stream_get_contents_by_id) | **GET** /v1/social/contents/{id} | Retrieve a content item
*Phyllo::EngagementApi* | [**v1_streampub_get_contents**](docs/EngagementApi.md#v1_streampub_get_contents) | **GET** /v1/publications/contents | Retrieve all publication content items
*Phyllo::EngagementApi* | [**v1_streampub_get_contents_by_id**](docs/EngagementApi.md#v1_streampub_get_contents_by_id) | **GET** /v1/publications/contents/{id} | Retrieve a publication content item
*Phyllo::IdentityApi* | [**v1_get_audience_demographics**](docs/IdentityApi.md#v1_get_audience_demographics) | **GET** /v1/audience | Retrieve audience demographics
*Phyllo::IdentityApi* | [**v1_refresh_profile**](docs/IdentityApi.md#v1_refresh_profile) | **POST** /v1/profiles/refresh | Refresh a profile
*Phyllo::IdentityApi* | [**v1_stream_get_profile_by_id**](docs/IdentityApi.md#v1_stream_get_profile_by_id) | **GET** /v1/profiles/{id} | Retrieve a profile
*Phyllo::IdentityApi* | [**v1_stream_get_profiles**](docs/IdentityApi.md#v1_stream_get_profiles) | **GET** /v1/profiles | Retrieve all profiles
*Phyllo::IncomeApi* | [**v1_fetch_historic_commerce_income_balances**](docs/IncomeApi.md#v1_fetch_historic_commerce_income_balances) | **POST** /v1/commerce/income/balances/fetch-historic | Fetch historic e-commerce balances for an account
*Phyllo::IncomeApi* | [**v1_fetch_historic_commerce_income_payouts**](docs/IncomeApi.md#v1_fetch_historic_commerce_income_payouts) | **POST** /v1/commerce/income/payouts/fetch-historic | Fetch historic e-commerce payouts for an account
*Phyllo::IncomeApi* | [**v1_fetch_historic_commerce_income_transactions**](docs/IncomeApi.md#v1_fetch_historic_commerce_income_transactions) | **POST** /v1/commerce/income/transactions/fetch-historic | Fetch historic e-commerce transactions for an account
*Phyllo::IncomeApi* | [**v1_fetch_historic_social_income_payouts**](docs/IncomeApi.md#v1_fetch_historic_social_income_payouts) | **POST** /v1/social/income/payouts/fetch-historic | Fetch historic social payouts for an account
*Phyllo::IncomeApi* | [**v1_fetch_historic_social_income_transactions**](docs/IncomeApi.md#v1_fetch_historic_social_income_transactions) | **POST** /v1/social/income/transactions/fetch-historic | Fetch historic social transactions for an account
*Phyllo::IncomeApi* | [**v1_get_commerce_income_balance_by_id**](docs/IncomeApi.md#v1_get_commerce_income_balance_by_id) | **GET** /v1/commerce/income/balances/{id} | Retrieve a e-commerce balance
*Phyllo::IncomeApi* | [**v1_get_commerce_income_balances**](docs/IncomeApi.md#v1_get_commerce_income_balances) | **GET** /v1/commerce/income/balances | Retrieve e-commerce balances for an account
*Phyllo::IncomeApi* | [**v1_get_commerce_income_payout_by_id**](docs/IncomeApi.md#v1_get_commerce_income_payout_by_id) | **GET** /v1/commerce/income/payouts/{id} | Retrieve a e-commerce payout
*Phyllo::IncomeApi* | [**v1_get_commerce_income_payouts**](docs/IncomeApi.md#v1_get_commerce_income_payouts) | **GET** /v1/commerce/income/payouts | Retrieve e-commerce payouts for an account
*Phyllo::IncomeApi* | [**v1_get_commerce_income_transaction_by_id**](docs/IncomeApi.md#v1_get_commerce_income_transaction_by_id) | **GET** /v1/commerce/income/transactions/{id} | Retrieve a e-commerce transaction
*Phyllo::IncomeApi* | [**v1_get_commerce_income_transactions**](docs/IncomeApi.md#v1_get_commerce_income_transactions) | **GET** /v1/commerce/income/transactions | Retrieve e-commerce transactions for an account
*Phyllo::IncomeApi* | [**v1_get_social_income_payout_by_id**](docs/IncomeApi.md#v1_get_social_income_payout_by_id) | **GET** /v1/social/income/payouts/{id} | Retrieve a social payout
*Phyllo::IncomeApi* | [**v1_get_social_income_payouts**](docs/IncomeApi.md#v1_get_social_income_payouts) | **GET** /v1/social/income/payouts | Retrieve social payouts for an account
*Phyllo::IncomeApi* | [**v1_get_social_income_transaction_by_id**](docs/IncomeApi.md#v1_get_social_income_transaction_by_id) | **GET** /v1/social/income/transactions/{id} | Retrieve a social transaction
*Phyllo::IncomeApi* | [**v1_get_social_income_transactions**](docs/IncomeApi.md#v1_get_social_income_transactions) | **GET** /v1/social/income/transactions | Retrieve social transactions for an account
*Phyllo::IncomeApi* | [**v1_refresh_commerce_income_balances**](docs/IncomeApi.md#v1_refresh_commerce_income_balances) | **POST** /v1/commerce/income/balances/refresh | Refresh e-commerce balances for an account
*Phyllo::IncomeApi* | [**v1_refresh_commerce_income_payouts**](docs/IncomeApi.md#v1_refresh_commerce_income_payouts) | **POST** /v1/commerce/income/payouts/refresh | Refresh e-commerce payouts for an account
*Phyllo::IncomeApi* | [**v1_refresh_commerce_income_transactions**](docs/IncomeApi.md#v1_refresh_commerce_income_transactions) | **POST** /v1/commerce/income/transactions/refresh | Refresh e-commerce transactions for an account
*Phyllo::IncomeApi* | [**v1_refresh_social_income_payouts**](docs/IncomeApi.md#v1_refresh_social_income_payouts) | **POST** /v1/social/income/payouts/refresh | Refresh social payouts for an account
*Phyllo::IncomeApi* | [**v1_refresh_social_income_transactions**](docs/IncomeApi.md#v1_refresh_social_income_transactions) | **POST** /v1/social/income/transactions/refresh | Refresh social transactions for an account
*Phyllo::IncomeApi* | [**v1_search_commerce_income_balances**](docs/IncomeApi.md#v1_search_commerce_income_balances) | **POST** /v1/commerce/income/balances/search | Retrieve e-commerce balances in bulk
*Phyllo::IncomeApi* | [**v1_search_commerce_income_payouts**](docs/IncomeApi.md#v1_search_commerce_income_payouts) | **POST** /v1/commerce/income/payouts/search | Retrieve e-commerce payouts in bulk
*Phyllo::IncomeApi* | [**v1_search_commerce_income_transactions**](docs/IncomeApi.md#v1_search_commerce_income_transactions) | **POST** /v1/commerce/income/transactions/search | Retrieve e-commerce transactions in bulk
*Phyllo::IncomeApi* | [**v1_search_social_income_payouts**](docs/IncomeApi.md#v1_search_social_income_payouts) | **POST** /v1/social/income/payouts/search | Retrieve social payouts in bulk
*Phyllo::IncomeApi* | [**v1_search_social_income_transactions**](docs/IncomeApi.md#v1_search_social_income_transactions) | **POST** /v1/social/income/transactions/search | Retrieve social transactions in bulk
*Phyllo::PublishApi* | [**v1_get_social_content_publish**](docs/PublishApi.md#v1_get_social_content_publish) | **GET** /v1/social/contents/publish/{id} | Check status of content publish
*Phyllo::PublishApi* | [**v1_social_content_publish**](docs/PublishApi.md#v1_social_content_publish) | **POST** /v1/social/contents/publish | Publish content to a platform
*Phyllo::WebhookApi* | [**v1_webhook_delete_webhooks_by_id**](docs/WebhookApi.md#v1_webhook_delete_webhooks_by_id) | **DELETE** /v1/webhooks/{id} | Delete a webhook
*Phyllo::WebhookApi* | [**v1_webhook_get_webhooks**](docs/WebhookApi.md#v1_webhook_get_webhooks) | **GET** /v1/webhooks | Retrieve all webhooks
*Phyllo::WebhookApi* | [**v1_webhook_get_webhooks_by_id**](docs/WebhookApi.md#v1_webhook_get_webhooks_by_id) | **GET** /v1/webhooks/{id} | Retrieve a webhook
*Phyllo::WebhookApi* | [**v1_webhook_post_webhooks**](docs/WebhookApi.md#v1_webhook_post_webhooks) | **POST** /v1/webhooks | Create a webhook
*Phyllo::WebhookApi* | [**v1_webhook_post_webhooks_send**](docs/WebhookApi.md#v1_webhook_post_webhooks_send) | **POST** /v1/webhooks/send | Send a mock webhook notification
*Phyllo::WebhookApi* | [**v1_webhook_put_webhooks_by_id**](docs/WebhookApi.md#v1_webhook_put_webhooks_by_id) | **PUT** /v1/webhooks/{id} | Update a webhook


## Documentation for Models

 - [Phyllo::Account](docs/Account.md)
 - [Phyllo::Account1](docs/Account1.md)
 - [Phyllo::Account1Data](docs/Account1Data.md)
 - [Phyllo::Account1DataActivity](docs/Account1DataActivity.md)
 - [Phyllo::Account1DataEngagement](docs/Account1DataEngagement.md)
 - [Phyllo::Account1DataEngagementAudience](docs/Account1DataEngagementAudience.md)
 - [Phyllo::Account1DataIdentity](docs/Account1DataIdentity.md)
 - [Phyllo::Account1DataIdentityAudience](docs/Account1DataIdentityAudience.md)
 - [Phyllo::Account1DataIncome](docs/Account1DataIncome.md)
 - [Phyllo::Account1DataPublish](docs/Account1DataPublish.md)
 - [Phyllo::AccountAttribute](docs/AccountAttribute.md)
 - [Phyllo::AccountAttribute1](docs/AccountAttribute1.md)
 - [Phyllo::AccountList](docs/AccountList.md)
 - [Phyllo::AccountList1](docs/AccountList1.md)
 - [Phyllo::ActivityArtist](docs/ActivityArtist.md)
 - [Phyllo::ActivityArtist1](docs/ActivityArtist1.md)
 - [Phyllo::ActivityArtistList](docs/ActivityArtistList.md)
 - [Phyllo::ActivityArtistList1](docs/ActivityArtistList1.md)
 - [Phyllo::ActivityArtistSearch](docs/ActivityArtistSearch.md)
 - [Phyllo::ActivityArtistSearch1](docs/ActivityArtistSearch1.md)
 - [Phyllo::ActivityArtistSearchList](docs/ActivityArtistSearchList.md)
 - [Phyllo::ActivityArtistSearchList1](docs/ActivityArtistSearchList1.md)
 - [Phyllo::ActivityContent](docs/ActivityContent.md)
 - [Phyllo::ActivityContent1](docs/ActivityContent1.md)
 - [Phyllo::ActivityContent1AdditionalInfo](docs/ActivityContent1AdditionalInfo.md)
 - [Phyllo::ActivityContentList](docs/ActivityContentList.md)
 - [Phyllo::ActivityContentList1](docs/ActivityContentList1.md)
 - [Phyllo::ActivityContentSearch](docs/ActivityContentSearch.md)
 - [Phyllo::ActivityContentSearch1](docs/ActivityContentSearch1.md)
 - [Phyllo::ActivityContentSearchList](docs/ActivityContentSearchList.md)
 - [Phyllo::ActivityContentSearchList1](docs/ActivityContentSearchList1.md)
 - [Phyllo::Certifications](docs/Certifications.md)
 - [Phyllo::Certifications1](docs/Certifications1.md)
 - [Phyllo::Certifications1TimePeriod](docs/Certifications1TimePeriod.md)
 - [Phyllo::Certifications1TimePeriodEndDate](docs/Certifications1TimePeriodEndDate.md)
 - [Phyllo::Comment](docs/Comment.md)
 - [Phyllo::Comment1](docs/Comment1.md)
 - [Phyllo::CommentResponse](docs/CommentResponse.md)
 - [Phyllo::CommentResponseList](docs/CommentResponseList.md)
 - [Phyllo::CommerceBalance](docs/CommerceBalance.md)
 - [Phyllo::CommerceBalance1](docs/CommerceBalance1.md)
 - [Phyllo::CommerceBalanceAmount](docs/CommerceBalanceAmount.md)
 - [Phyllo::CommerceBalanceAmount1](docs/CommerceBalanceAmount1.md)
 - [Phyllo::CommerceBalanceList](docs/CommerceBalanceList.md)
 - [Phyllo::CommerceBalanceList1](docs/CommerceBalanceList1.md)
 - [Phyllo::CommerceBalanceSearch](docs/CommerceBalanceSearch.md)
 - [Phyllo::CommerceBalanceSearch1](docs/CommerceBalanceSearch1.md)
 - [Phyllo::CommerceBalanceSearchList](docs/CommerceBalanceSearchList.md)
 - [Phyllo::CommerceBalanceSearchList1](docs/CommerceBalanceSearchList1.md)
 - [Phyllo::CommercePayout](docs/CommercePayout.md)
 - [Phyllo::CommercePayout1](docs/CommercePayout1.md)
 - [Phyllo::CommercePayout1BankDetails](docs/CommercePayout1BankDetails.md)
 - [Phyllo::CommercePayoutList](docs/CommercePayoutList.md)
 - [Phyllo::CommercePayoutList1](docs/CommercePayoutList1.md)
 - [Phyllo::CommercePayoutSearch](docs/CommercePayoutSearch.md)
 - [Phyllo::CommercePayoutSearch1](docs/CommercePayoutSearch1.md)
 - [Phyllo::CommercePayoutSearchList](docs/CommercePayoutSearchList.md)
 - [Phyllo::CommercePayoutSearchList1](docs/CommercePayoutSearchList1.md)
 - [Phyllo::CommerceTransaction](docs/CommerceTransaction.md)
 - [Phyllo::CommerceTransaction1](docs/CommerceTransaction1.md)
 - [Phyllo::CommerceTransactionList](docs/CommerceTransactionList.md)
 - [Phyllo::CommerceTransactionList1](docs/CommerceTransactionList1.md)
 - [Phyllo::CommerceTransactionSearch](docs/CommerceTransactionSearch.md)
 - [Phyllo::CommerceTransactionSearch1](docs/CommerceTransactionSearch1.md)
 - [Phyllo::CommerceTransactionSearchList](docs/CommerceTransactionSearchList.md)
 - [Phyllo::CommerceTransactionSearchList1](docs/CommerceTransactionSearchList1.md)
 - [Phyllo::Content](docs/Content.md)
 - [Phyllo::Content1](docs/Content1.md)
 - [Phyllo::Content1Collaboration](docs/Content1Collaboration.md)
 - [Phyllo::Content1Engagement](docs/Content1Engagement.md)
 - [Phyllo::Content1EngagementAdditionalInfo](docs/Content1EngagementAdditionalInfo.md)
 - [Phyllo::Content1EngagementAdditionalInfoStoryNavigation](docs/Content1EngagementAdditionalInfoStoryNavigation.md)
 - [Phyllo::Content1Sponsored](docs/Content1Sponsored.md)
 - [Phyllo::ContentAttribute](docs/ContentAttribute.md)
 - [Phyllo::ContentAttribute1](docs/ContentAttribute1.md)
 - [Phyllo::ContentGroup](docs/ContentGroup.md)
 - [Phyllo::ContentGroup1](docs/ContentGroup1.md)
 - [Phyllo::ContentGroup1Engagement](docs/ContentGroup1Engagement.md)
 - [Phyllo::ContentGroupList](docs/ContentGroupList.md)
 - [Phyllo::ContentGroupList1](docs/ContentGroupList1.md)
 - [Phyllo::ContentGroupSearch](docs/ContentGroupSearch.md)
 - [Phyllo::ContentGroupSearch1](docs/ContentGroupSearch1.md)
 - [Phyllo::ContentGroupSearchList](docs/ContentGroupSearchList.md)
 - [Phyllo::ContentGroupSearchList1](docs/ContentGroupSearchList1.md)
 - [Phyllo::ContentList](docs/ContentList.md)
 - [Phyllo::ContentList1](docs/ContentList1.md)
 - [Phyllo::ContentSearch](docs/ContentSearch.md)
 - [Phyllo::ContentSearch1](docs/ContentSearch1.md)
 - [Phyllo::ContentSearchList](docs/ContentSearchList.md)
 - [Phyllo::ContentSearchList1](docs/ContentSearchList1.md)
 - [Phyllo::CreateWebhookRequest](docs/CreateWebhookRequest.md)
 - [Phyllo::CreateWebhookRequest1](docs/CreateWebhookRequest1.md)
 - [Phyllo::Demographics](docs/Demographics.md)
 - [Phyllo::DemographicsAttributes](docs/DemographicsAttributes.md)
 - [Phyllo::DemographicsAttributes1CitiesInner](docs/DemographicsAttributes1CitiesInner.md)
 - [Phyllo::DemographicsAttributes1CountriesInner](docs/DemographicsAttributes1CountriesInner.md)
 - [Phyllo::DemographicsAttributes1GenderAgeDistributionInner](docs/DemographicsAttributes1GenderAgeDistributionInner.md)
 - [Phyllo::DisconnectAccountResponse](docs/DisconnectAccountResponse.md)
 - [Phyllo::DisconnectAccountResponse1](docs/DisconnectAccountResponse1.md)
 - [Phyllo::Education](docs/Education.md)
 - [Phyllo::Education1](docs/Education1.md)
 - [Phyllo::Education1School](docs/Education1School.md)
 - [Phyllo::Education1TimePeriod](docs/Education1TimePeriod.md)
 - [Phyllo::Education1TimePeriodStartDate](docs/Education1TimePeriodStartDate.md)
 - [Phyllo::Error](docs/Error.md)
 - [Phyllo::ErrorError](docs/ErrorError.md)
 - [Phyllo::FetchHistoric](docs/FetchHistoric.md)
 - [Phyllo::FetchHistoric1](docs/FetchHistoric1.md)
 - [Phyllo::Honors](docs/Honors.md)
 - [Phyllo::Honors1](docs/Honors1.md)
 - [Phyllo::Honors1Date](docs/Honors1Date.md)
 - [Phyllo::Metadata](docs/Metadata.md)
 - [Phyllo::Metadata1](docs/Metadata1.md)
 - [Phyllo::PlatformError](docs/PlatformError.md)
 - [Phyllo::PlatformError1](docs/PlatformError1.md)
 - [Phyllo::Profile](docs/Profile.md)
 - [Phyllo::Profile1](docs/Profile1.md)
 - [Phyllo::Profile1AddressesInner](docs/Profile1AddressesInner.md)
 - [Phyllo::Profile1EmailsInner](docs/Profile1EmailsInner.md)
 - [Phyllo::Profile1PhoneNumbersInner](docs/Profile1PhoneNumbersInner.md)
 - [Phyllo::Profile1Reputation](docs/Profile1Reputation.md)
 - [Phyllo::ProfileList](docs/ProfileList.md)
 - [Phyllo::ProfileList1](docs/ProfileList1.md)
 - [Phyllo::Projects](docs/Projects.md)
 - [Phyllo::Projects1](docs/Projects1.md)
 - [Phyllo::Publications](docs/Publications.md)
 - [Phyllo::Publications1](docs/Publications1.md)
 - [Phyllo::Publications1Date](docs/Publications1Date.md)
 - [Phyllo::PublishContent](docs/PublishContent.md)
 - [Phyllo::PublishContent1AdditionalInfo](docs/PublishContent1AdditionalInfo.md)
 - [Phyllo::PublishContentMedia](docs/PublishContentMedia.md)
 - [Phyllo::PublishContentMedia1](docs/PublishContentMedia1.md)
 - [Phyllo::PublishContentMedia2](docs/PublishContentMedia2.md)
 - [Phyllo::PublishContentRequest](docs/PublishContentRequest.md)
 - [Phyllo::PublishContentRequest1](docs/PublishContentRequest1.md)
 - [Phyllo::PublishContentResponse](docs/PublishContentResponse.md)
 - [Phyllo::PublishContentResponse1](docs/PublishContentResponse1.md)
 - [Phyllo::PublishContentResponse1Data](docs/PublishContentResponse1Data.md)
 - [Phyllo::PublishContentResponse1DataAllOfPublishedInfo](docs/PublishContentResponse1DataAllOfPublishedInfo.md)
 - [Phyllo::Refresh](docs/Refresh.md)
 - [Phyllo::Refresh1](docs/Refresh1.md)
 - [Phyllo::SDKTokenRequest](docs/SDKTokenRequest.md)
 - [Phyllo::SDKTokenRequest1](docs/SDKTokenRequest1.md)
 - [Phyllo::SDKTokenResponse](docs/SDKTokenResponse.md)
 - [Phyllo::SDKTokenResponse1](docs/SDKTokenResponse1.md)
 - [Phyllo::SendWebhookPayload](docs/SendWebhookPayload.md)
 - [Phyllo::SendWebhookPayload1](docs/SendWebhookPayload1.md)
 - [Phyllo::SocialTransaction](docs/SocialTransaction.md)
 - [Phyllo::SocialTransaction1](docs/SocialTransaction1.md)
 - [Phyllo::SocialTransactionList](docs/SocialTransactionList.md)
 - [Phyllo::SocialTransactionList1](docs/SocialTransactionList1.md)
 - [Phyllo::SocialTransactionSearch](docs/SocialTransactionSearch.md)
 - [Phyllo::SocialTransactionSearch1](docs/SocialTransactionSearch1.md)
 - [Phyllo::SocialTransactionSearchList](docs/SocialTransactionSearchList.md)
 - [Phyllo::SocialTransactionSearchList1](docs/SocialTransactionSearchList1.md)
 - [Phyllo::UpdateWebhookRequest](docs/UpdateWebhookRequest.md)
 - [Phyllo::UpdateWebhookRequest1](docs/UpdateWebhookRequest1.md)
 - [Phyllo::User](docs/User.md)
 - [Phyllo::UserAttribute](docs/UserAttribute.md)
 - [Phyllo::UserAttribute1](docs/UserAttribute1.md)
 - [Phyllo::UserRequest](docs/UserRequest.md)
 - [Phyllo::UserRequest1](docs/UserRequest1.md)
 - [Phyllo::UserResponse](docs/UserResponse.md)
 - [Phyllo::UserResponseList](docs/UserResponseList.md)
 - [Phyllo::UserResponseList1](docs/UserResponseList1.md)
 - [Phyllo::V1GetAudienceDemographics200Response](docs/V1GetAudienceDemographics200Response.md)
 - [Phyllo::VolunteerExperiences](docs/VolunteerExperiences.md)
 - [Phyllo::VolunteerExperiences1](docs/VolunteerExperiences1.md)
 - [Phyllo::WebhookPayload](docs/WebhookPayload.md)
 - [Phyllo::WebhookPayload1](docs/WebhookPayload1.md)
 - [Phyllo::WebhookResponse](docs/WebhookResponse.md)
 - [Phyllo::WebhookResponse1](docs/WebhookResponse1.md)
 - [Phyllo::WebhookResponseList](docs/WebhookResponseList.md)
 - [Phyllo::WebhookResponseList1](docs/WebhookResponseList1.md)
 - [Phyllo::WorkExperience](docs/WorkExperience.md)
 - [Phyllo::WorkExperience1](docs/WorkExperience1.md)
 - [Phyllo::WorkExperience1Company](docs/WorkExperience1Company.md)
 - [Phyllo::WorkExperience1CompanyEmployeeCount](docs/WorkExperience1CompanyEmployeeCount.md)
 - [Phyllo::WorkExperience1Location](docs/WorkExperience1Location.md)
 - [Phyllo::WorkExperience1TimePeriod](docs/WorkExperience1TimePeriod.md)
 - [Phyllo::WorkExperience1TimePeriodEndDate](docs/WorkExperience1TimePeriodEndDate.md)
 - [Phyllo::WorkExperience1TimePeriodStartDate](docs/WorkExperience1TimePeriodStartDate.md)
 - [Phyllo::WorkPlatform](docs/WorkPlatform.md)
 - [Phyllo::WorkPlatform1](docs/WorkPlatform1.md)
 - [Phyllo::WorkPlatform1Products](docs/WorkPlatform1Products.md)
 - [Phyllo::WorkPlatform1ProductsActivity](docs/WorkPlatform1ProductsActivity.md)
 - [Phyllo::WorkPlatform1ProductsEngagement](docs/WorkPlatform1ProductsEngagement.md)
 - [Phyllo::WorkPlatform1ProductsEngagementAudience](docs/WorkPlatform1ProductsEngagementAudience.md)
 - [Phyllo::WorkPlatform1ProductsIdentity](docs/WorkPlatform1ProductsIdentity.md)
 - [Phyllo::WorkPlatform1ProductsIdentityAudience](docs/WorkPlatform1ProductsIdentityAudience.md)
 - [Phyllo::WorkPlatform1ProductsIncome](docs/WorkPlatform1ProductsIncome.md)
 - [Phyllo::WorkPlatform1ProductsPublish](docs/WorkPlatform1ProductsPublish.md)
 - [Phyllo::WorkPlatform1ProductsSwitch](docs/WorkPlatform1ProductsSwitch.md)
 - [Phyllo::WorkPlatformAttribute](docs/WorkPlatformAttribute.md)
 - [Phyllo::WorkPlatformAttribute1](docs/WorkPlatformAttribute1.md)
 - [Phyllo::WorkPlatformList](docs/WorkPlatformList.md)
 - [Phyllo::WorkPlatformList1](docs/WorkPlatformList1.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### Basic Authentication

- **Type**: HTTP basic authentication

