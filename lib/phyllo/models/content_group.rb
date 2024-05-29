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
  # Represents the Content Group object. For Instagram, YouTube types of platforms, it will media containers (album, playlist) created/published on that platforms.
  class ContentGroup
    # Unique ID of the content group.
    attr_accessor :id

    # Object creation time (UTC date and time in ISO 8601 format)
    attr_accessor :created_at

    # Object updation time (UTC date and time in ISO 8601 format)
    attr_accessor :updated_at

    attr_accessor :user

    attr_accessor :account

    attr_accessor :work_platform

    attr_accessor :engagement

    # Unique content group ID on the platform.
    attr_accessor :external_id

    # Title of the content group.
    attr_accessor :title

    # Media type of the content item.
    attr_accessor :format

    # Platform specific content type.
    attr_accessor :type

    # Platform content group URL. Ex - for YouTube, it will the playlist URL.
    attr_accessor :url

    # Description of the content group.
    attr_accessor :description

    # Visibility of the content group.
    attr_accessor :visibility

    # Thumbnail URL of the content group, which can be used to download the media thumbnail. This is usually a signed URL and may have certain expiry limits so we recommend using it for downloads as soon as possible (such as when a webhook is received), if you are looking to cache thumbnails with you.
    attr_accessor :thumbnail_url

    # Publishing timestamp of the content group.
    attr_accessor :published_at

    # Unique profile ID of the user on the work platform.   Ex - For YouTube it's the channel ID and for Instagram it's the Instagram page ID.
    attr_accessor :platform_profile_id

    # User's profile name on the work platform. This is not unique, is displayed prominently on the profile, usually editable and is most commonly associated with that user's identity on the platform.  Ex - For YouTube, it's the channel name displayed on the channel page and for Instagram / Twitter / TikTok etc, it's the name displayed on the user's profile page.
    attr_accessor :platform_profile_name

    # Number of content items in this content group.
    attr_accessor :item_count

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
        engagement: :engagement,
        external_id: :external_id,
        title: :title,
        format: :format,
        type: :type,
        url: :url,
        description: :description,
        visibility: :visibility,
        thumbnail_url: :thumbnail_url,
        published_at: :published_at,
        platform_profile_id: :platform_profile_id,
        platform_profile_name: :platform_profile_name,
        item_count: :item_count
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
        engagement: :ContentGroup1Engagement,
        external_id: :String,
        title: :String,
        format: :String,
        type: :String,
        url: :String,
        description: :String,
        visibility: :String,
        thumbnail_url: :String,
        published_at: :Time,
        platform_profile_id: :String,
        platform_profile_name: :String,
        item_count: :Integer
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :description,
        :platform_profile_id,
        :platform_profile_name
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if !attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phyllo::ContentGroup` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phyllo::ContentGroup`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:user)
        self.user = attributes[:user]
      end

      if attributes.key?(:account)
        self.account = attributes[:account]
      end

      if attributes.key?(:work_platform)
        self.work_platform = attributes[:work_platform]
      end

      if attributes.key?(:engagement)
        self.engagement = attributes[:engagement]
      end

      self.external_id = if attributes.key?(:external_id)
        attributes[:external_id]
      end

      self.title = if attributes.key?(:title)
        attributes[:title]
      end

      if attributes.key?(:format)
        self.format = attributes[:format]
      end

      self.type = if attributes.key?(:type)
        attributes[:type]
      end

      if attributes.key?(:url)
        self.url = attributes[:url]
      end

      if attributes.key?(:description)
        self.description = attributes[:description]
      end

      if attributes.key?(:visibility)
        self.visibility = attributes[:visibility]
      end

      if attributes.key?(:thumbnail_url)
        self.thumbnail_url = attributes[:thumbnail_url]
      end

      self.published_at = if attributes.key?(:published_at)
        attributes[:published_at]
      end

      self.platform_profile_id = if attributes.key?(:platform_profile_id)
        attributes[:platform_profile_id]
      end

      self.platform_profile_name = if attributes.key?(:platform_profile_name)
        attributes[:platform_profile_name]
      end

      self.item_count = if attributes.key?(:item_count)
        attributes[:item_count]
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

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @published_at.nil?
        invalid_properties.push('invalid value for "published_at", published_at cannot be nil.')
      end

      if @item_count.nil?
        invalid_properties.push('invalid value for "item_count", item_count cannot be nil.')
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
      return false if @external_id.nil?
      return false if @title.nil?
      format_validator = EnumAttributeValidator.new("String", ["VIDEO", "IMAGE", "AUDIO", "TEXT", "COLLECTION", "OTHER"])
      return false unless format_validator.valid?(@format)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new("String", ["ALBUM", "PLAYLIST", "OTHER"])
      return false unless type_validator.valid?(@type)
      visibility_validator = EnumAttributeValidator.new("String", ["PUBLIC", "PRIVATE"])
      return false unless visibility_validator.valid?(@visibility)
      return false if @published_at.nil?
      return false if @item_count.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] format Object to be assigned
    def format=(format)
      validator = EnumAttributeValidator.new("String", ["VIDEO", "IMAGE", "AUDIO", "TEXT", "COLLECTION", "OTHER"])
      unless validator.valid?(format)
        fail ArgumentError, "invalid value for \"format\", must be one of #{validator.allowable_values}."
      end
      @format = format
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new("String", ["ALBUM", "PLAYLIST", "OTHER"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] visibility Object to be assigned
    def visibility=(visibility)
      validator = EnumAttributeValidator.new("String", ["PUBLIC", "PRIVATE"])
      unless validator.valid?(visibility)
        fail ArgumentError, "invalid value for \"visibility\", must be one of #{validator.allowable_values}."
      end
      @visibility = visibility
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
        engagement == other.engagement &&
        external_id == other.external_id &&
        title == other.title &&
        format == other.format &&
        type == other.type &&
        url == other.url &&
        description == other.description &&
        visibility == other.visibility &&
        thumbnail_url == other.thumbnail_url &&
        published_at == other.published_at &&
        platform_profile_id == other.platform_profile_id &&
        platform_profile_name == other.platform_profile_name &&
        item_count == other.item_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, updated_at, user, account, work_platform, engagement, external_id, title, format, type, url, description, visibility, thumbnail_url, published_at, platform_profile_id, platform_profile_name, item_count].hash
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
