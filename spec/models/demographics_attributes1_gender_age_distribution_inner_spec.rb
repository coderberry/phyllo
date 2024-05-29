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

# Unit tests for Phyllo::DemographicsAttributes1GenderAgeDistributionInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Phyllo::DemographicsAttributes1GenderAgeDistributionInner do
  let(:instance) { Phyllo::DemographicsAttributes1GenderAgeDistributionInner.new }

  describe "test an instance of DemographicsAttributes1GenderAgeDistributionInner" do
    it "should create an instance of DemographicsAttributes1GenderAgeDistributionInner" do
      # uncomment below to test the instance creation
      # expect(instance).to be_instance_of(Phyllo::DemographicsAttributes1GenderAgeDistributionInner)
    end
  end

  describe 'test attribute "gender"' do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["MALE", "FEMALE", "OTHERS"])
      # validator.allowable_values.each do |value|
      #   expect { instance.gender = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "age_range"' do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "value"' do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end
end
