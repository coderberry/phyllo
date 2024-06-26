# #API References
#
# The **Phyllo API** is built on RESTful principles and returns JSON encoded responses and accepts JSON payloads. It is only available through HTTPS to ensure the security of the data in transfer. These APIs must be called only from your server and never from your app / frontend as this is a security concern.  The API operates in three environments: **sandbox**, **staging** and **production**.  The sandbox environment returns mock data and is used for testing the basic functionality of the system.  The staging environment is exactly like a production environment but with certain limitations. It is used for your internal testing and development purposes.  The production environment connects to real platform accounts and all data reads and writes are made to live accounts. This is what you would use to get data for your customers.
#
# The version of the OpenAPI document: v1.0
# Contact: support@getphyllo.com
# Generated by: https://openapi-generator.tech
# Generator version: 7.6.0
#

require "cgi"

module Phyllo
  class IdentityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieve audience demographics
    # Retrieves audience demographics for the given account. Demographics object contains information related to the audience of the user: countries, cities, age & gender distribution, etc. The values in this data are in percentages and are tied to a particular work platform account. This data is lifetime data.
    # @param account_id [String] Unique ID of the connected account.
    # @param [Hash] opts the optional parameters
    # @return [V1GetAudienceDemographics200Response]
    def v1_get_audience_demographics(account_id, opts = {})
      data, _status_code, _headers = v1_get_audience_demographics_with_http_info(account_id, opts)
      data
    end

    # Retrieve audience demographics
    # Retrieves audience demographics for the given account. Demographics object contains information related to the audience of the user: countries, cities, age &amp; gender distribution, etc. The values in this data are in percentages and are tied to a particular work platform account. This data is lifetime data.
    # @param account_id [String] Unique ID of the connected account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1GetAudienceDemographics200Response, Integer, Hash)>] V1GetAudienceDemographics200Response data, response status code and response headers
    def v1_get_audience_demographics_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.v1_get_audience_demographics ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling IdentityApi.v1_get_audience_demographics"
      end
      # resource path
      local_var_path = "/v1/audience"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:account_id] = account_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "V1GetAudienceDemographics200Response"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["Basic Authentication"]

      new_options = opts.merge(
        operation: :"IdentityApi.v1_get_audience_demographics",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#v1_get_audience_demographics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Refresh a profile
    # Refresh profile for a connected account. Once Phyllo processes the request, you can fetch the updated profile by calling the [retrieve a profile API](../reference/openapi.v1.yml/paths/~1v1~1profiles~1{id}/get).   Subscribe to the \"PROFILES.UPDATED\" webhook to receive a notification once the request is completed.
    # @param [Hash] opts the optional parameters
    # @option opts [Refresh1] :refresh1
    # @return [Refresh1]
    def v1_refresh_profile(opts = {})
      data, _status_code, _headers = v1_refresh_profile_with_http_info(opts)
      data
    end

    # Refresh a profile
    # Refresh profile for a connected account. Once Phyllo processes the request, you can fetch the updated profile by calling the [retrieve a profile API](../reference/openapi.v1.yml/paths/~1v1~1profiles~1{id}/get).   Subscribe to the \&quot;PROFILES.UPDATED\&quot; webhook to receive a notification once the request is completed.
    # @param [Hash] opts the optional parameters
    # @option opts [Refresh1] :refresh1
    # @return [Array<(Refresh1, Integer, Hash)>] Refresh1 data, response status code and response headers
    def v1_refresh_profile_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.v1_refresh_profile ..."
      end
      # resource path
      local_var_path = "/v1/profiles/refresh"

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(["application/json", "application/xml"])
      if !content_type.nil?
        header_params["Content-Type"] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:refresh1])

      # return_type
      return_type = opts[:debug_return_type] || "Refresh1"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["Basic Authentication"]

      new_options = opts.merge(
        operation: :"IdentityApi.v1_refresh_profile",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#v1_refresh_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieve a profile
    # Retrieve the information of the Profile with the supplied Profile id. Profile object contains information related to the identity of the user like name, address, contact details, etc. The data in a profile is tied to a particular work platform account that the user has connected to via Connect SDK.
    # @param id [String] Unique identifier for the profile.
    # @param [Hash] opts the optional parameters
    # @return [Profile1]
    def v1_stream_get_profile_by_id(id, opts = {})
      data, _status_code, _headers = v1_stream_get_profile_by_id_with_http_info(id, opts)
      data
    end

    # Retrieve a profile
    # Retrieve the information of the Profile with the supplied Profile id. Profile object contains information related to the identity of the user like name, address, contact details, etc. The data in a profile is tied to a particular work platform account that the user has connected to via Connect SDK.
    # @param id [String] Unique identifier for the profile.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Profile1, Integer, Hash)>] Profile1 data, response status code and response headers
    def v1_stream_get_profile_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.v1_stream_get_profile_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IdentityApi.v1_stream_get_profile_by_id"
      end
      # resource path
      local_var_path = "/v1/profiles/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "Profile1"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["Basic Authentication"]

      new_options = opts.merge(
        operation: :"IdentityApi.v1_stream_get_profile_by_id",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#v1_stream_get_profile_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieve all profiles
    # Lists all Profiles. Profile object contains information related to the identity of the user like name, address, contact details, etc. The data in a profile is tied to a particular work platform account that the user has connected to via Connect SDK.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The number of objects to skip. Use this argument for pagination. The default value is 0. (default to 0)
    # @option opts [Integer] :limit The number of objects to be returned. It can be between 1 to 100. The default value is 10. (default to 10)
    # @option opts [String] :account_id Unique ID of the connected account.
    # @option opts [String] :work_platform_id Unique ID of the work platform.
    # @option opts [String] :user_id Unique ID of the user.
    # @return [ProfileList1]
    def v1_stream_get_profiles(opts = {})
      data, _status_code, _headers = v1_stream_get_profiles_with_http_info(opts)
      data
    end

    # Retrieve all profiles
    # Lists all Profiles. Profile object contains information related to the identity of the user like name, address, contact details, etc. The data in a profile is tied to a particular work platform account that the user has connected to via Connect SDK.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset The number of objects to skip. Use this argument for pagination. The default value is 0. (default to 0)
    # @option opts [Integer] :limit The number of objects to be returned. It can be between 1 to 100. The default value is 10. (default to 10)
    # @option opts [String] :account_id Unique ID of the connected account.
    # @option opts [String] :work_platform_id Unique ID of the work platform.
    # @option opts [String] :user_id Unique ID of the user.
    # @return [Array<(ProfileList1, Integer, Hash)>] ProfileList1 data, response status code and response headers
    def v1_stream_get_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.v1_stream_get_profiles ..."
      end
      # resource path
      local_var_path = "/v1/profiles"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:offset] = opts[:offset] if !opts[:offset].nil?
      query_params[:limit] = opts[:limit] if !opts[:limit].nil?
      query_params[:account_id] = opts[:account_id] if !opts[:account_id].nil?
      query_params[:work_platform_id] = opts[:work_platform_id] if !opts[:work_platform_id].nil?
      query_params[:user_id] = opts[:user_id] if !opts[:user_id].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "ProfileList1"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["Basic Authentication"]

      new_options = opts.merge(
        operation: :"IdentityApi.v1_stream_get_profiles",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#v1_stream_get_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
