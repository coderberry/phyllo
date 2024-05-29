=begin
#API References

#The **Phyllo API** is built on RESTful principles and returns JSON encoded responses and accepts JSON payloads. It is only available through HTTPS to ensure the security of the data in transfer. These APIs must be called only from your server and never from your app / frontend as this is a security concern.  The API operates in three environments: **sandbox**, **staging** and **production**.  The sandbox environment returns mock data and is used for testing the basic functionality of the system.  The staging environment is exactly like a production environment but with certain limitations. It is used for your internal testing and development purposes.  The production environment connects to real platform accounts and all data reads and writes are made to live accounts. This is what you would use to get data for your customers.

The version of the OpenAPI document: v1.0
Contact: support@getphyllo.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'date'
require 'time'

module Phyllo
  class ActivityContent1
    # Unique ID of the content item.
    attr_accessor :id

    # Object creation time (UTC date and time in ISO 8601 format)
    attr_accessor :created_at

    # Object updation time (UTC date and time in ISO 8601 format)
    attr_accessor :updated_at

    attr_accessor :user

    attr_accessor :account

    attr_accessor :work_platform

    # Unique content ID on the platform.
    attr_accessor :platform_content_id

    # Title of the content item.
    attr_accessor :title

    # Media type of the content item.
    attr_accessor :format

    # Platform specific content type.
    attr_accessor :type

    # Platform content URL.
    attr_accessor :url

    # Description of the content item.
    attr_accessor :description

    # Thumbnail URL of the content item, which can be used to download the media thumbnail. This is usually a signed URL and may have certain expiry limits so we recommend using it for downloads as soon as possible (such as when a webhook is received), if you are looking to cache thumbnails with you.
    attr_accessor :thumbnail_url

    # Embed URL of the content item, which can be used to embed the media item.
    attr_accessor :embed_url

    # Whether the media content is in the `TOP` contents of the user (as defined by the work platform) or is `SAVED` by the user or was a `RECENT` media played by the user.
    attr_accessor :activity_type

    attr_accessor :additional_info

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
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'user' => :'user',
        :'account' => :'account',
        :'work_platform' => :'work_platform',
        :'platform_content_id' => :'platform_content_id',
        :'title' => :'title',
        :'format' => :'format',
        :'type' => :'type',
        :'url' => :'url',
        :'description' => :'description',
        :'thumbnail_url' => :'thumbnail_url',
        :'embed_url' => :'embed_url',
        :'activity_type' => :'activity_type',
        :'additional_info' => :'additional_info'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'user' => :'UserAttribute1',
        :'account' => :'AccountAttribute1',
        :'work_platform' => :'WorkPlatformAttribute1',
        :'platform_content_id' => :'String',
        :'title' => :'String',
        :'format' => :'String',
        :'type' => :'String',
        :'url' => :'String',
        :'description' => :'String',
        :'thumbnail_url' => :'String',
        :'embed_url' => :'String',
        :'activity_type' => :'String',
        :'additional_info' => :'ActivityContent1AdditionalInfo'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phyllo::ActivityContent1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phyllo::ActivityContent1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      else
        self.updated_at = nil
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'work_platform')
        self.work_platform = attributes[:'work_platform']
      end

      if attributes.key?(:'platform_content_id')
        self.platform_content_id = attributes[:'platform_content_id']
      else
        self.platform_content_id = nil
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      else
        self.title = nil
      end

      if attributes.key?(:'format')
        self.format = attributes[:'format']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      else
        self.url = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'thumbnail_url')
        self.thumbnail_url = attributes[:'thumbnail_url']
      end

      if attributes.key?(:'embed_url')
        self.embed_url = attributes[:'embed_url']
      end

      if attributes.key?(:'activity_type')
        self.activity_type = attributes[:'activity_type']
      else
        self.activity_type = nil
      end

      if attributes.key?(:'additional_info')
        self.additional_info = attributes[:'additional_info']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @platform_content_id.nil?
        invalid_properties.push('invalid value for "platform_content_id", platform_content_id cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @url.nil?
        invalid_properties.push('invalid value for "url", url cannot be nil.')
      end

      if @activity_type.nil?
        invalid_properties.push('invalid value for "activity_type", activity_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @platform_content_id.nil?
      return false if @title.nil?
      format_validator = EnumAttributeValidator.new('String', ["VIDEO", "IMAGE", "AUDIO", "TEXT", "OTHER"])
      return false unless format_validator.valid?(@format)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["VIDEO", "POST", "STORY", "TWEET", "BLOG", "IMAGE", "THREAD", "PODCAST", "TRACK", "OTHER", "REELS", "STREAM", "FEED", "IGTV"])
      return false unless type_validator.valid?(@type)
      return false if @url.nil?
      return false if @activity_type.nil?
      activity_type_validator = EnumAttributeValidator.new('String', ["TOP", "RECENT", "SAVED"])
      return false unless activity_type_validator.valid?(@activity_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] format Object to be assigned
    def format=(format)
      validator = EnumAttributeValidator.new('String', ["VIDEO", "IMAGE", "AUDIO", "TEXT", "OTHER"])
      unless validator.valid?(format)
        fail ArgumentError, "invalid value for \"format\", must be one of #{validator.allowable_values}."
      end
      @format = format
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["VIDEO", "POST", "STORY", "TWEET", "BLOG", "IMAGE", "THREAD", "PODCAST", "TRACK", "OTHER", "REELS", "STREAM", "FEED", "IGTV"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] activity_type Object to be assigned
    def activity_type=(activity_type)
      validator = EnumAttributeValidator.new('String', ["TOP", "RECENT", "SAVED"])
      unless validator.valid?(activity_type)
        fail ArgumentError, "invalid value for \"activity_type\", must be one of #{validator.allowable_values}."
      end
      @activity_type = activity_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          user == o.user &&
          account == o.account &&
          work_platform == o.work_platform &&
          platform_content_id == o.platform_content_id &&
          title == o.title &&
          format == o.format &&
          type == o.type &&
          url == o.url &&
          description == o.description &&
          thumbnail_url == o.thumbnail_url &&
          embed_url == o.embed_url &&
          activity_type == o.activity_type &&
          additional_info == o.additional_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, updated_at, user, account, work_platform, platform_content_id, title, format, type, url, description, thumbnail_url, embed_url, activity_type, additional_info].hash
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
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
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
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        value = self.send(attr)
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