# #API References
#
# The **Phyllo API** is built on RESTful principles and returns JSON encoded responses and accepts JSON payloads. It is only available through HTTPS to ensure the security of the data in transfer. These APIs must be called only from your server and never from your app / frontend as this is a security concern.  The API operates in three environments: **sandbox**, **staging** and **production**.  The sandbox environment returns mock data and is used for testing the basic functionality of the system.  The staging environment is exactly like a production environment but with certain limitations. It is used for your internal testing and development purposes.  The production environment connects to real platform accounts and all data reads and writes are made to live accounts. This is what you would use to get data for your customers.
#
# The version of the OpenAPI document: v1.0
# Contact: support@getphyllo.com
# Generated by: https://openapi-generator.tech
# Generator version: 7.6.0
#

module Phyllo
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?("message")
          super(arg[:message] || arg["message"])
        else
          super(arg)
        end

        arg.each do |k, v|
          instance_variable_set :"@#{k}", v
        end
      else
        super(arg)
        @message = arg
      end
    end

    # Override to_s to display a friendly error message
    def to_s
      message
    end

    def message
      msg = if @message.nil?
        "Error message: the server returns an error"
      else
        @message
      end

      msg += "\nHTTP status code: #{code}" if code
      msg += "\nResponse headers: #{response_headers}" if response_headers
      msg += "\nResponse body: #{response_body}" if response_body

      msg
    end
  end
end
