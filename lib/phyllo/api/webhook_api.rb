=begin
#API References

#The **Phyllo API** is built on RESTful principles and returns JSON encoded responses and accepts JSON payloads. It is only available through HTTPS to ensure the security of the data in transfer. These APIs must be called only from your server and never from your app / frontend as this is a security concern.  The API operates in three environments: **sandbox**, **staging** and **production**.  The sandbox environment returns mock data and is used for testing the basic functionality of the system.  The staging environment is exactly like a production environment but with certain limitations. It is used for your internal testing and development purposes.  The production environment connects to real platform accounts and all data reads and writes are made to live accounts. This is what you would use to get data for your customers.

The version of the OpenAPI document: v1.0
Contact: support@getphyllo.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'cgi'

module Phyllo
  class WebhookApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a webhook
    # Delete a webhook information
    # @param id [String] Unique identifier for the webhook.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_webhook_delete_webhooks_by_id(id, opts = {})
      v1_webhook_delete_webhooks_by_id_with_http_info(id, opts)
      nil
    end

    # Delete a webhook
    # Delete a webhook information
    # @param id [String] Unique identifier for the webhook.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_webhook_delete_webhooks_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.v1_webhook_delete_webhooks_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.v1_webhook_delete_webhooks_by_id"
      end
      # resource path
      local_var_path = '/v1/webhooks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication']

      new_options = opts.merge(
        :operation => :"WebhookApi.v1_webhook_delete_webhooks_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#v1_webhook_delete_webhooks_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all webhooks
    # Lists all Webhooks.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of objects to be returned. It can be between 1 to 100. The default value is 10. (default to 10)
    # @option opts [Integer] :offset The number of objects to skip. Use this argument for pagination. The default value is 0. (default to 0)
    # @return [WebhookResponseList1]
    def v1_webhook_get_webhooks(opts = {})
      data, _status_code, _headers = v1_webhook_get_webhooks_with_http_info(opts)
      data
    end

    # Retrieve all webhooks
    # Lists all Webhooks.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of objects to be returned. It can be between 1 to 100. The default value is 10. (default to 10)
    # @option opts [Integer] :offset The number of objects to skip. Use this argument for pagination. The default value is 0. (default to 0)
    # @return [Array<(WebhookResponseList1, Integer, Hash)>] WebhookResponseList1 data, response status code and response headers
    def v1_webhook_get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.v1_webhook_get_webhooks ...'
      end
      # resource path
      local_var_path = '/v1/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookResponseList1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication']

      new_options = opts.merge(
        :operation => :"WebhookApi.v1_webhook_get_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#v1_webhook_get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a webhook
    # Retrieve the information of the Webhook with the supplied Webhook id.
    # @param id [String] Unique identifier for the webhook.
    # @param [Hash] opts the optional parameters
    # @return [WebhookResponse1]
    def v1_webhook_get_webhooks_by_id(id, opts = {})
      data, _status_code, _headers = v1_webhook_get_webhooks_by_id_with_http_info(id, opts)
      data
    end

    # Retrieve a webhook
    # Retrieve the information of the Webhook with the supplied Webhook id.
    # @param id [String] Unique identifier for the webhook.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookResponse1, Integer, Hash)>] WebhookResponse1 data, response status code and response headers
    def v1_webhook_get_webhooks_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.v1_webhook_get_webhooks_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.v1_webhook_get_webhooks_by_id"
      end
      # resource path
      local_var_path = '/v1/webhooks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookResponse1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication']

      new_options = opts.merge(
        :operation => :"WebhookApi.v1_webhook_get_webhooks_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#v1_webhook_get_webhooks_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a webhook
    # Create a Webhook.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhookRequest1] :create_webhook_request1 
    # @return [WebhookResponse1]
    def v1_webhook_post_webhooks(opts = {})
      data, _status_code, _headers = v1_webhook_post_webhooks_with_http_info(opts)
      data
    end

    # Create a webhook
    # Create a Webhook.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhookRequest1] :create_webhook_request1 
    # @return [Array<(WebhookResponse1, Integer, Hash)>] WebhookResponse1 data, response status code and response headers
    def v1_webhook_post_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.v1_webhook_post_webhooks ...'
      end
      # resource path
      local_var_path = '/v1/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_webhook_request1'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookResponse1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication']

      new_options = opts.merge(
        :operation => :"WebhookApi.v1_webhook_post_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#v1_webhook_post_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a mock webhook notification
    # Sends a webhook notification on the registered webhook URL.
    # @param [Hash] opts the optional parameters
    # @option opts [SendWebhookPayload1] :send_webhook_payload1 
    # @return [WebhookPayload1]
    def v1_webhook_post_webhooks_send(opts = {})
      data, _status_code, _headers = v1_webhook_post_webhooks_send_with_http_info(opts)
      data
    end

    # Send a mock webhook notification
    # Sends a webhook notification on the registered webhook URL.
    # @param [Hash] opts the optional parameters
    # @option opts [SendWebhookPayload1] :send_webhook_payload1 
    # @return [Array<(WebhookPayload1, Integer, Hash)>] WebhookPayload1 data, response status code and response headers
    def v1_webhook_post_webhooks_send_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.v1_webhook_post_webhooks_send ...'
      end
      # resource path
      local_var_path = '/v1/webhooks/send'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'send_webhook_payload1'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookPayload1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication']

      new_options = opts.merge(
        :operation => :"WebhookApi.v1_webhook_post_webhooks_send",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#v1_webhook_post_webhooks_send\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a webhook
    # Update a webhook information
    # @param id [String] Unique identifier for the webhook.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhookRequest1] :update_webhook_request1 Updated webhook object.
    # @return [WebhookResponse1]
    def v1_webhook_put_webhooks_by_id(id, opts = {})
      data, _status_code, _headers = v1_webhook_put_webhooks_by_id_with_http_info(id, opts)
      data
    end

    # Update a webhook
    # Update a webhook information
    # @param id [String] Unique identifier for the webhook.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhookRequest1] :update_webhook_request1 Updated webhook object.
    # @return [Array<(WebhookResponse1, Integer, Hash)>] WebhookResponse1 data, response status code and response headers
    def v1_webhook_put_webhooks_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.v1_webhook_put_webhooks_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.v1_webhook_put_webhooks_by_id"
      end
      # resource path
      local_var_path = '/v1/webhooks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_webhook_request1'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookResponse1'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication']

      new_options = opts.merge(
        :operation => :"WebhookApi.v1_webhook_put_webhooks_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#v1_webhook_put_webhooks_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end