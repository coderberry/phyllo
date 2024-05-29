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

# Unit tests for Phyllo::ActivityApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ActivityApi" do
  before do
    # run before each test
    @api_instance = Phyllo::ActivityApi.new
  end

  after do
    # run after each test
  end

  describe "test an instance of ActivityApi" do
    it "should create an instance of ActivityApi" do
      expect(@api_instance).to be_instance_of(Phyllo::ActivityApi)
    end
  end

  # unit tests for v1_get_media_activity_artist_by_id
  # Retrieve an artist (user activity)
  # Retrieve the information of the artist with the supplied artist ID.
  # @param id Unique identifier for the artist
  # @param [Hash] opts the optional parameters
  # @return [ActivityArtist1]
  describe "v1_get_media_activity_artist_by_id test" do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_get_media_activity_artists
  # Retrieve artists for an account (user activity)
  # Lists all &#x60;TOP&#x60; and &#x60;FOLLOWED&#x60; artists from the activity history of the given account.
  # @param account_id Unique ID of the connected account.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  # @option opts [Integer] :offset The number of objects to skip. Use this argument for pagination. The default value is 0.
  # @return [ActivityArtistList1]
  describe "v1_get_media_activity_artists test" do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_get_media_activity_content_by_id
  # Retrieve a content (user activity)
  # Retrieve the information of the content with the supplied content ID.
  # @param id Unique identifier for the content
  # @param [Hash] opts the optional parameters
  # @return [ActivityContent1]
  describe "v1_get_media_activity_content_by_id test" do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_get_media_activity_contents
  # Retrieve contents for an account (user activity)
  # Lists all &#x60;RECENT&#x60;, &#x60;TOP&#x60; and &#x60;SAVED&#x60; contents from the activity history of the given account.
  # @param account_id Unique ID of the connected account.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of objects to be returned. It can be between 1 to 100. The default value is 10.
  # @option opts [Integer] :offset The number of objects to skip. Use this argument for pagination. The default value is 0.
  # @return [ActivityContentList1]
  describe "v1_get_media_activity_contents test" do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_search_media_activity_artists
  # Retrieve artists for an account (user activity) in bulk
  # Search information of the artists in bulk by providing IDs.   This is best used in combination with webhooks - you can directly take the IDs from \&quot;ACTIVITY-ARTISTS.ADDED\&quot; and \&quot;ACTIVITY-ARTISTS.UPDATED\&quot; webhook notifications and pass on to this API to get the updated artist items.
  # @param [Hash] opts the optional parameters
  # @option opts [ActivityArtistSearch1] :activity_artist_search1
  # @return [ActivityArtistSearchList1]
  describe "v1_search_media_activity_artists test" do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_search_media_activity_contents
  # Retrieve contents for an account (user activity) in bulk
  # Search information of the contents in bulk by providing IDs.   This is best used in combination with webhooks - you can directly take the IDs from \&quot;ACTIVITY-CONTENTS.ADDED\&quot; and \&quot;ACTIVITY-CONTENTS.UPDATED\&quot; webhook notifications and pass on to this API to get the updated content items.
  # @param [Hash] opts the optional parameters
  # @option opts [ActivityContentSearch1] :activity_content_search1
  # @return [ActivityContentSearchList1]
  describe "v1_search_media_activity_contents test" do
    it "should work" do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end
end
