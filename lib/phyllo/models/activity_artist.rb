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
  class ActivityArtist
    # Unique ID of the artist.
    attr_accessor :id

    # Object creation time (UTC date and time in ISO 8601 format)
    attr_accessor :created_at

    # Object updation time (UTC date and time in ISO 8601 format)
    attr_accessor :updated_at

    attr_accessor :user

    attr_accessor :account

    attr_accessor :work_platform

    # Unique artist ID given by the source platform.
    attr_accessor :platform_artist_id

    # Image URL of the artist on the platform.
    attr_accessor :image_url

    # Artist's name on the platform.
    attr_accessor :artist_name

    # URL of the artist's page/profile on the platform.
    attr_accessor :artist_url

    # List of genres that the artist is categorised into by the work platform.
    attr_accessor :genre

    # Whether the artist is in the `TOP` artists of the user (as defined by the work platform) or is `FOLLOWED` by the user.
    attr_accessor :activity_type

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
        id: :id,
        created_at: :created_at,
        updated_at: :updated_at,
        user: :user,
        account: :account,
        work_platform: :work_platform,
        platform_artist_id: :platform_artist_id,
        image_url: :image_url,
        artist_name: :artist_name,
        artist_url: :artist_url,
        genre: :genre,
        activity_type: :activity_type
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        id: :String,
        created_at: :Time,
        updated_at: :Time,
        user: :UserAttribute1,
        account: :AccountAttribute1,
        work_platform: :WorkPlatformAttribute1,
        platform_artist_id: :String,
        image_url: :String,
        artist_name: :String,
        artist_url: :String,
        genre: :"Array<String>",
        activity_type: :String
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :image_url,
        :artist_url
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if !attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phyllo::ActivityArtist` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phyllo::ActivityArtist`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      self.id = if attributes.key?(:id)
        attributes[:id]
      end

      self.created_at = if attributes.key?(:created_at)
        attributes[:created_at]
      end

      self.updated_at = if attributes.key?(:updated_at)
        attributes[:updated_at]
      end

      self.user = if attributes.key?(:user)
        attributes[:user]
      end

      self.account = if attributes.key?(:account)
        attributes[:account]
      end

      self.work_platform = if attributes.key?(:work_platform)
        attributes[:work_platform]
      end

      self.platform_artist_id = if attributes.key?(:platform_artist_id)
        attributes[:platform_artist_id]
      end

      if attributes.key?(:image_url)
        self.image_url = attributes[:image_url]
      end

      self.artist_name = if attributes.key?(:artist_name)
        attributes[:artist_name]
      end

      if attributes.key?(:artist_url)
        self.artist_url = attributes[:artist_url]
      end

      if attributes.key?(:genre)
        if (value = attributes[:genre]).is_a?(Array)
          self.genre = value
        end
      end

      self.activity_type = if attributes.key?(:activity_type)
        attributes[:activity_type]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn "[DEPRECATED] the `list_invalid_properties` method is obsolete"
      invalid_properties = []
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @user.nil?
        invalid_properties.push('invalid value for "user", user cannot be nil.')
      end

      if @account.nil?
        invalid_properties.push('invalid value for "account", account cannot be nil.')
      end

      if @work_platform.nil?
        invalid_properties.push('invalid value for "work_platform", work_platform cannot be nil.')
      end

      if @platform_artist_id.nil?
        invalid_properties.push('invalid value for "platform_artist_id", platform_artist_id cannot be nil.')
      end

      if @artist_name.nil?
        invalid_properties.push('invalid value for "artist_name", artist_name cannot be nil.')
      end

      if @activity_type.nil?
        invalid_properties.push('invalid value for "activity_type", activity_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn "[DEPRECATED] the `valid?` method is obsolete"
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @user.nil?
      return false if @account.nil?
      return false if @work_platform.nil?
      return false if @platform_artist_id.nil?
      return false if @artist_name.nil?
      return false if @activity_type.nil?
      activity_type_validator = EnumAttributeValidator.new("String", ["FOLLOWED", "TOP"])
      return false unless activity_type_validator.valid?(@activity_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] activity_type Object to be assigned
    def activity_type=(activity_type)
      validator = EnumAttributeValidator.new("String", ["FOLLOWED", "TOP"])
      unless validator.valid?(activity_type)
        fail ArgumentError, "invalid value for \"activity_type\", must be one of #{validator.allowable_values}."
      end
      @activity_type = activity_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        id == other.id &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        user == other.user &&
        account == other.account &&
        work_platform == other.work_platform &&
        platform_artist_id == other.platform_artist_id &&
        image_url == other.image_url &&
        artist_name == other.artist_name &&
        artist_url == other.artist_url &&
        genre == other.genre &&
        activity_type == other.activity_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, updated_at, user, account, work_platform, platform_artist_id, image_url, artist_name, artist_url, genre, activity_type].hash
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
