module ESRI
  module ArcGIS
    class Geocoder
      class Client
        class Parameters

          # CONSTANTS

          OUT_FIELDS = "*".freeze
          FORMAT = "pjson".freeze
          OUT_SR = 4326.freeze
          FOR_STORAGE = false.freeze

          # INCLUSIONS

          include Virtus.model

          # SINGLE INPUT FIELD PARAMS

          attribute :text, String
          attribute :sourceCountry, String
          attribute :bbox, String

          # MULTI INPUT FIELD PARAMS

          attribute :Address, String
          attribute :Neighborhood, String
          attribute :City, String
          attribute :Subregion, String
          attribute :Region, String
          attribute :Postal, Integer
          attribute :PostalExt, Integer
          attribute :CountryCode, String
          attribute :searchExtent, String

          # UNIVERAL PARAMS

          attribute :location, String
          attribute :distance, Float
          attribute :f, String, default: FORMAT
          attribute :outSR, String, default: OUT_SR
          attribute :outFields, String, default: OUT_FIELDS
          attribute :forStorage, String, default: FOR_STORAGE
          attribute :maxLocations, Integer
          attribute :token, String

          # INSTANCE METHODS

          def to_s
            attributes.map do |k,v|
              "#{ k }=#{ URI.escape(v.to_s) }" if v
            end.compact.join("&")
          end

        end
      end
    end
  end
end
