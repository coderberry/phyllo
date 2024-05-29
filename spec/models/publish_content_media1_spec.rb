# #API References
#
# The **Phyllo API** is built on RESTful principles and returns JSON encoded responses and accepts JSON payloads. It is only available through HTTPS to ensure the security of the data in transfer. These APIs must be called only from your server and never from your app / frontend as this is a security concern.  The API operates in three environments: **sandbox**, **staging** and **production**.  The sandbox environment returns mock data and is used for testing the basic functionality of the system.  The staging environment is exactly like a production environment but with certain limitations. It is used for your internal testing and development purposes.  The production environment connects to real platform accounts and all data reads and writes are made to live accounts. This is what you would use to get data for your customers.
#
# The version of the OpenAPI document: v1.0
# Contact: support@getphyllo.com
# Generated by: https://openapi-generator.tech
# Generator version: 7.6.0
#

require "spec_helper"
require "json"
require "date"

# Unit tests for Phyllo::PublishContentMedia1
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Phyllo::PublishContentMedia1 do
  let(:instance) { Phyllo::PublishContentMedia1.new }

  describe "test an instance of PublishContentMedia1" do
    it "should create an instance of PublishContentMedia1" do
      # uncomment below to test the instance creation
      # expect(instance).to be_instance_of(Phyllo::PublishContentMedia1)
    end
  end

  describe 'test attribute "media_type"' do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["IMAGE", "VIDEO"])
      # validator.allowable_values.each do |value|
      #   expect { instance.media_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "source_media_url"' do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "source_thumbnail_url"' do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "thumbnail_offset"' do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "additional_info"' do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end
end
