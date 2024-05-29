=begin
#API References

#The **Phyllo API** is built on RESTful principles and returns JSON encoded responses and accepts JSON payloads. It is only available through HTTPS to ensure the security of the data in transfer. These APIs must be called only from your server and never from your app / frontend as this is a security concern.  The API operates in three environments: **sandbox**, **staging** and **production**.  The sandbox environment returns mock data and is used for testing the basic functionality of the system.  The staging environment is exactly like a production environment but with certain limitations. It is used for your internal testing and development purposes.  The production environment connects to real platform accounts and all data reads and writes are made to live accounts. This is what you would use to get data for your customers.

The version of the OpenAPI document: v1.0
Contact: support@getphyllo.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Phyllo::CreateWebhookRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Phyllo::CreateWebhookRequest do
  let(:instance) { Phyllo::CreateWebhookRequest.new }

  describe 'test an instance of CreateWebhookRequest' do
    it 'should create an instance of CreateWebhookRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Phyllo::CreateWebhookRequest)
    end
  end

  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "events"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["ACCOUNTS.CONNECTED", "ACCOUNTS.DISCONNECTED", "PROFILES.ADDED", "PROFILES.UPDATED", "PROFILES_AUDIENCE.ADDED", "PROFILES_AUDIENCE.UPDATED", "CONTENTS.ADDED", "CONTENTS.UPDATED", "CONTENTS_COMMENTS.ADDED", "CONTENTS_COMMENTS.UPDATED", "CONTENT-GROUPS.ADDED", "CONTENT-GROUPS.UPDATED", "TRANSACTIONS.ADDED", "TRANSACTIONS.UPDATED", "PAYOUTS.ADDED", "PAYOUTS.UPDATED", "BALANCES.ADDED", "BALANCES.UPDATED", "CONTENTS.PUBLISH_SUCCESS", "CONTENTS.PUBLISH_READY", "CONTENTS.PUBLISH_FAILURE", "SESSION.EXPIRED", "ACTIVITY-ARTISTS.ADDED", "ACTIVITY-ARTISTS.UPDATED", "ACTIVITY-CONTENTS.ADDED", "ACTIVITY-CONTENTS.UPDATED"])
      # validator.allowable_values.each do |value|
      #   expect { instance.events = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end