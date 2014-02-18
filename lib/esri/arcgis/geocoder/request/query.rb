module ESRI
  module ArcGIS
    module Geocoder
      class Request
        class Query

          # INCLUSIONS

          include Virtus.model

          # CONSTANTS

          FORMAT = "pjson".freeze
          OUT_SR = "4326".freeze
          FOR_STORAGE = false.freeze

          # ATTRIBUTES

          attribute :location, String
          attribute :distance, Float
          attribute :f, String, default: FORMAT
          attribute :outSR, String, default: OUT_SR
          attribute :forStorage, String, default: FOR_STORAGE
          attribute :token, String, default: lambda {|p,a| ESRI.token }

          # INSTANCE METHODS

          def to_s
            attributes.map {|k,v| "#{ k }=#{ URI.escape(v.to_s) }" if v }.compact.join("&")
          end

        end
      end
    end
  end
end
