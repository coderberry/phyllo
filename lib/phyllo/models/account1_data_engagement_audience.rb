# #API References
#
# The **Phyllo API** is built on RESTful principles and returns JSON encoded responses and accepts JSON payloads. It is only available through HTTPS to ensure the security of the data in transfer. These APIs must be called only from your server and never from your app / frontend as this is a security concern.  The API operates in three environments: **sandbox**, **staging** and **production**.  The sandbox environment returns mock data and is used for testing the basic functionality of the system.  The staging environment is exactly like a production environment but with certain limitations. It is used for your internal testing and development purposes.  The production environment connects to real platform accounts and all data reads and writes are made to live accounts. This is what you would use to get data for your customers.
#
# The version of the OpenAPI document: v1.0
# Contact: support@getphyllo.com
# Generated by: https://openapi-generator.tech
# Generator version: 7.6.0
#

require "date"
require "time"

module Phyllo
  # For accounts that have requested the engagement.audience product.
  class Account1DataEngagementAudience
    # Status of the data retrieval between Phyllo and the work platform.
    attr_accessor :status

    # Last sync time for the engagement object (UTC date and time in ISO 8601 format)
    attr_accessor :last_sync_at

    # Time period for which engagement object is refreshed (UTC date and time in ISO 8601 format)
    attr_accessor :refresh_since

    # Start period from which engagement data is available (UTC date and time in ISO 8601 format)
    attr_accessor :data_available_from

    # Monitoring plan for the engagement.audience product.
    attr_accessor :monitoring_type

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        status: :status,
        last_sync_at: :last_sync_at,
        refresh_since: :refresh_since,
        data_available_from: :data_available_from,
        monitoring_type: :monitoring_type
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        status: :String,
        last_sync_at: :Time,
        refresh_since: :Time,
        data_available_from: :Time,
        monitoring_type: :String
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :refresh_since,
        :data_available_from
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if !attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phyllo::Account1DataEngagementAudience` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phyllo::Account1DataEngagementAudience`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      self.status = if attributes.key?(:status)
        attributes[:status]
      end

      if attributes.key?(:last_sync_at)
        self.last_sync_at = attributes[:last_sync_at]
      end

      if attributes.key?(:refresh_since)
        self.refresh_since = attributes[:refresh_since]
      end

      if attributes.key?(:data_available_from)
        self.data_available_from = attributes[:data_available_from]
      end

      self.monitoring_type = if attributes.key?(:monitoring_type)
        attributes[:monitoring_type]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn "[DEPRECATED] the `list_invalid_properties` method is obsolete"
      invalid_properties = []
      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @monitoring_type.nil?
        invalid_properties.push('invalid value for "monitoring_type", monitoring_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn "[DEPRECATED] the `valid?` method is obsolete"
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new("String", ["SYNCED", "IN_PROGRESS", "NOT_SUPPORTED", "NOT_SYNCED", "PARTIAL_SYNCED"])
      return false unless status_validator.valid?(@status)
      return false if @monitoring_type.nil?
      monitoring_type_validator = EnumAttributeValidator.new("String", ["STANDARD", "ON_DEMAND"])
      return false unless monitoring_type_validator.valid?(@monitoring_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new("String", ["SYNCED", "IN_PROGRESS", "NOT_SUPPORTED", "NOT_SYNCED", "PARTIAL_SYNCED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] monitoring_type Object to be assigned
    def monitoring_type=(monitoring_type)
      validator = EnumAttributeValidator.new("String", ["STANDARD", "ON_DEMAND"])
      unless validator.valid?(monitoring_type)
        fail ArgumentError, "invalid value for \"monitoring_type\", must be one of #{validator.allowable_values}."
      end
      @monitoring_type = monitoring_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        status == other.status &&
        last_sync_at == other.last_sync_at &&
        refresh_since == other.refresh_since &&
        data_available_from == other.data_available_from &&
        monitoring_type == other.monitoring_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, last_sync_at, refresh_since, data_available_from, monitoring_type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash[key.to_s] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash[key.to_s] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash[key.to_s] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Phyllo.const_get(type)
        (klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of)) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
